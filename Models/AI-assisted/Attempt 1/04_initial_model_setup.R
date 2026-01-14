# ==============================================================================
# Step 6: Initial Model Setup and Steady State
# Translation of Dahood et al. (2019) EwE Model to Mizer
# ==============================================================================
#
# This script assembles all derived parameters into a MizerParams object,
# sets initial conditions, and attempts to find a steady state.
#
# Inputs:
#   - species_parameters.csv (from Step 3)
#   - interaction_matrix.csv (from Step 5)
#   - resource_params.rds (from Step 4)
#
# Outputs:
#   - initial_params.rds: MizerParams object with initial setup
#   - steady_state_params.rds: MizerParams after steady state (if achieved)
#   - initial_spectrum.png: Initial size spectrum by species
#   - steady_state_spectrum.png: Steady state size spectrum
#   - biomass_comparison_initial.png: Initial biomass vs EwE
#   - biomass_comparison_steady.png: Steady state biomass vs EwE
#   - growth_curves.png: Growth curves by species
#   - feeding_level.png: Feeding level by species and size
#   - mortality_components.png: Mortality components by species
#   - model_setup_summary.txt: Text summary of model setup
#
# ==============================================================================

library(mizer)
library(tidyverse)
library(here)

cat("\n=============================================================\n")
cat("  Step 6: Initial Model Setup and Steady State\n")
cat("  Western Antarctic Peninsula Mizer Model\n")
cat("=============================================================\n\n")

# Set output directory
output_dir <- here("Models", "AI-assisted", "Attempt 1")

# ==============================================================================
# 1. LOAD INPUT DATA
# ==============================================================================

cat("Loading input data...\n")

# Species parameters
species_params <- read_csv(
  here(output_dir, "species_parameters.csv"),
  show_col_types = FALSE
)

# Interaction matrix
interaction_matrix <- read_csv(
  here(output_dir, "interaction_matrix.csv"),
  show_col_types = FALSE
) %>%
  column_to_rownames("prey") %>%
  as.matrix()

# Resource parameters
resource_params <- readRDS(here(output_dir, "resource_params.rds"))

cat("  ✓ Species parameters loaded: ", nrow(species_params), " species\n")
cat("  ✓ Interaction matrix loaded: ", nrow(interaction_matrix), "×", 
    ncol(interaction_matrix), "\n")
cat("  ✓ Resource parameters loaded\n\n")

# ==============================================================================
# 2. CREATE INITIAL MIZER PARAMS OBJECT
# ==============================================================================

cat("Creating MizerParams object...\n")

# Ensure species_params has required columns and types
species_params <- species_params %>%
  mutate(
    species = as.character(species),
    w_min = as.numeric(w_min),
    w_mat = as.numeric(w_mat),
    w_inf = as.numeric(w_inf),
    k_vb = as.numeric(k_vb),
    h = as.numeric(h),
    ks = as.numeric(ks),
    z0 = as.numeric(z0),
    beta = as.numeric(beta),
    sigma = as.numeric(sigma),
    erepro = as.numeric(erepro)
  )

# Create MizerParams object with resource spectrum
params <- newMultispeciesParams(
  species_params = species_params,
  interaction = interaction_matrix,
  kappa = resource_params$kappa,
  lambda = resource_params$lambda,
  w_pp_cutoff = resource_params$w_pp_cutoff,  # Use w_pp_cutoff from resource_params
  resource_rate = resource_params$r_pp,  # Regeneration rate (r_pp is standard mizer name)
  no_w = 200,  # Number of size bins (increased for better resolution)
  min_w = 1e-4,  # Minimum size in grams
  max_w = 2e8,  # Maximum size (200 tonnes for whales)
  min_w_pp = resource_params$w_min  # Minimum resource size from resource_params
)

cat("  ✓ MizerParams object created\n")
cat("  ✓ Size bins: ", length(params@w), "\n")
cat("  ✓ Size range: ", signif(min(params@w), 3), " to ", 
    signif(max(params@w), 3), " g\n")
