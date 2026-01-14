# ==============================================================================
# Diagnostic Analysis: Model Collapse Investigation
# ==============================================================================
#
# This script investigates why the mizer model collapses to zero biomass
# during the steady state run, examining:
#   1. Resource spectrum adequacy
#   2. Feeding interactions and rates
#   3. Mortality vs. growth balance
#   4. Size-based predation mismatches
#   5. Energy flow constraints
#
# ==============================================================================

library(mizer)
library(tidyverse)
library(here)

cat("\n=============================================================\n")
cat("  DIAGNOSTIC ANALYSIS: Model Collapse Investigation\n")
cat("=============================================================\n\n")

# Set paths
output_dir <- here("Models", "AI-assisted", "Attempt 1")

# ==============================================================================
# 1. LOAD MODEL AND DATA
# ==============================================================================

cat("Loading model components...\n")

species_params <- read_csv(here(output_dir, "species_parameters.csv"), 
                           show_col_types = FALSE)
resource_params <- readRDS(here(output_dir, "resource_params.rds"))
params <- readRDS(here(output_dir, "initial_params.rds"))

cat("  ✓ Loaded successfully\n\n")

# ==============================================================================
# 2. RESOURCE SPECTRUM ANALYSIS
# ==============================================================================

cat("ISSUE 1: RESOURCE SPECTRUM ADEQUACY\n")
cat("=====================================\n\n")

# Calculate total consumer biomass demand
total_consumer_biomass <- sum(species_params$ewe_biomass)
cat("Total consumer biomass (EwE):", signif(total_consumer_biomass, 4), "tonnes/km²\n\n")

# Calculate resource spectrum biomass
resource_biomass <- sum(params@initial_n_pp * params@w_full[1:length(params@initial_n_pp)] * 
                       params@dw_full[1:length(params@initial_n_pp)])
cat("Total resource biomass (plankton):", signif(resource_biomass, 4), "tonnes/km²\n\n")

# Resource parameters
cat("Resource spectrum parameters:\n")
cat("  kappa:", signif(resource_params$kappa, 4), "\n")
cat("  lambda:", signif(resource_params$lambda, 3), "\n")
cat("  r_pp (regeneration rate):", signif(resource_params$r_pp, 4), "\n")
cat("  w_pp_cutoff:", signif(resource_params$w_pp_cutoff, 4), "g\n")
cat("  w_min:", signif(resource_params$w_min, 4), "g\n\n")

# Calculate biomass ratio
biomass_ratio <- resource_biomass / total_consumer_biomass
cat("Resource:Consumer biomass ratio:", signif(biomass_ratio, 3), "\n")
cat("  → EXPECTED: ~10-100 (resource should be 10-100x consumer biomass)\n")
cat("  → ACTUAL: ", signif(biomass_ratio, 3), "\n")

if (biomass_ratio < 1) {
  cat("\n⚠️  CRITICAL ISSUE: Resource biomass is LESS than consumer biomass!\n")
  cat("    This is physically impossible - consumers cannot exist without adequate resources.\n\n")
} else if (biomass_ratio < 5) {
  cat("\n⚠️  WARNING: Resource biomass is too low to support consumer community.\n\n")
}

# Calculate resource production rate
resource_production <- resource_params$r_pp * resource_biomass
cat("\nResource production rate:", signif(resource_production, 4), "tonnes/km²/year\n")

# Estimate consumer consumption demand (rough approximation: Q/B * Biomass)
total_consumption_demand <- sum(species_params$ewe_qb * species_params$ewe_biomass, na.rm = TRUE)
cat("Total consumer demand:", signif(total_consumption_demand, 4), "tonnes/km²/year\n")
cat("Production:Demand ratio:", signif(resource_production / total_consumption_demand, 3), "\n")
cat("  → EXPECTED: Should be > 0.5 (production should meet at least half of demand)\n")
cat("  → Actual resource production is only", 
    signif(100 * resource_production / total_consumption_demand, 2), 
    "% of consumer demand\n\n")

# ==============================================================================
# 3. SIZE-BASED FEEDING MISMATCH
# ==============================================================================

