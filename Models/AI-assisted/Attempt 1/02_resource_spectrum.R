# Resource Spectrum Parameterization for Western Antarctic Peninsula Mizer Model
# This script sets up the EXTENDED resource spectrum parameters and time-varying dynamics
#
# CRITICAL CHANGE (2026-01-14): Extended spectrum approach to fix model collapse
# - Now represents ALL lower trophic levels (phyto, zoo, benthic, detritus)
# - Size range expanded 100,000× (1e-10 to 10 g vs. 1e-8 to 0.001 g)
# - Biomass increased 26× (5,000 vs. 190 t/km²) to support consumers
# - Forcing uses ZOOPLANKTON ONLY to avoid temporal dynamics mismatch
#
# Author: Claude Sonnet 4.5
# Date: 2026-01-14 (major revision)

# Load required libraries
library(mizer)
library(tidyverse)
library(here)

# Source: Input_Files/EwE_files/Dahood WAP -Basic input.csv

# ==============================================================================
# 1. EXTRACT RESOURCE GROUP DATA FROM EWE (ALL RESOURCE TYPES)
# ==============================================================================

# From EwE, the resource groups (not size-structured) include:
# ZOOPLANKTON:
# - Micro-zooplankton: Biomass = 25 t/km², P/B = 55 /year
# - Meso-zooplankton: Biomass = 130 t/km², P/B = 4.81 /year
# - Macro-zooplankton: Biomass = 35 t/km², P/B = 2.5 /year
# PRIMARY PRODUCERS:
# - Small phytoplankton: Biomass ~15,023 t/km² (model-calc, EE=0.5), P/B = 75 /year
# - Large phytoplankton: Biomass ~13,712 t/km² (model-calc, EE=0.5), P/B = 75 /year
# - Ice Algae: Biomass ~307 t/km² (model-calc), P/B = 50 /year
# OTHER:
# - Benthic Invertebrates: Biomass = 8,554 t/km², P/B = 2.0 /year
# - Detritus: Input 5.77 t/km² (cycling, not a static pool)

# Total zooplankton biomass in EwE
zoo_biomass_ewe <- 25 + 130 + 35  # = 190 t/km²

# Total phytoplankton biomass (model-calculated in EwE)
phyto_biomass_ewe <- 15023 + 13712 + 307  # ~28,735 t/km² (approximation)

# Benthic resources
benthic_biomass_ewe <- 8554  # t/km²

# TOTAL EwE RESOURCES
total_ewe_resources <- zoo_biomass_ewe + phyto_biomass_ewe + benthic_biomass_ewe
# = 190 + 28,735 + 8,554 = 37,479 t/km²

cat("EwE Resource Groups:\n")
cat(sprintf("  Zooplankton: %.0f t/km²\n", zoo_biomass_ewe))
cat(sprintf("  Phytoplankton: %.0f t/km² (estimated)\n", phyto_biomass_ewe))
cat(sprintf("  Benthic: %.0f t/km²\n", benthic_biomass_ewe))
cat(sprintf("  TOTAL: %.0f t/km²\n", total_ewe_resources))

# Primary production approximation
zoo_production <- 25*55 + 130*4.81 + 35*2.5  # = 2,080.3 t/km²/year

# ==============================================================================
# 2. DEFINE EXTENDED RESOURCE SPECTRUM SIZE RANGE
# ==============================================================================

# CRITICAL CHANGE: Extended spectrum to fix size gap and biomass deficit
#
# Original problem: Narrow range (1e-8 to 0.001 g) created 100× gap to consumers
# Solution: Extend to cover full range from phytoplankton to large zooplankton
#
# Extended size ranges represented:
# - Picoplankton: 1e-10 to 1e-8 g (~0.1-1 μm): Smallest phytoplankton
# - Nanoplankton: 1e-8 to 1e-6 g (~1-10 μm): Small phyto, flagellates
# - Microplankton: 1e-6 to 1e-4 g (~10-100 μm): Diatoms, dinoflagellates, micro-zoo
# - Mesoplankton: 1e-4 to 0.01 g (~0.1-5 mm): Copepods, larvae
# - Macroplankton: 0.01 to 10 g (~5-20 mm): Large copepods, organic aggregates

# Set extended resource size range (in grams)
w_min_resource <- 1e-10  # Smallest phytoplankton (~0.5 μm diameter)
w_max_resource <- 10     # Large zooplankton and organic particles (~20 mm)

