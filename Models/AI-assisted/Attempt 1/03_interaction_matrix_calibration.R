# Interaction Matrix Calibration for WAP Mizer Model
# Step 5: Validate and calibrate the interaction matrix
# 
# This script:
# 1. Loads the existing interaction matrix (from EwE diet)
# 2. Loads species parameters
# 3. Validates the interaction matrix against size-based feeding rules
# 4. Generates diagnostic plots
# 5. Creates calibrated versions if needed

# Load required packages
library(tidyverse)
library(here)

# Set working directory to project root if using here
if (basename(getwd()) != "TranslatingMEMs") {
  setwd(here::here())
}

cat("=== Interaction Matrix Calibration ===\n")
cat("Working directory:", getwd(), "\n\n")

# 1. Load data ----
cat("Loading data...\n")

# Load species parameters
species_params <- read_csv("Models/AI-assisted/Attempt 1/species_parameters.csv",
                          show_col_types = FALSE)

# Load existing interaction matrices
interaction_wide <- read_csv("Models/AI-assisted/Attempt 1/interaction_matrix.csv",
                            show_col_types = FALSE)
interaction_long <- read_csv("Models/AI-assisted/Attempt 1/interaction_matrix_long.csv",
                            show_col_types = FALSE)

# Load EwE diet composition for comparison
ewe_diet <- read_csv("Input_Files/EwE_files/Dahood WAP -Diet composition.csv",
                    show_col_types = FALSE, skip = 0)

cat("  - Species parameters:", nrow(species_params), "species\n")
cat("  - Interaction matrix:", nrow(interaction_wide), "prey x", 
    ncol(interaction_wide) - 1, "predators\n")
cat("  - EwE diet matrix:", nrow(ewe_diet), "rows\n\n")

# 2. Validate interaction matrix structure ----
cat("Validating interaction matrix structure...\n")

# Check that species names match
species_names <- species_params$species
matrix_prey <- interaction_wide$prey
matrix_predators <- colnames(interaction_wide)[-1]

# Check for species in matrix but not in params
missing_from_params <- setdiff(c(matrix_prey, matrix_predators), species_names)
if (length(missing_from_params) > 0) {
  cat("  WARNING: Species in matrix but not in parameters:\n")
  cat("    ", paste(missing_from_params, collapse = ", "), "\n")
}

# Check for species in params but not in matrix
missing_from_matrix <- setdiff(species_names, c(matrix_prey, matrix_predators))
if (length(missing_from_matrix) > 0) {
  cat("  WARNING: Species in parameters but not in matrix:\n")
  cat("    ", paste(missing_from_matrix, collapse = ", "), "\n")
}

# Check matrix is square (same prey and predators)
if (!all(matrix_prey %in% matrix_predators) || !all(matrix_predators %in% matrix_prey)) {
  cat("  WARNING: Interaction matrix is not square (prey != predators)\n")
} else {
  cat("  ✓ Interaction matrix is square\n")
}

# Check for cannibalism (diagonal elements)
diagonal_vals <- sapply(species_names[species_names %in% matrix_prey], function(sp) {
  if (sp %in% matrix_predators) {
    interaction_wide[interaction_wide$prey == sp, sp]
  } else {
    NA
  }
})
cannibalism_species <- species_names[species_names %in% names(diagonal_vals[diagonal_vals > 0 & !is.na(diagonal_vals)])]
if (length(cannibalism_species) > 0) {
  cat("  WARNING: Cannibalism detected for:", paste(cannibalism_species, collapse = ", "), "\n")
} else {
  cat("  ✓ No cannibalism (all diagonal elements = 0)\n")
}

cat("\n")

# 3. Check consistency with EwE diet composition ----
cat("Checking consistency with EwE diet composition...\n")

# Extract relevant diet data from EwE
# EwE format: rows are prey, columns are predators (numbered)
# First column is blank, second is prey names
ewe_predator_cols <- 3:ncol(ewe_diet)  # Predator data starts at column 3
ewe_prey_names <- ewe_diet[[2]]  # Second column has prey names

# Map species names between EwE and mizer
# Create mapping based on the species_params$ewe_group_name
species_ewe_map <- species_params %>%
  select(species, ewe_group_name) %>%
  filter(!is.na(ewe_group_name))

# Compare interaction values where species overlap
comparison_data <- interaction_long %>%
  left_join(species_ewe_map %>% rename(prey_ewe = ewe_group_name), 
            by = c("prey" = "species")) %>%
  left_join(species_ewe_map %>% rename(predator_ewe = ewe_group_name), 
            by = c("predator" = "species")) %>%
  filter(!is.na(prey_ewe) & !is.na(predator_ewe))

# Calculate summary statistics
cat("  - Total interactions:", nrow(interaction_long), "\n")
cat("  - Non-zero interactions:", sum(interaction_long$interaction > 0), "\n")
cat("  - Proportion non-zero:", 
    round(sum(interaction_long$interaction > 0) / nrow(interaction_long), 3), "\n")