cat("\nISSUE 2: SIZE-BASED PREDATION PARAMETERS (BETA)\n")
cat("=================================================\n\n")

cat("The parameter 'beta' controls predator-prey size ratio:\n")
cat("  - Predators eat prey at size: prey_size = predator_size / beta\n")
cat("  - EXPECTED: beta should be 10-1000 (predators eat prey 10-1000x SMALLER)\n")
cat("  - Example: A 1000g predator with beta=100 eats 10g prey\n\n")

cat("Current beta values:\n")
beta_summary <- species_params %>%
  select(species, category, w_inf, beta) %>%
  mutate(
    typical_prey_size = w_inf / beta,
    interpretation = case_when(
      beta >= 10 & beta <= 1000 ~ "✓ Reasonable",
      beta < 10 ~ "⚠️ TOO LOW - eats prey too large",
      beta > 1000 ~ "⚠️ TOO HIGH - eats prey too small"
    )
  )

print(beta_summary, n = Inf)
cat("\n")

# Check for problematic beta values
bad_beta <- sum(beta_summary$beta < 10 | beta_summary$beta > 1000)
if (bad_beta > 0) {
  cat("⚠️  ISSUE DETECTED:", bad_beta, "species have problematic beta values\n\n")
}

# ==============================================================================
# 4. INTERACTION MATRIX ANALYSIS
# ==============================================================================

cat("\nISSUE 3: FEEDING INTERACTION STRUCTURE\n")
cat("=======================================\n\n")

# Load interaction matrix
interaction_matrix <- read_csv(here(output_dir, "interaction_matrix.csv"),
                               show_col_types = FALSE) %>%
  column_to_rownames("prey") %>%
  as.matrix()

# Check which species feed on resources (not in interaction matrix)
# In mizer, resource feeding is controlled by species parameters, not interaction matrix
cat("Species feeding patterns:\n\n")

# Analyze each predator's diet
for (i in 1:nrow(species_params)) {
  predator_name <- species_params$species[i]
  predator_diet <- interaction_matrix[, i]
  
  # Sum of species-to-species interactions
  species_diet_fraction <- sum(predator_diet)
  
  # Implicit resource fraction (1 - species interactions)
  resource_fraction <- 1 - species_diet_fraction
  
  cat(sprintf("%-30s: Resource=%.2f%%, Species=%.2f%%", 
              predator_name, 
              resource_fraction * 100, 
              species_diet_fraction * 100))
  
  if (resource_fraction < 0.01 && species_params$category[i] %in% c("fish", "krill", "seal", "whale", "penguin")) {
    cat(" ⚠️  ISSUE: No resource feeding")
  }
  cat("\n")
}

cat("\n")

# Check for species with no predators (dead ends)
predation_received <- rowSums(interaction_matrix)
species_no_predators <- names(predation_received[predation_received == 0])

if (length(species_no_predators) > 0) {
  cat("⚠️  Species with NO predators (energy dead-ends):\n")
  for (sp in species_no_predators) {
    cat("    -", sp, "\n")
  }
  cat("  These species accumulate energy with no outlet (except background mortality)\n\n")
}

# Check for top predators that eat only other predators
cat("\nTop predator analysis:\n")
top_predators <- species_params %>%
  filter(category %in% c("seal", "whale")) %>%
  pull(species)

for (pred in top_predators) {
  pred_col <- which(colnames(interaction_matrix) == pred)
  diet <- interaction_matrix[, pred_col]
  
  # Check what they eat
  prey_eaten <- names(diet[diet > 0.1])  # Significant diet components
  prey_categories <- species_params$category[species_params$species %in% prey_eaten]
  
  eats_krill <- any(prey_categories == "krill")
  eats_fish <- any(prey_categories == "fish")
  eats_predators <- any(prey_categories %in% c("seal", "whale", "penguin"))
  
  cat(sprintf("  %-25s: Krill=%s, Fish=%s, Predators=%s",
              pred, eats_krill, eats_fish, eats_predators))
  
  if (!eats_krill && !eats_fish) {
    cat(" ⚠️  ISSUE: Top predator disconnected from base")
  }
  cat("\n")
}

cat("\n")