cat("\n==============================================================================\n")
cat("EXTENDED RESOURCE SPECTRUM SIZE RANGE\n")
cat("==============================================================================\n")
cat(sprintf("  Min: %.2e g (%.2e μm³ equivalent)\n", w_min_resource, w_min_resource*1e9))
cat(sprintf("  Max: %.2f g (%.1f mm³ equivalent)\n", w_max_resource, w_max_resource*1e3))
cat(sprintf("  Range expansion: %.0f× larger than original\n",
            (w_max_resource/w_min_resource) / (0.001/1e-8)))
cat("\nCritical improvement: Resources now overlap with consumer feeding ranges\n")
cat("  Antarctic krill (min 0.1 g) can now feed on 0.01-1 g prey\n")

# ==============================================================================
# 3. CALCULATE EXTENDED RESOURCE SPECTRUM PARAMETERS (KAPPA, LAMBDA)
# ==============================================================================

# The resource spectrum follows N(w) = kappa * w^(-lambda)
# where N(w) is the density of individuals at size w

# Typical lambda values range from 2.0 to 2.2 for marine ecosystems
# We'll use lambda = 2.05 (Andersen et al. 2016) - RETAINED
lambda_resource <- 2.05

# Calculate kappa from TARGET total biomass
# Total biomass B = integral from w_min to w_max of w * kappa * w^(-lambda) dw
#                 = kappa * integral of w^(1-lambda) dw
#                 = kappa * [w^(2-lambda)/(2-lambda)] from w_min to w_max

# TARGET BIOMASS CALCULATION (FULL APPROACH)
# SOLUTION 5 (2026-01-14): Increase to "Full" resource level
# Reference: PREVENTING_COLLAPSE_03.md, Solution 5
# After testing Moderate (12,000 t/km²) with reduced z0, beta, sigma
# Moving to "Full" level to ensure adequate resources at all sizes
zoo_biomass_g_m2 <- 190         # Measured zooplankton (baseline)
phyto_multiplier <- 120         # Closer to EwE phyto levels (was 50)
benthic_background <- 4000      # Half of EwE benthic accessible fraction (was 2000)

target_biomass_g_m2 <- zoo_biomass_g_m2 * (1 + phyto_multiplier) + benthic_background
# = 190 * 121 + 4000 = 26,990 g/m² (~27,000 t/km²) - "FULL" option

# Alternative targets for sensitivity testing:
# Conservative: 5,000 t/km² (INSUFFICIENT - caused model collapse)
# Moderate: 12,000 t/km² (TESTED - still insufficient with high z0)
# Full: 27,000 t/km² (NOW USING - combining with reduced z0, capped beta, min sigma)

cat("\n==============================================================================\n")
cat("TARGET BIOMASS CALCULATION\n")
cat("==============================================================================\n")
cat(sprintf("  Zooplankton baseline: %.0f g/m²\n", zoo_biomass_g_m2))
cat(sprintf("  Phytoplankton (20× zoo): %.0f g/m²\n", zoo_biomass_g_m2 * phyto_multiplier))
cat(sprintf("  Benthic/detritus accessible: %.0f g/m²\n", benthic_background))
cat(sprintf("  TARGET TOTAL: %.0f g/m² (%.0f t/km²)\n",
            target_biomass_g_m2, target_biomass_g_m2))
cat(sprintf("  EwE total resources: %.0f t/km² (%.1f%% of EwE total)\n",
            total_ewe_resources, 100*target_biomass_g_m2/total_ewe_resources))

# Calculate kappa to match target biomass
exponent <- 2 - lambda_resource
biomass_integral <- (w_max_resource^exponent - w_min_resource^exponent) / exponent
kappa_resource <- target_biomass_g_m2 / biomass_integral

cat("\n==============================================================================\n")
cat("CALCULATED SPECTRUM PARAMETERS\n")
cat("==============================================================================\n")
cat(sprintf("  Lambda: %.2f (unchanged)\n", lambda_resource))
cat(sprintf("  Kappa: %.2f (FULL level - was 257.4 moderate, now increased further)\n", kappa_resource))
cat(sprintf("  Expected biomass: %.0f g/m² (was 190 original, 12,000 moderate, now FULL)\n",
            kappa_resource * biomass_integral))
cat(sprintf("  Biomass integral: %.2e\n", biomass_integral))

# ==============================================================================
# 4. SET UP RESOURCE DYNAMICS PARAMETERS
# ==============================================================================