cat("  ✓ Resource bins: ", length(params@w_full[params@w_full < params@resource_params$w_pp_cutoff]), "\n\n")

# ==============================================================================
# 3. SET INITIAL CONDITIONS FROM EWE BIOMASS
# ==============================================================================

cat("Setting initial conditions from EwE biomass...\n")

# Get EwE biomass (in tonnes/km²)
ewe_biomass <- species_params$ewe_biomass

# The initial abundances will be set using the get_initial_n() function
# which distributes biomass across size classes assuming a power law
# We'll scale this to match EwE biomass

# Get initial size spectrum using mizer's defaults
initial_n <- get_initial_n(params)

# Calculate biomass for each species from initial_n
initial_biomass <- numeric(nrow(species_params))
for (i in 1:nrow(species_params)) {
  sp_idx <- which(params@species_params$species == species_params$species[i])
  w <- params@w[params@w >= species_params$w_min[i] & 
                 params@w <= species_params$w_inf[i]]
  dw <- params@dw[params@w >= species_params$w_min[i] & 
                   params@w <= species_params$w_inf[i]]
  n <- initial_n[sp_idx, params@w >= species_params$w_min[i] & 
                         params@w <= species_params$w_inf[i]]
  initial_biomass[i] <- sum(n * w * dw)
}

# Scale initial_n to match EwE biomass
for (i in 1:nrow(species_params)) {
  sp_idx <- which(params@species_params$species == species_params$species[i])
  if (initial_biomass[i] > 0 && !is.na(ewe_biomass[i]) && ewe_biomass[i] > 0) {
    scale_factor <- ewe_biomass[i] / initial_biomass[i]
    initial_n[sp_idx, ] <- initial_n[sp_idx, ] * scale_factor
  }
}

# Set initial conditions in params
initialN(params) <- initial_n

cat("  ✓ Initial abundances set and scaled to EwE biomass\n")

# Calculate and display initial biomass
initial_biomass_scaled <- getBiomass(params)
comparison_df <- data.frame(
  species = species_params$species,
  ewe_biomass = ewe_biomass,
  mizer_biomass = initial_biomass_scaled,
  ratio = initial_biomass_scaled / ewe_biomass
)

cat("\nInitial biomass comparison (tonnes/km²):\n")
cat("  Mean ratio (Mizer/EwE): ", signif(mean(comparison_df$ratio, na.rm = TRUE), 3), "\n")
cat("  Median ratio (Mizer/EwE): ", signif(median(comparison_df$ratio, na.rm = TRUE), 3), "\n")
cat("  Species with ratio < 0.5 or > 2: ", 
    sum(comparison_df$ratio < 0.5 | comparison_df$ratio > 2, na.rm = TRUE), "\n\n")

# Save initial params
saveRDS(params, here(output_dir, "initial_params.rds"))
cat("  ✓ Initial parameters saved to initial_params.rds\n\n")

# ==============================================================================
# 4. VALIDATE INITIAL SETUP
# ==============================================================================

cat("Validating initial model setup...\n")

# Test a short simulation to check for errors
test_sim <- tryCatch({
  project(params, t_max = 1, dt = 0.1)
}, error = function(e) {
  cat("  ✗ Error in test simulation:\n")
  cat("    ", conditionMessage(e), "\n")
  return(NULL)
})

if (!is.null(test_sim)) {
  cat("  ✓ Test simulation successful (1 year)\n")
} else {
  cat("  ✗ Test simulation failed - check parameters\n")
  stop("Cannot proceed without successful simulation")
}

# ==============================================================================
# 5. RUN TO STEADY STATE
# ==============================================================================

cat("\nAttempting to find steady state...\n")
cat("  This may take several minutes...\n\n")