# ==============================================================================
# 5. GROWTH VS MORTALITY BALANCE
# ==============================================================================

cat("\nISSUE 4: GROWTH VS MORTALITY BALANCE\n")
cat("=====================================\n\n")

# Get feeding levels and growth at initial state
feeding_level <- getFeedingLevel(params)
growth_rate <- getEGrowth(params)

cat("Feeding level by species (at initial state):\n")
cat("  Values close to 0 indicate starvation\n")
cat("  Values close to 1 indicate satiation\n\n")

feeding_summary <- data.frame(
  species = species_params$species,
  mean_f = apply(feeding_level, 1, mean, na.rm = TRUE),
  min_f = apply(feeding_level, 1, min, na.rm = TRUE),
  max_f = apply(feeding_level, 1, max, na.rm = TRUE)
)

print(feeding_summary, n = Inf)

# Count species with low feeding
starving <- sum(feeding_summary$mean_f < 0.2)
if (starving > 0) {
  cat("\n⚠️  ISSUE:", starving, "species have mean feeding level < 0.2 (severe food limitation)\n\n")
}

# Check mortality components
cat("\nMortality rates (z0 = background mortality):\n")
mortality_summary <- species_params %>%
  select(species, category, z0, ewe_pb) %>%
  arrange(desc(z0))

print(mortality_summary, n = Inf)

cat("\nProduction/Biomass ratio from EwE (P/B, similar to total mortality):\n")
cat("  High P/B species (>1): Fast turnover (krill, small fish)\n")
cat("  Low P/B species (<0.5): Slow turnover (whales, large fish)\n\n")

# ==============================================================================
# 6. METABOLIC RATE ANALYSIS
# ==============================================================================

cat("\nISSUE 5: METABOLIC RATES (ks parameter)\n")
cat("========================================\n\n")

cat("The parameter 'ks' controls standard metabolic rate.\n")
cat("It's typically set equal to 'h' (max consumption) in mizer.\n\n")

metab_summary <- species_params %>%
  select(species, w_inf, h, ks, z0) %>%
  mutate(
    h_per_year = signif(h, 3),
    ks_per_year = signif(ks, 3)
  )

cat("Current h and ks values:\n")
print(metab_summary, n = 12)
cat("  ... (showing first 12 species)\n\n")

# Check if h values seem reasonable
# h should scale roughly as w_inf^(-0.25) to w_inf^(0)
# Extremely large h values can cause numerical issues

cat("Checking h scaling:\n")
h_scaling <- species_params %>%
  mutate(
    h_scaled = h / (w_inf^0.75),
    log_h = log10(h),
    log_w_inf = log10(w_inf)
  )

cat("  h values range from", signif(min(species_params$h), 3), 
    "to", signif(max(species_params$h), 3), "\n")
cat("  Spanning", signif(max(species_params$h) / min(species_params$h), 2), 
    "orders of magnitude\n\n")

# ==============================================================================
# 7. SUMMARY AND RECOMMENDATIONS
# ==============================================================================

cat("\n=============================================================\n")
cat("  SUMMARY OF ISSUES\n")
cat("=============================================================\n\n")

issues_found <- 0

cat("1. RESOURCE SPECTRUM (CRITICAL):\n")
if (biomass_ratio < 5) {
  cat("   ❌ Resource biomass is TOO LOW\n")
  cat("      Current: ", signif(resource_biomass, 3), "tonnes/km²\n")
  cat("      Needed: ~", signif(total_consumer_biomass * 20, 3), "tonnes/km² (20x consumers)\n")
  cat("   SOLUTION: Increase kappa by ~", signif(20 / biomass_ratio, 1), "x\n")
  issues_found <- issues_found + 1
} else {
  cat("   ✓ Resource biomass appears adequate\n")
}
cat("\n")

cat("2. RESOURCE REGENERATION RATE:\n")
if (resource_production / total_consumption_demand < 0.5) {
  cat("   ❌ Resource production rate is TOO LOW\n")
  cat("      Current r_pp:", signif(resource_params$r_pp, 3), "/year\n")
  cat("      Production only", signif(100 * resource_production / total_consumption_demand, 1), 
      "% of demand\n")
  cat("   SOLUTION: Increase r_pp to ~", 
      signif(resource_params$r_pp * (total_consumption_demand / resource_production) * 1.5, 2), 
      "/year\n")
  issues_found <- issues_found + 1
} else {
  cat("   ✓ Resource production appears adequate\n")
}
cat("\n")