# Resource carrying capacity (can be time-varying)
# In mizer, resource dynamics follow semi-chemostat model:
# dN/dt = r_pp(w) * (capacity(w) - N(w)) - consumption(w)

# Resource growth rate (turnover rate, similar to P/B in EwE)
# Using ZOOPLANKTON P/B since we're forcing with zooplankton data
# (Not phytoplankton P/B which is much faster ~75/year)
weighted_pb <- (25*55 + 130*4.81 + 35*2.5) / zoo_biomass_ewe
# = 10.95 /year (appropriate for mixed zooplankton community)

# CRITICAL CHANGE: Use per-year rate directly (was incorrectly per-day)
# Mizer interprets resource_rate based on time step in model
resource_rate_annual <- weighted_pb  # ~10-11 /year (333× faster than original!)
resource_rate_daily <- weighted_pb / 365  # For reference

cat("\n==============================================================================\n")
cat("RESOURCE DYNAMICS PARAMETERS\n")
cat("==============================================================================\n")
cat(sprintf("  Weighted P/B (zoo): %.2f /year\n", weighted_pb))
cat(sprintf("  Resource rate: %.2f /year (was 0.0301, increased 333×)\n", resource_rate_annual))
cat(sprintf("  Resource rate: %.4f /day\n", resource_rate_daily))
cat("\nRationale: Using zooplankton turnover rate because:\n")
cat("  1. Forcing with zooplankton data (not phytoplankton)\n")
cat("  2. Zoo biomass integrates phyto production (time-lagged)\n")
cat("  3. Avoids mismatch between phyto boom-bust and zoo response\n")

# ==============================================================================
# 5. LOAD AND PROCESS ISIMIP PLANKTON FORCING DATA
# ==============================================================================

# Function to load ISIMIP plankton data
load_plankton_forcing <- function(forcing_dir = "Input_Files/ISIMIP3a_climate_forcing_inputs/plankton_forcing") {
  
  cat("\nLoading ISIMIP plankton forcing data...\n")
  
  # List of plankton variables
  plankton_vars <- c(
    "phydiat" = "Diatoms",
    "phydiaz" = "Diazotrophs", 
    "phypico" = "Picophytoplankton",
    "zmicro" = "Microzooplankton",
    "zmeso" = "Mesozooplankton"
  )
  
  # Load each variable
  plankton_data <- list()
  
  for (var in names(plankton_vars)) {
    file_pattern <- sprintf("gfdl-mom6-cobalt2_obsclim_%s-vint.*\\.csv$", var)
    files <- list.files(forcing_dir, pattern = file_pattern, full.names = TRUE)
    
    if (length(files) > 0) {
      cat(sprintf("  Loading %s (%s)...\n", plankton_vars[var], var))
      data <- read_csv(files[1], show_col_types = FALSE)
      
      # Convert carbon content (mol m-2) to biomass (g m-2)
      # Molecular weight of carbon = 12 g/mol
      data$biomass_g_m2 <- data$vals * 12
      
      # Calculate spatial and temporal means
      summary_stats <- data %>%
        group_by(time) %>%
        summarise(
          mean_biomass = mean(biomass_g_m2, na.rm = TRUE),
          sd_biomass = sd(biomass_g_m2, na.rm = TRUE),
          min_biomass = min(biomass_g_m2, na.rm = TRUE),
          max_biomass = max(biomass_g_m2, na.rm = TRUE),
          .groups = "drop"
        )
      
      plankton_data[[var]] <- list(
        name = plankton_vars[var],
        raw_data = data,
        time_series = summary_stats
      )
      
      cat(sprintf("    Mean biomass: %.2f g/m² (SD: %.2f)\n", 
                  mean(summary_stats$mean_biomass),
                  sd(summary_stats$mean_biomass)))
    } else {
      cat(sprintf("  Warning: File not found for %s\n", plankton_vars[var]))
    }
  }
  
  return(plankton_data)
}

# Load the plankton data
plankton_forcing <- load_plankton_forcing()

# Calculate total plankton biomass from ISIMIP
total_plankton_biomass <- sapply(plankton_forcing, function(x) {
  mean(x$time_series$mean_biomass)
})

cat("\nComparison of biomass sources:\n")
cat(sprintf("  EwE zooplankton: %.2f g/m²\n", zoo_biomass_g_m2))
cat(sprintf("  ISIMIP total: %.2f g/m²\n", sum(total_plankton_biomass)))
cat("  ISIMIP components:\n")
for (var in names(total_plankton_biomass)) {
  cat(sprintf("    %s: %.2f g/m²\n", var, total_plankton_biomass[var]))
}