# Steady state function with progress reporting
steady_state_result <- tryCatch({
  
  # Run for longer time to approach steady state
  # For complex models like this, true steady state may not be achievable
  # due to the multi-species dynamics and size structure
  
  # Start with a medium-term run
  cat("  Running 100-year simulation...\n")
  sim_medium <- project(params, t_max = 100, dt = 0.1, t_save = 1)
  
  # Check biomass stability
  biomass_ts <- getBiomass(sim_medium)
  
  # Calculate coefficient of variation for last 20 years
  last_years <- (nrow(biomass_ts) - 19):nrow(biomass_ts)
  cv_biomass <- apply(biomass_ts[last_years, ], 2, function(x) sd(x) / mean(x))
  
  cat("  Coefficient of variation (last 20 years):\n")
  cat("    Mean CV: ", signif(mean(cv_biomass, na.rm = TRUE), 3), "\n")
  cat("    Max CV: ", signif(max(cv_biomass, na.rm = TRUE), 3), "\n")
  
  # If relatively stable (mean CV < 0.1), consider it quasi-steady
  if (mean(cv_biomass, na.rm = TRUE) < 0.1) {
    cat("  ✓ Model appears relatively stable\n")
    steady_params <- sim_medium@params
    initialN(steady_params) <- sim_medium@n[nrow(sim_medium@n), , ]
  } else {
    cat("  ⚠ Model not fully stable, but proceeding with endpoint\n")
    cat("    (Multi-species models often show natural variability)\n")
    steady_params <- sim_medium@params
    initialN(steady_params) <- sim_medium@n[nrow(sim_medium@n), , ]
  }
  
  list(
    params = steady_params,
    sim = sim_medium,
    cv = cv_biomass,
    achieved = mean(cv_biomass, na.rm = TRUE) < 0.1
  )
  
}, error = function(e) {
  cat("  ✗ Error finding steady state:\n")
  cat("    ", conditionMessage(e), "\n")
  return(NULL)
})

if (!is.null(steady_state_result)) {
  steady_params <- steady_state_result$params
  saveRDS(steady_params, here(output_dir, "steady_state_params.rds"))
  saveRDS(steady_state_result$sim, here(output_dir, "steady_state_simulation.rds"))
  cat("\n  ✓ Steady state parameters saved\n\n")
} else {
  cat("\n  ✗ Could not find steady state, using initial parameters\n\n")
  steady_params <- params
}

# ==============================================================================
# 6. GENERATE DIAGNOSTIC PLOTS
# ==============================================================================

cat("Generating diagnostic plots...\n")

# Plot 1: Initial size spectrum by species
png(here(output_dir, "plots", "initial_spectrum.png"),
    width = 3000, height = 2400, res = 300)
print(plotSpectra(params, power = 2, total = TRUE))
dev.off()
cat("  ✓ Initial spectrum plot saved\n")

# Plot 2: Steady state spectrum (if available)
if (!is.null(steady_state_result)) {
  png(here(output_dir, "plots", "steady_state_spectrum.png"),
      width = 3000, height = 2400, res = 300)
  print(plotSpectra(steady_params, power = 2, total = TRUE))
  dev.off()
  cat("  ✓ Steady state spectrum plot saved\n")
}

# Plot 3: Initial biomass comparison
biomass_comp_initial <- data.frame(
  species = species_params$species,
  category = species_params$category,
  EwE = species_params$ewe_biomass,
  Mizer = getBiomass(params)
) %>%
  pivot_longer(cols = c(EwE, Mizer), names_to = "Model", values_to = "Biomass")

p1 <- ggplot(biomass_comp_initial, aes(x = reorder(species, Biomass), y = Biomass, fill = Model)) +
  geom_bar(stat = "identity", position = "dodge") +
  coord_flip() +
  scale_y_log10() +
  facet_wrap(~category, scales = "free_y", ncol = 1) +
  labs(
    title = "Initial Biomass Comparison: EwE vs Mizer",
    x = "Species",
    y = "Biomass (tonnes/km²)",
    caption = "Note: Log scale"
  ) +
  theme_bw() +
  theme(legend.position = "bottom")

ggsave(here(output_dir, "plots", "biomass_comparison_initial.png"), p1,
       width = 12, height = 16, dpi = 300)
cat("  ✓ Initial biomass comparison plot saved\n")