cat("3. SIZE-BASED FEEDING (beta):\n")
if (bad_beta > 0) {
  cat("   ⚠️ ", bad_beta, "species have problematic beta values\n")
  cat("   SOLUTION: Review beta values - should typically be 10-1000\n")
  issues_found <- issues_found + 1
} else {
  cat("   ✓ Beta values appear reasonable\n")
}
cat("\n")

cat("4. FEEDING INTERACTIONS:\n")
if (length(species_no_predators) > 0) {
  cat("   ⚠️ ", length(species_no_predators), "species have no predators (energy dead-ends)\n")
  cat("   SOLUTION: Add predation on these species or accept as energy sinks\n")
  issues_found <- issues_found + 1
} else {
  cat("   ✓ All species have predators\n")
}
cat("\n")

cat("5. FEEDING LEVELS:\n")
if (starving > 0) {
  cat("   ❌ ", starving, "species are severely food-limited (f < 0.2)\n")
  cat("   SOLUTION: This is a symptom of resource/interaction issues above\n")
  issues_found <- issues_found + 1
} else {
  cat("   ✓ Feeding levels appear adequate\n")
}
cat("\n")

cat("\n=============================================================\n")
cat("  RECOMMENDED FIXES (Priority Order)\n")
cat("=============================================================\n\n")

cat("1. INCREASE KAPPA (Resource carrying capacity)\n")
cat("   Current value:", signif(resource_params$kappa, 4), "\n")
cat("   Recommended: ~", signif(resource_params$kappa * 20 / biomass_ratio, 3), 
    "(increase by ~", signif(20 / biomass_ratio, 1), "x)\n")
cat("   Rationale: Resource biomass must support consumer pyramid\n\n")

cat("2. INCREASE R_PP (Resource regeneration rate)\n")
cat("   Current value:", signif(resource_params$r_pp, 4), "/year\n")
cat("   Recommended: ~", 
    signif(resource_params$r_pp * (total_consumption_demand / resource_production) * 1.5, 2), 
    "/year\n")
cat("   Rationale: Resources must regenerate fast enough to meet consumption\n\n")

cat("3. REVIEW W_PP_CUTOFF (Maximum resource size)\n")
cat("   Current value:", signif(resource_params$w_pp_cutoff, 4), "g\n")
cat("   Recommended: Consider increasing to 1-10g\n")
cat("   Rationale: Large zooplankton are important prey for many species\n\n")

cat("4. CHECK LAMBDA (Size spectrum slope)\n")
cat("   Current value:", signif(resource_params$lambda, 3), "\n")
cat("   Recommended: Keep at 2-2.3 (typical for marine ecosystems)\n")
cat("   Rationale: Slope controls size distribution of resources\n\n")

cat("5. VERIFY INTERACTION MATRIX\n")
cat("   - Ensure krill feeders can access krill\n")
cat("   - Check that top predators have appropriate prey\n")
cat("   - Consider adding missing predation links\n\n")

cat("6. ADJUST BACKGROUND MORTALITY (z0) IF NEEDED\n")
cat("   - Should decrease with body size\n")
cat("   - Krill: 0.4-1.0/year is reasonable\n")
cat("   - Large fish/predators: 0.1-0.3/year\n")
cat("   - Whales: 0.02-0.1/year\n\n")

cat("\n=============================================================\n")
cat("  DIAGNOSTIC COMPLETE - ", issues_found, " ISSUES IDENTIFIED\n")
cat("=============================================================\n\n")

cat("Next steps:\n")
cat("  1. Adjust resource_spectrum.R script with recommended kappa and r_pp\n")
cat("  2. Re-run resource spectrum generation (02_resource_spectrum.R)\n")
cat("  3. Re-run initial model setup (04_initial_model_setup.R)\n")
cat("  4. Monitor feeding levels and biomass trajectories\n\n")