# ==============================================================================
# 6. CREATE TIME-VARYING RESOURCE CAPACITY FUNCTION
# ==============================================================================

# Function to create resource capacity that varies with plankton forcing
# CRITICAL: Uses ZOOPLANKTON FORCING ONLY (not phytoplankton)
create_resource_capacity <- function(plankton_data,
                                    baseline_kappa = kappa_resource,
                                    baseline_lambda = lambda_resource) {
  
  # Calculate baseline total biomass from plankton data
  baseline_total <- sum(sapply(plankton_data, function(x) {
    mean(x$time_series$mean_biomass)
  }))
  
  # Create monthly time series of scaling factors
  # FORCING STRATEGY: Use zooplankton (zmicro + zmeso) ONLY
  # Rationale:
  # 1. Zoo biomass integrates phyto dynamics (time-lagged)
  # 2. Consumers feed on zoo, not phyto directly (krill eat copepods)
  # 3. Zoo dynamics more stable than phyto boom-bust
  # 4. Avoids temporal mismatch (phyto peaks ≠ zoo peaks)
  
  if ("zmicro" %in% names(plankton_data) && "zmeso" %in% names(plankton_data)) {
    
    zmicro_ts <- plankton_data$zmicro$time_series
    zmeso_ts <- plankton_data$zmeso$time_series
    
    # Combine time series
    resource_ts <- zmicro_ts %>%
      left_join(zmeso_ts, by = "time", suffix = c("_micro", "_meso")) %>%
      mutate(
        total_zoo = mean_biomass_micro + mean_biomass_meso,
        scaling_factor = total_zoo / mean(total_zoo)
      )
    
    cat("\n==============================================================================\n")
    cat("TIME-VARYING RESOURCE CAPACITY (ZOOPLANKTON FORCING ONLY)\n")
    cat("==============================================================================\n")
    cat(sprintf("  Mean zooplankton: %.2f g/m²\n", mean(resource_ts$total_zoo)))
    cat(sprintf("  Range: %.2f - %.2f g/m²\n",
                min(resource_ts$total_zoo), max(resource_ts$total_zoo)))
    cat(sprintf("  CV: %.2f\n", sd(resource_ts$total_zoo)/mean(resource_ts$total_zoo)))
    cat(sprintf("  Scaling factors: %.2f - %.2f (mean=1.0)\n",
                min(resource_ts$scaling_factor), max(resource_ts$scaling_factor)))
    cat("\nNote: NOT using phytoplankton forcing to avoid temporal mismatch\n")
    
    return(list(
      time_series = resource_ts,
      baseline_kappa = baseline_kappa,
      baseline_lambda = baseline_lambda,
      forcing_strategy = "zooplankton_only"
    ))
    
  } else {
    warning("Zmicro or zmeso data not available, using constant capacity")
    return(NULL)
  }
}

# Create time-varying capacity
resource_capacity <- create_resource_capacity(plankton_forcing)

# ==============================================================================
# 7. SAVE RESOURCE SPECTRUM PARAMETERS
# ==============================================================================

# Save parameters as RDS for use in model setup
resource_params <- list(
  # Size range (EXTENDED)
  w_min = w_min_resource,
  w_max = w_max_resource,
  w_pp_cutoff = w_max_resource,  # Alias for mizer compatibility
  
  # Spectrum parameters
  kappa = kappa_resource,
  lambda = lambda_resource,
  
  # Dynamics parameters
  # CRITICAL: Mizer's dt parameter is in YEARS (dt=0.1 means 0.1 year steps)
  # Therefore resource_rate MUST be in per-YEAR units, not per-day!
  r_pp = resource_rate_annual,  # Per year - mizer dt is in years (FIX: was resource_rate_daily)
  r_pp_daily = resource_rate_daily,  # For reference only
  
  # Target biomass (NEW)
  target_biomass = target_biomass_g_m2,
  
  # EwE comparison values (EXPANDED)
  ewe_zoo_biomass = zoo_biomass_g_m2,
  ewe_phyto_biomass = phyto_biomass_ewe,
  ewe_benthic_biomass = benthic_biomass_ewe,
  ewe_total_resources = total_ewe_resources,
  ewe_weighted_pb = weighted_pb,
  
  # Forcing strategy (NEW)
  forcing_strategy = "zooplankton_only_phase1",
  forcing_rationale = "Zoo integrates phyto dynamics; avoids temporal mismatch",
  
  # Time-varying capacity (if available)
  capacity = resource_capacity,
  
  # ISIMIP plankton data
  plankton_forcing = plankton_forcing
)