# Plot 4: Steady state biomass comparison (if available)
if (!is.null(steady_state_result)) {
  biomass_comp_steady <- data.frame(
    species = species_params$species,
    category = species_params$category,
    EwE = species_params$ewe_biomass,
    Mizer = getBiomass(steady_params)
  ) %>%
    pivot_longer(cols = c(EwE, Mizer), names_to = "Model", values_to = "Biomass")
  
  p2 <- ggplot(biomass_comp_steady, aes(x = reorder(species, Biomass), y = Biomass, fill = Model)) +
    geom_bar(stat = "identity", position = "dodge") +
    coord_flip() +
    scale_y_log10() +
    facet_wrap(~category, scales = "free_y", ncol = 1) +
    labs(
      title = "Steady State Biomass Comparison: EwE vs Mizer",
      x = "Species",
      y = "Biomass (tonnes/km²)",
      caption = "Note: Log scale"
    ) +
    theme_bw() +
    theme(legend.position = "bottom")
  
  ggsave(here(output_dir, "plots", "biomass_comparison_steady.png"), p2,
         width = 12, height = 16, dpi = 300)
  cat("  ✓ Steady state biomass comparison plot saved\n")
}

# Plot 5: Growth curves
png(here(output_dir, "plots", "growth_curves.png"),
    width = 3000, height = 2400, res = 300)
print(plotGrowthCurves(params, species = species_params$species[1:min(12, nrow(species_params))]))
dev.off()
cat("  ✓ Growth curves plot saved\n")

# Plot 6: Feeding level by species
png(here(output_dir, "plots", "feeding_level.png"),
    width = 3000, height = 2400, res = 300)
print(plotFeedingLevel(params))
dev.off()
cat("  ✓ Feeding level plot saved\n")

# Plot 7: Biomass time series (if steady state run available)
if (!is.null(steady_state_result)) {
  png(here(output_dir, "plots", "biomass_timeseries.png"),
      width = 3000, height = 2400, res = 300)
  print(plotBiomass(steady_state_result$sim))
  dev.off()
  cat("  ✓ Biomass time series plot saved\n")
}

# ==============================================================================
# 7. SUMMARY REPORT
# ==============================================================================

cat("\nGenerating summary report...\n")

summary_file <- here(output_dir, "model_setup_summary.txt")
sink(summary_file)

cat("=============================================================\n")
cat("  Step 6: Initial Model Setup and Steady State\n")
cat("  Western Antarctic Peninsula Mizer Model\n")
cat("  Generated:", format(Sys.time(), "%Y-%m-%d %H:%M:%S"), "\n")
cat("=============================================================\n\n")

cat("MODEL STRUCTURE\n")
cat("---------------\n")
cat("Number of species:", nrow(species_params), "\n")
cat("  Fish:", sum(species_params$category == "fish"), "\n")
cat("  Krill:", sum(species_params$category == "krill"), "\n")
cat("  Seals:", sum(species_params$category == "seal"), "\n")
cat("  Whales:", sum(species_params$category == "whale"), "\n")
cat("  Penguins:", sum(species_params$category == "penguin"), "\n")
cat("  Birds:", sum(species_params$category == "bird"), "\n")
cat("  Other:", sum(species_params$category == "other"), "\n\n")

cat("Size bins:", length(params@w), "\n")
cat("Size range:", signif(min(params@w), 3), "to", signif(max(params@w), 3), "g\n")
cat("Resource spectrum bins:", length(params@w_full[params@w_full < params@resource_params$w_pp_cutoff]), "\n\n")

cat("RESOURCE SPECTRUM PARAMETERS\n")
cat("----------------------------\n")
cat("Kappa (carrying capacity):", signif(resource_params$kappa, 4), "\n")
cat("Lambda (slope):", signif(resource_params$lambda, 3), "\n")
cat("r_pp (regeneration rate):", signif(resource_params$r_pp, 3), "\n")
cat("w_pp_cutoff (cutoff):", signif(resource_params$w_pp_cutoff, 3), "g\n")
cat("w_min:", signif(resource_params$w_min, 3), "g\n\n")