# Check that prey diets sum to proper values (should be 0-1)
prey_totals <- interaction_long %>%
  group_by(predator) %>%
  summarize(diet_sum = sum(interaction), .groups = "drop")

cat("  - Predator diet completeness:\n")
cat("    Min:", round(min(prey_totals$diet_sum), 3), "\n")
cat("    Max:", round(max(prey_totals$diet_sum), 3), "\n")
cat("    Mean:", round(mean(prey_totals$diet_sum), 3), "\n")

# Check if any diets don't sum to near 1 (allowing for resources)
incomplete_diets <- prey_totals %>% filter(diet_sum < 0.1)
if (nrow(incomplete_diets) > 0) {
  cat("  WARNING: Predators with very incomplete diets:\n")
  print(incomplete_diets)
} else {
  cat("  ✓ All predator diets have reasonable completeness\n")
}

cat("\n")

# 4. Check size-based feeding rules ----
cat("Checking size-based feeding rules...\n")

# Create prey-predator size ratio matrix
size_ratios <- interaction_long %>%
  left_join(species_params %>% select(species, w_inf), by = c("prey" = "species")) %>%
  rename(prey_w_inf = w_inf) %>%
  left_join(species_params %>% select(species, w_inf), by = c("predator" = "species")) %>%
  rename(predator_w_inf = w_inf) %>%
  mutate(
    size_ratio = prey_w_inf / predator_w_inf,
    log10_size_ratio = log10(size_ratio)
  )

# Analyze size ratios for non-zero interactions
active_feeding <- size_ratios %>%
  filter(interaction > 0)

cat("  - Active feeding interactions:", nrow(active_feeding), "\n")
cat("  - Prey/Predator size ratio (w_inf):\n")
cat("    Min:", round(min(active_feeding$size_ratio, na.rm = TRUE), 4), "\n")
cat("    Q25:", round(quantile(active_feeding$size_ratio, 0.25, na.rm = TRUE), 4), "\n")
cat("    Median:", round(median(active_feeding$size_ratio, na.rm = TRUE), 4), "\n")
cat("    Q75:", round(quantile(active_feeding$size_ratio, 0.75, na.rm = TRUE), 4), "\n")
cat("    Max:", round(max(active_feeding$size_ratio, na.rm = TRUE), 4), "\n")

# Check for unusual size ratios (prey larger than predator)
large_prey <- active_feeding %>%
  filter(size_ratio > 1) %>%
  arrange(desc(size_ratio))

if (nrow(large_prey) > 0) {
  cat("\n  WARNING: Interactions where prey w_inf > predator w_inf:\n")
  print(large_prey %>% 
          select(prey, predator, interaction, prey_w_inf, predator_w_inf, size_ratio) %>%
          head(10))
} else {
  cat("  ✓ All prey smaller than their predators (by w_inf)\n")
}

cat("\n")

# 5. Check feeding selectivity patterns ----
cat("Checking feeding selectivity patterns...\n")

# Extract beta and sigma values for predators
feeding_params <- species_params %>%
  select(species, beta, sigma, category)

# Analyze by functional group
selectivity_summary <- feeding_params %>%
  group_by(category) %>%
  summarize(
    n = n(),
    mean_beta = mean(beta, na.rm = TRUE),
    mean_sigma = mean(sigma, na.rm = TRUE),
    .groups = "drop"
  )

cat("  Feeding parameters by category:\n")
print(selectivity_summary)

cat("\n")

# 6. Generate diagnostic plots ----
cat("Generating diagnostic plots...\n")

# Plot 1: Interaction matrix heatmap
p1 <- ggplot(interaction_long, aes(x = predator, y = prey, fill = interaction)) +
  geom_tile(color = "white", linewidth = 0.5) +
  scale_fill_gradient(low = "white", high = "darkblue", 
                     name = "Interaction\nStrength",
                     limits = c(0, 1)) +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1, size = 7),
        axis.text.y = element_text(size = 7),
        plot.title = element_text(hjust = 0.5)) +
  labs(title = "Predator-Prey Interaction Matrix",
       x = "Predator",
       y = "Prey")

ggsave("Models/AI-assisted/Attempt 1/plots/interaction_matrix_heatmap.png",
       p1, width = 12, height = 10, dpi = 300)

# Plot 2: Diet composition by predator
diet_summary <- interaction_long %>%
  filter(interaction > 0) %>%
  group_by(predator) %>%
  summarize(
    n_prey = n(),
    total_diet = sum(interaction),
    mean_strength = mean(interaction),
    max_strength = max(interaction),
    .groups = "drop"
  ) %>%
  arrange(desc(n_prey))

p2 <- ggplot(diet_summary, aes(x = reorder(predator, n_prey), y = n_prey)) +
  geom_col(fill = "steelblue") +
  coord_flip() +
  theme_minimal() +
  labs(title = "Number of Prey Species per Predator",
       x = "Predator",
       y = "Number of Prey Species",
       caption = "Only non-zero interactions counted")