output_file <- here("Models", "AI-assisted", "Attempt 1", "resource_params.rds")
saveRDS(resource_params, output_file)
cat(sprintf("\nResource parameters saved to: %s\n", output_file))

# ==============================================================================
# 8. CREATE VALIDATION PLOTS
# ==============================================================================

cat("\nCreating validation plots...\n")

# Plot 1: Resource spectrum shape
p1 <- ggplot() +
  geom_function(
    fun = function(w) kappa_resource * w^(-lambda_resource),
    xlim = c(w_min_resource, w_max_resource),
    color = "blue",
    linewidth = 1
  ) +
  scale_x_log10(
    breaks = 10^seq(-10, 0, 2),
    labels = scales::trans_format("log10", scales::math_format(10^.x))
  ) +
  scale_y_log10(
    breaks = 10^seq(0, 20, 5),
    labels = scales::trans_format("log10", scales::math_format(10^.x))
  ) +
  labs(
    title = "Resource Spectrum",
    subtitle = sprintf("λ = %.2f, κ = %.2e", lambda_resource, kappa_resource),
    x = "Body mass (g)",
    y = "Abundance density (N/m²/g)"
  ) +
  theme_minimal() +
  theme(
    plot.title = element_text(face = "bold", size = 14),
    axis.title = element_text(size = 12)
  )

ggsave(here("Models", "AI-assisted", "Attempt 1", "plots", "resource_spectrum_shape.png"),
       p1, width = 8, height = 6, dpi = 300)

# Plot 2: Biomass by size class
w_seq <- 10^seq(log10(w_min_resource), log10(w_max_resource), length.out = 100)
biomass_by_size <- data.frame(
  size_g = w_seq,
  abundance = kappa_resource * w_seq^(-lambda_resource),
  biomass_density = w_seq * kappa_resource * w_seq^(-lambda_resource)
)

p2 <- ggplot(biomass_by_size, aes(x = size_g, y = biomass_density)) +
  geom_line(color = "darkgreen", linewidth = 1) +
  scale_x_log10(
    breaks = 10^seq(-10, 0, 2),
    labels = scales::trans_format("log10", scales::math_format(10^.x))
  ) +
  labs(
    title = "Biomass Density by Size",
    subtitle = sprintf("Total biomass: %.2f g/m²", zoo_biomass_g_m2),
    x = "Body mass (g)",
    y = "Biomass density (g/m²/g body mass)"
  ) +
  theme_minimal() +
  theme(
    plot.title = element_text(face = "bold", size = 14),
    axis.title = element_text(size = 12)
  )

ggsave(here("Models", "AI-assisted", "Attempt 1", "plots", "resource_biomass_by_size.png"),
       p2, width = 8, height = 6, dpi = 300)

# Plot 3: Time series of ISIMIP plankton forcing (if available)
if (!is.null(resource_capacity)) {
  p3 <- ggplot(resource_capacity$time_series, 
               aes(x = as.Date(time))) +
    geom_line(aes(y = total_zoo, color = "Total zooplankton"), linewidth = 1) +
    geom_line(aes(y = mean_biomass_micro, color = "Microzooplankton"), 
              linewidth = 0.8, alpha = 0.7) +
    geom_line(aes(y = mean_biomass_meso, color = "Mesozooplankton"), 
              linewidth = 0.8, alpha = 0.7) +
    scale_color_manual(
      values = c("Total zooplankton" = "black",
                 "Microzooplankton" = "red",
                 "Mesozooplankton" = "blue")
    ) +
    labs(
      title = "ISIMIP Plankton Forcing Time Series",
      subtitle = "1961-2010 monthly means (GFDL-MOM6-COBALT2)",
      x = "Year",
      y = "Biomass (g/m²)",
      color = "Component"
    ) +
    theme_minimal() +
    theme(
      plot.title = element_text(face = "bold", size = 14),
      axis.title = element_text(size = 12),
      legend.position = "bottom"
    )
  
  ggsave(here("Models", "AI-assisted", "Attempt 1", "plots", "plankton_forcing_timeseries.png"),
         p3, width = 10, height = 6, dpi = 300)
}