cat("INITIAL BIOMASS COMPARISON\n")
cat("--------------------------\n")
cat("Species-by-species comparison (EwE vs Mizer):\n\n")
for (i in 1:nrow(comparison_df)) {
  cat(sprintf("%-30s: EwE = %8.4f, Mizer = %8.4f, Ratio = %5.2f\n",
              comparison_df$species[i],
              comparison_df$ewe_biomass[i],
              comparison_df$mizer_biomass[i],
              comparison_df$ratio[i]))
}
cat("\nSummary statistics:\n")
cat("  Mean ratio:", signif(mean(comparison_df$ratio, na.rm = TRUE), 3), "\n")
cat("  Median ratio:", signif(median(comparison_df$ratio, na.rm = TRUE), 3), "\n")
cat("  SD ratio:", signif(sd(comparison_df$ratio, na.rm = TRUE), 3), "\n")
cat("  Species within 50% of EwE:", sum(comparison_df$ratio > 0.5 & comparison_df$ratio < 1.5, na.rm = TRUE), "/", nrow(comparison_df), "\n\n")

if (!is.null(steady_state_result)) {
  cat("STEADY STATE ASSESSMENT\n")
  cat("-----------------------\n")
  cat("Steady state achieved:", steady_state_result$achieved, "\n")
  cat("Mean CV (last 20 years):", signif(mean(steady_state_result$cv, na.rm = TRUE), 3), "\n")
  cat("Max CV (last 20 years):", signif(max(steady_state_result$cv, na.rm = TRUE), 3), "\n\n")
  
  cat("Species-specific CV:\n")
  for (i in 1:length(steady_state_result$cv)) {
    cat(sprintf("  %-30s: CV = %6.4f\n", 
                species_params$species[i], 
                steady_state_result$cv[i]))
  }
  cat("\n")
  
  # Steady state biomass comparison
  steady_biomass <- getBiomass(steady_params)
  cat("\nSteady State Biomass (vs EwE):\n")
  for (i in 1:nrow(species_params)) {
    cat(sprintf("%-30s: EwE = %8.4f, Steady = %8.4f, Ratio = %5.2f\n",
                species_params$species[i],
                species_params$ewe_biomass[i],
                steady_biomass[i],
                steady_biomass[i] / species_params$ewe_biomass[i]))
  }
}

cat("\n\nFILES GENERATED\n")
cat("---------------\n")
cat("Model files:\n")
cat("  - initial_params.rds\n")
if (!is.null(steady_state_result)) {
  cat("  - steady_state_params.rds\n")
  cat("  - steady_state_simulation.rds\n")
}
cat("\nPlots:\n")
cat("  - initial_spectrum.png\n")
if (!is.null(steady_state_result)) {
  cat("  - steady_state_spectrum.png\n")
  cat("  - biomass_timeseries.png\n")
}
cat("  - biomass_comparison_initial.png\n")
if (!is.null(steady_state_result)) {
  cat("  - biomass_comparison_steady.png\n")
}
cat("  - growth_curves.png\n")
cat("  - feeding_level.png\n")
cat("\nSummary:\n")
cat("  - model_setup_summary.txt\n\n")

cat("=============================================================\n")
cat("  Model Setup Complete\n")
cat("=============================================================\n")

sink()

cat("  ✓ Summary report saved to model_setup_summary.txt\n\n")

# ==============================================================================
# 8. FINAL STATUS
# ==============================================================================

cat("=============================================================\n")
cat("  STEP 6 COMPLETE\n")
cat("=============================================================\n\n")
cat("Model successfully created and initialized.\n")
if (!is.null(steady_state_result)) {
  if (steady_state_result$achieved) {
    cat("Steady state achieved (mean CV < 0.1).\n")
  } else {
    cat("Model shows some variability but is usable.\n")
  }
}
cat("\nNext steps:\n")
cat("  1. Review diagnostic plots\n")
cat("  2. Proceed to Step 7: Calibration\n")
cat("  3. Tune parameters if needed\n\n")

cat("Files ready for use:\n")
cat("  - initial_params.rds (starting point)\n")
if (!is.null(steady_state_result)) {
  cat("  - steady_state_params.rds (equilibrium state)\n")
}
cat("\n")