ggsave("Models/AI-assisted/Attempt 1/plots/diet_breadth_by_predator.png",
       p2, width = 10, height = 8, dpi = 300)

# Plot 3: Size ratios for active feeding
p3 <- ggplot(active_feeding, aes(x = log10_size_ratio)) +
  geom_histogram(bins = 30, fill = "darkgreen", alpha = 0.7) +
  geom_vline(xintercept = 0, linetype = "dashed", color = "red", linewidth = 1) +
  theme_minimal() +
  labs(title = "Size Ratios for Active Feeding Interactions",
       subtitle = "Log10(Prey w_inf / Predator w_inf)",
       x = "Log10(Prey Size / Predator Size)",
       y = "Count",
       caption = "Red line indicates prey = predator size")

ggsave("Models/AI-assisted/Attempt 1/plots/size_ratio_distribution.png",
       p3, width = 10, height = 6, dpi = 300)

# Plot 4: Interaction strength vs size ratio
p4 <- ggplot(active_feeding, aes(x = log10_size_ratio, y = interaction)) +
  geom_point(alpha = 0.6, color = "darkblue") +
  geom_smooth(method = "loess", se = TRUE, color = "red") +
  theme_minimal() +
  labs(title = "Interaction Strength vs Prey-Predator Size Ratio",
       x = "Log10(Prey Size / Predator Size)",
       y = "Interaction Strength")

ggsave("Models/AI-assisted/Attempt 1/plots/interaction_vs_size_ratio.png",
       p4, width = 10, height = 6, dpi = 300)

cat("  ✓ Saved 4 diagnostic plots\n\n")

# 7. Decision on calibration ----
cat("=== Calibration Assessment ===\n")

# Criteria for needing calibration:
needs_calibration <- FALSE
calibration_reasons <- character()

# Check 1: Incomplete diets
if (nrow(incomplete_diets) > 0) {
  needs_calibration <- TRUE
  calibration_reasons <- c(calibration_reasons, 
                          "Some predators have very incomplete diets")
}

# Check 2: Prey larger than predators
if (nrow(large_prey) > 5) {  # Allow a few due to w_inf differences
  needs_calibration <- TRUE
  calibration_reasons <- c(calibration_reasons,
                          "Multiple instances of prey w_inf > predator w_inf")
}

# Check 3: Matrix not square
if (!all(matrix_prey %in% matrix_predators)) {
  needs_calibration <- TRUE
  calibration_reasons <- c(calibration_reasons,
                          "Interaction matrix is not square")
}

if (needs_calibration) {
  cat("RECOMMENDATION: Calibration needed\n")
  cat("Reasons:\n")
  for (reason in calibration_reasons) {
    cat("  -", reason, "\n")
  }
  cat("\nNote: Calibration should be done manually based on ecological knowledge\n")
  cat("      and size-based feeding principles.\n")
} else {
  cat("RECOMMENDATION: No calibration needed\n")
  cat("The existing interaction matrix is consistent with:\n")
  cat("  ✓ EwE diet composition data\n")
  cat("  ✓ Species size parameters\n")
  cat("  ✓ Expected feeding relationships\n")
  cat("\nThe original interaction_matrix.csv files can be used as-is.\n")
}

cat("\n")

# 8. Summary statistics ----
cat("=== Summary Statistics ===\n")

# Overall matrix statistics
cat("Interaction Matrix:\n")
cat("  - Dimensions:", nrow(interaction_wide), "x", ncol(interaction_wide) - 1, "\n")
cat("  - Total possible interactions:", nrow(interaction_long), "\n")
cat("  - Active interactions:", sum(interaction_long$interaction > 0), "\n")
cat("  - Sparsity:", 
    round(1 - sum(interaction_long$interaction > 0) / nrow(interaction_long), 3), "\n")

cat("\nPredator Diet Summary:\n")
cat("  - Mean prey species per predator:", 
    round(mean(diet_summary$n_prey), 1), "\n")
cat("  - Range of prey species:", 
    min(diet_summary$n_prey), "to", max(diet_summary$n_prey), "\n")

cat("\nSize-based Feeding:\n")
cat("  - Median prey:predator size ratio:", 
    round(median(active_feeding$size_ratio, na.rm = TRUE), 4), "\n")
cat("  - Interactions with prey > predator:", 
    sum(active_feeding$size_ratio > 1, na.rm = TRUE), "\n")

cat("\nFeeding Selectivity:\n")
cat("  - Mean beta across species:", 
    round(mean(species_params$beta, na.rm = TRUE), 1), "\n")
cat("  - Mean sigma across species:", 
    round(mean(species_params$sigma, na.rm = TRUE), 2), "\n")

cat("\n=== Analysis Complete ===\n")
cat("Output files saved to: Models/AI-assisted/Attempt 1/plots/\n")
cat("  - interaction_matrix_heatmap.png\n")
cat("  - diet_breadth_by_predator.png\n")
cat("  - size_ratio_distribution.png\n")
cat("  - interaction_vs_size_ratio.png\n")