# Plot 4: Comparison with EwE biomass
comparison_data <- data.frame(
  Source = c("EwE Zooplankton", "ISIMIP Zooplankton", 
             "ISIMIP Phytoplankton", "ISIMIP Total"),
  Biomass = c(
    zoo_biomass_g_m2,
    total_plankton_biomass["zmicro"] + total_plankton_biomass["zmeso"],
    sum(total_plankton_biomass[c("phydiat", "phydiaz", "phypico")]),
    sum(total_plankton_biomass)
  )
)

p4 <- ggplot(comparison_data, aes(x = Source, y = Biomass, fill = Source)) +
  geom_col() +
  geom_text(aes(label = sprintf("%.1f", Biomass)), 
            vjust = -0.5, size = 4) +
  scale_fill_brewer(palette = "Set2") +
  labs(
    title = "Biomass Comparison: EwE vs ISIMIP",
    y = "Biomass (g/m²)",
    x = NULL
  ) +
  theme_minimal() +
  theme(
    plot.title = element_text(face = "bold", size = 14),
    axis.title = element_text(size = 12),
    axis.text.x = element_text(angle = 45, hjust = 1),
    legend.position = "none"
  )

ggsave(here("Models", "AI-assisted", "Attempt 1", "plots", "biomass_comparison_ewe_isimip.png"),
       p4, width = 8, height = 6, dpi = 300)

cat("\nValidation plots saved.\n")

# ==============================================================================
# 9. SUMMARY AND NEXT STEPS
# ==============================================================================

cat("\n", paste(rep("=", 80), collapse = ""), "\n", sep = "")
cat("EXTENDED RESOURCE SPECTRUM PARAMETERIZATION COMPLETE (FULL LEVEL)\n")
cat(paste(rep("=", 80), collapse = ""), "\n", sep = "")
cat("\nCRITICAL CHANGES FROM ORIGINAL:\n")
cat(sprintf("  Size range: %.2e - %.2e g (was 1e-8 - 0.001, expanded 100,000×)\n",
            w_min_resource, w_max_resource))
cat(sprintf("  Lambda: %.2f (unchanged)\n", lambda_resource))
cat(sprintf("  Kappa: %.2f (FULL level - Solution 5)\n", kappa_resource))
cat(sprintf("  Resource rate: %.4f /day, %.1f /year (was 0.0301 /year, increased 333×)\n",
            resource_rate_daily, resource_rate_annual))
cat(sprintf("  Target biomass: %.0f g/m² (~27,000 t/km² FULL level)\n", target_biomass_g_m2))
cat(sprintf("  Resource production: %.0f × %.1f = %.0f t/km²/year\n",
            target_biomass_g_m2, resource_rate_annual, target_biomass_g_m2 * resource_rate_annual))
cat(sprintf("  Forcing: Zooplankton only (avoids phyto-zoo mismatch)\n"))
cat("\nIMPACT ON MODEL (Combined with Solutions 1-4):\n")
cat("  ✓ Solution 1: z0 reduced to 30% (prevents double-counting mortality)\n")
cat("  ✓ Solution 2: Beta capped at 100 (ensures prey accessibility)\n")
cat("  ✓ Solution 3: Sigma minimum 1.2 (increases feeding flexibility)\n")
cat("  ✓ Solution 4: h capped at 10×w_inf (prevents unrealistic values)\n")
cat("  ✓ Solution 5: Resources at FULL level ~27,000 t/km² (NOW IMPLEMENTED)\n")
cat("  ✓ Expected outcome: Model stability with all fixes combined\n")
cat("\nFORCING STRATEGY:\n")
cat("  Phase 1: Zooplankton forcing only (stable, biologically relevant)\n")
cat("  Future: Can add size-dependent forcing (phyto small, zoo large)\n")
cat("\nNext steps:\n")
cat("  1. Use these parameters in 'newMultispeciesParams()' or model setup script\n")
cat("  2. Set w_pp_cutoff = 10 g (not 0.001!)\n")
cat("  3. Set resource_rate = ", sprintf("%.4f", resource_rate_daily), " /day\n")
cat("  4. Run steady-state initialization and verify no collapse\n")
cat("  5. Check feeding levels >0.3 for most species\n")
cat("  6. Validate resource:consumer biomass ratio 7:1 to 13:1\n")
cat("\n", paste(rep("=", 80), collapse = ""), "\n\n", sep = "")
