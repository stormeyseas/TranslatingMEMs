# Parameter Derivation for WAP Mizer Model
# Translation of Dahood et al. (2019) EwE model to mizer
# Step 3: Parameter Derivation and Conversion

# Load required libraries
library(tidyverse)
library(here)

# Create output directory if needed
dir.create(here("Models/AI-assisted/Attempt 1"), 
           recursive = TRUE, showWarnings = FALSE)

# =============================================================================
# 1. LOAD EWE DATA
# =============================================================================

# Read EwE basic input data
ewe_basic <- read_csv(here("Input_Files/EwE_files/Dahood WAP -Basic input.csv"),
                      skip = 1, col_names = FALSE)

# Set proper column names
col_names <- c("group_num", "group_name", "hab_area", "biomass", 
               "total_mortality", "pb_ratio", "qb_ratio", "ee", 
               "other_mortality", "pq_ratio", "unassim", "detritus_import")
names(ewe_basic) <- col_names

# Read diet composition
ewe_diet <- read_csv(here("Input_Files/EwE_files/Dahood WAP -Diet composition.csv"),
                     skip = 1, col_names = FALSE)

# =============================================================================
# 2. DEFINE SPECIES FOR MIZER MODEL
# =============================================================================

# Based on model structure design (Documentation/02_model_structure.qmd):
# 26 size-structured species (excluding detritus, resources will be separate)

species_list <- tribble(
  ~species, ~ewe_group_num, ~ewe_group_name, ~category, ~monitored,
  # Fish and Cephalopods (6 species)
  "Cephalopods", 18, "Cephalopods", "fish", FALSE,
  "Myctophids", 19, "Myctophids", "fish", FALSE,
  "On-shelf fish", 20, "On-shelf fish", "fish", FALSE,
  "Notothenia rossii", 21, "N. rossii", "fish", FALSE,
  "Champsocephalus gunnari", 22, "C gunnari", "fish", TRUE,
  "Gobionotothen gibberifrons", 23, "G gibberifrons", "fish", TRUE,
  # Euphausiids (2 species)
  "Antarctic Krill", 26, "Krill Large", "krill", TRUE,  # Will combine with Krill Small
  "Other Euphausiids", 28, "Other Euphausiids", "krill", FALSE,
  # Seals and Killer Whale (6 species)
  "Killer Whale", 1, "Killer whales", "seal", FALSE,
  "Leopard Seal", 2, "Leopard Seal", "seal", TRUE,
  "Weddell Seal", 3, "Weddell Seal", "seal", FALSE,
  "Crabeater Seal", 4, "Crabeater Seal", "seal", FALSE,
  "Antarctic Fur Seal", 5, "Antarctic fur seals", "seal", TRUE,
  "Southern Elephant Seal", 6, "S Elephant Seals", "seal", FALSE,
  # Whales (5 species)
  "Sperm Whale", 7, "Sperm Whales", "whale", FALSE,
  "Blue Whale", 8, "Blue Whales", "whale", FALSE,
  "Fin Whale", 9, "Fin Whales", "whale", FALSE,
  "Minke Whale", 10, "Minke Whales", "whale", FALSE,
  "Humpback Whale", 11, "Humpback whales", "whale", FALSE,
  # Penguins (5 species)
  "Emperor Penguin", 12, "Emperor Penguins", "penguin", FALSE,
  "Gentoo Penguin", 13, "Gentoo Penguins", "penguin", TRUE,
  "Chinstrap Penguin", 14, "Chinstrap Penguins", "penguin", TRUE,
  "Adelie Penguin", 15, "Adelie Penguins", "penguin", TRUE,
  "Macaroni Penguin", 16, "Macaroni Penguins", "penguin", FALSE,
  # Other consumers (2 species)
  "Flying Birds", 17, "Flying Birds", "bird", FALSE,
  "Salps", 24, "Salps", "other", FALSE
)

# =============================================================================
# 3. EXTRACT EWE PARAMETERS
# =============================================================================

# Join species list with EwE data
species_params_base <- species_list %>%
  left_join(ewe_basic %>% 
              select(group_num, biomass, pb_ratio, qb_ratio, ee),
            by = c("ewe_group_num" = "group_num")) %>%
  # For Antarctic Krill, combine both stanzas
  mutate(
    biomass = ifelse(species == "Antarctic Krill", 
                     81.26 + 28.93, biomass),  # Combine Large + Small krill
    pb_ratio = ifelse(species == "Antarctic Krill",
                      (81.26 * 0.8 + 28.93 * 0.8) / (81.26 + 28.93),  # Weighted average
                      pb_ratio),
    qb_ratio = ifelse(species == "Antarctic Krill",
                      (81.26 * 3.57 + 28.93 * 6.51) / (81.26 + 28.93),  # Weighted average
                      qb_ratio)
  )

# =============================================================================
# 4. DERIVE SIZE PARAMETERS
# =============================================================================

# Define size parameters based on literature and category
# For marine mammals and seabirds: Adult-only representation (narrow size range)
# For fish: Full size range
# For krill: Size range from juveniles to adults

size_params <- tribble(
  ~species, ~w_min, ~w_mat, ~w_inf, ~ref_notes,
  
  # Fish and Cephalopods
  # Based on Antarctic fish literature (Hill et al. 2007, Kock 1992)
  "Cephalopods", 100, 2000, 5000, "Large squid species in WAP; L_inf ~50-100cm",
  "Myctophids", 1, 10, 50, "Small mesopelagic fish; typical myctophid sizes",
  "On-shelf fish", 10, 200, 1000, "Multi-species average for demersal fish",
  "Notothenia rossii", 50, 2000, 7000, "Large nototheniid; Common at 35-55cm, max 70cm",
  "Champsocephalus gunnari", 50, 300, 500, "Icefish; Mature at 24-28cm, max 50cm",
  "Gobionotothen gibberifrons", 50, 150, 400, "Small nototheniid; Mature at 15-18cm, max 30cm",
  
  # Euphausiids
  # Based on Antarctic krill biology (Siegel 2005, Kawaguchi et al. 2006)
  "Antarctic Krill", 0.1, 0.5, 1.0, "Recruit ~15mm (0.1g), mature 35mm (0.5g), max 60mm (1g)",
  "Other Euphausiids", 0.1, 0.4, 0.8, "Similar to Antarctic krill but slightly smaller",
  
  # Seals and Killer Whale - Adult only (w_min = 80% w_mat, w_inf = 120% w_mat)
  # NOTE: All sizes in GRAMS (multiply kg values by 1000)
  "Killer Whale", 4000000, 5000000, 8000000, "Adult odontocete; females 3-4t, males 6-8t",
  "Leopard Seal", 250000, 300000, 600000, "Adult phocid; females 260-500kg, males smaller",
  "Weddell Seal", 350000, 400000, 600000, "Adult phocid; females 400-500kg, males 400-500kg",
  "Crabeater Seal", 180000, 225000, 300000, "Adult phocid; 200-300kg both sexes",
  "Antarctic Fur Seal", 40000, 50000, 200000, "Adult otariid; females 30-50kg, males 120-200kg",
  "Southern Elephant Seal", 600000, 800000, 4000000, "Adult phocid; extreme sexual dimorphism, males to 4t",
  
  # Baleen Whales - Adult only
  # NOTE: All sizes in GRAMS (multiply kg values by 1000)
  "Sperm Whale", 15000000, 20000000, 50000000, "Adult odontocete; females 15-20t, males to 50t",
  "Blue Whale", 80000000, 100000000, 150000000, "Adult mysticete; largest animal, 100-150t",
  "Fin Whale", 40000000, 50000000, 80000000, "Adult mysticete; 40-80t",
  "Minke Whale", 5000000, 7000000, 10000000, "Adult mysticete; smallest baleen whale 5-10t",
  "Humpback Whale", 25000000, 30000000, 40000000, "Adult mysticete; 25-40t",
  
  # Penguins - Adult only
  # NOTE: All sizes in GRAMS (multiply kg values by 1000)
  "Emperor Penguin", 25000, 30000, 45000, "Adult penguin; largest penguin, 23-45kg",
  "Gentoo Penguin", 5000, 6000, 8000, "Adult penguin; 5-8kg",
  "Chinstrap Penguin", 3500, 4000, 6000, "Adult penguin; 3-6kg",
  "Adelie Penguin", 3500, 4000, 6000, "Adult penguin; 3-6kg",
  "Macaroni Penguin", 4000, 5000, 6000, "Adult penguin; 4-6kg",
  
  # Other consumers
  # NOTE: All sizes in GRAMS
  "Flying Birds", 500, 2000, 5000, "Mixed seabirds; average across petrels, albatrosses",
  "Salps", 0.001, 0.01, 0.1, "Colonial tunicates; individual + colony mass"
)

# Join size parameters
species_params <- species_params_base %>%
  left_join(size_params, by = "species")

# =============================================================================
# 5. DERIVE GROWTH PARAMETERS
# =============================================================================

# von Bertalanffy K parameter (yr^-1)
# For fish: Literature values where available, otherwise allometric relationship
# For marine mammals/birds: Effective K for adult-only representation
# For krill: K = 0.44 from literature (Rosenberg et al. 1986)

growth_params <- tribble(
  ~species, ~k_vb, ~ref_notes_growth,
  
  # Fish - Literature values
  "Cephalopods", 0.8, "Fast-growing cephalopods; typical K for squid 0.5-1.5",
  "Myctophids", 0.4, "Moderate K typical for myctophids",
  "On-shelf fish", 0.3, "Moderate K for mixed demersal fish",
  "Notothenia rossii", 0.13, "Slow-growing nototheniid; K from Kock 1992",
  "Champsocephalus gunnari", 0.35, "Relatively fast for notothenioid; K from Kock 1992",
  "Gobionotothen gibberifrons", 0.25, "Moderate K for small nototheniid",
  
  # Euphausiids
  "Antarctic Krill", 0.44, "K from Rosenberg et al. 1986, confirmed Kawaguchi et al.",
  "Other Euphausiids", 0.45, "Similar to Antarctic krill",
  
  # Marine mammals and birds - High K for narrow adult size range
  # K controls how fast individuals move through size classes
  # For adult-only: use high K to keep individuals near w_mat
  "Killer Whale", 2.0, "High K for narrow adult representation",
  "Leopard Seal", 2.0, "High K for narrow adult representation",
  "Weddell Seal", 2.0, "High K for narrow adult representation", 
  "Crabeater Seal", 2.0, "High K for narrow adult representation",
  "Antarctic Fur Seal", 2.0, "High K for narrow adult representation",
  "Southern Elephant Seal", 2.0, "High K for narrow adult representation",
  "Sperm Whale", 2.0, "High K for narrow adult representation",
  "Blue Whale", 2.0, "High K for narrow adult representation",
  "Fin Whale", 2.0, "High K for narrow adult representation",
  "Minke Whale", 2.0, "High K for narrow adult representation",
  "Humpback Whale", 2.0, "High K for narrow adult representation",
  "Emperor Penguin", 2.0, "High K for narrow adult representation",
  "Gentoo Penguin", 2.0, "High K for narrow adult representation",
  "Chinstrap Penguin", 2.0, "High K for narrow adult representation",
  "Adelie Penguin", 2.0, "High K for narrow adult representation",
  "Macaroni Penguin", 2.0, "High K for narrow adult representation",
  "Flying Birds", 2.0, "High K for narrow adult representation",
  "Salps", 1.5, "Moderate K for size-structured salps"
)

# Maximum consumption rate (h) - calibrate to match EwE Q/B ratios
# Mizer: consumption rate = h * w^n where n is typically around -0.25
# Q/B in EwE is annual consumption/biomass
# We'll derive h to match Q/B for each species

# Mizer default: consumption scales as h * M^n where n = -0.25 (size-based)
# EwE Q/B is biomass-weighted average consumption rate
# For adult-only species, we can set h to match Q/B at w_mat

species_params <- species_params %>%
  left_join(growth_params, by = "species") %>%
  mutate(
    # Calculate h to match Q/B
    # At w_mat: Q = h * w_mat^n, and Q/B = h * w_mat^n / w_mat = h * w_mat^(n-1)
    # Assuming n = -0.25 (mizer default), solve for h: h = Q/B * w_mat^(1-n)
    n_exponent = -0.25,  # Mizer default
    h_uncapped = qb_ratio * w_mat^(1 - n_exponent),
    # SOLUTION 4 (2026-01-14): Cap h to prevent unrealistic values for large species
    # Reference: PREVENTING_COLLAPSE_03.md, Solution 4
    h_max = w_inf * 10,  # Maximum 10× asymptotic body weight per year (generous)
    h = pmin(h_uncapped, h_max)
  )

# =============================================================================
# 6. DERIVE MORTALITY PARAMETERS
# =============================================================================

# Background mortality (z0) from P/B ratio
# CRITICAL FIX (2026-01-14): Reduce z0 to prevent model collapse
# In EwE: P/B includes all mortality (natural + predation + fishing)
# In Mizer: z0 is background mortality only, predation is added dynamically
# Using full P/B causes double-counting of predation mortality
# Solution: Use 30% of EwE P/B as base z0 (rest comes from predation)
# Reference: PREVENTING_COLLAPSE_03.md, Solution 1

species_params <- species_params %>%
  mutate(
    z0_original = pb_ratio,  # Store original for reference
    z0 = pmax(pb_ratio * 0.3, 0.05)  # 30% of EwE P/B, minimum 0.05 /year
  )

# =============================================================================
# 7. DERIVE FEEDING PARAMETERS
# =============================================================================

# Predator-Prey Mass Ratio (beta) and feeding kernel width (sigma)
# Based on feeding mode and diet analysis

feeding_params <- tribble(
  ~species, ~beta, ~sigma, ~feeding_notes,
  
  # Fish - Piscivores have higher beta, planktivores lower
  "Cephalopods", 100, 1.5, "Piscivorous; prey on fish and krill",
  "Myctophids", 100, 1.5, "Feed on zooplankton and small prey",
  "On-shelf fish", 100, 1.5, "Generalist demersal feeders",
  "Notothenia rossii", 500, 1.3, "Large piscivore; relatively selective",
  "Champsocephalus gunnari", 200, 1.5, "Krill and fish feeder",
  "Gobionotothen gibberifrons", 50, 2.0, "Benthic invertebrate feeder; less selective",
  
  # Euphausiids - filter feeders with low beta
  "Antarctic Krill", 10, 2.0, "Filter feeder on phytoplankton and ice algae",
  "Other Euphausiids", 10, 2.0, "Filter feeder similar to krill",
  
  # Marine mammals - Large predators with high beta
  "Killer Whale", 1000, 1.0, "Apex predator; highly selective, large prey",
  "Leopard Seal", 500, 1.2, "Large prey specialist (seals, penguins, krill)",
  "Weddell Seal", 200, 1.5, "Fish and squid feeder",
  "Crabeater Seal", 200, 1.0, "Krill specialist; narrow diet",
  "Antarctic Fur Seal", 300, 1.3, "Fish, squid, and krill",
  "Southern Elephant Seal", 500, 1.2, "Deep-diving squid specialist",
  
  # Whales
  "Sperm Whale", 1000, 1.0, "Deep-diving squid specialist; very selective",
  "Blue Whale", 200, 0.8, "Krill specialist; very narrow diet (filter feeder)",
  "Fin Whale", 200, 0.8, "Krill specialist; filter feeder",
  "Minke Whale", 200, 1.0, "Krill specialist; filter feeder",
  "Humpback Whale", 200, 0.8, "Krill specialist; filter feeder",
  
  # Penguins
  "Emperor Penguin", 100, 1.2, "Fish and krill feeder",
  "Gentoo Penguin", 100, 1.2, "Krill and fish feeder",
  "Chinstrap Penguin", 100, 0.8, "Krill specialist; narrow diet",
  "Adelie Penguin", 100, 0.8, "Krill specialist; narrow diet",
  "Macaroni Penguin", 100, 1.0, "Krill and other euphausiids",
  
  # Other
  "Flying Birds", 100, 1.5, "Generalist seabirds (fish, krill, squid)",
  "Salps", 5, 2.0, "Filter feeder on phytoplankton"
)

species_params <- species_params %>%
  left_join(feeding_params, by = "species") %>%
  mutate(
    # SOLUTION 2 & 3 (2026-01-14): Cap beta and set minimum sigma
    # Reference: PREVENTING_COLLAPSE_03.md, Solutions 2-3
    beta_original = beta,  # Store original for reference
    sigma_original = sigma,  # Store original for reference
    # Cap beta to ensure prey accessibility (high beta + steep spectrum = invisible prey)
    beta = pmin(beta, 100),  # Maximum PPMR = 100
    # Lower cap for krill and small organisms
    beta = ifelse(category %in% c("krill", "other"), pmin(beta, 50), beta),
    # Set minimum sigma for feeding flexibility (sigma < 1.2 too restrictive)
    sigma = pmax(sigma, 1.2)
  )

# =============================================================================
# 8. SET REPRODUCTIVE PARAMETERS
# =============================================================================

# Reproductive efficiency (erepro) - proportion of energy invested in reproduction
# R_max - maximum recruitment (will be calibrated to match biomass)
# For now, use placeholders that will be tuned during calibration

species_params <- species_params %>%
  mutate(
    erepro = case_when(
      category == "fish" ~ 0.1,     # Fish invest ~10% in reproduction
      category == "krill" ~ 0.3,    # Krill high reproductive output
      category %in% c("seal", "whale") ~ 0.01,  # Mammals low reproductive rate
      category %in% c("penguin", "bird") ~ 0.05, # Birds intermediate
      category == "other" ~ 0.2     # Salps high reproduction
    ),
    R_max = NA_real_  # Will be calculated from steady-state conditions
  )

# =============================================================================
# 9. ADD METADATA AND FINALIZE
# =============================================================================

species_params_final <- species_params %>%
  mutate(
    # Add mizer-required columns
    species = species,
    w_min = w_min,
    w_mat = w_mat,
    w_inf = w_inf,
    k_vb = k_vb,
    h = h,
    h_uncapped = h_uncapped,  # Store uncapped h for reference
    h_max = h_max,  # Store h cap for reference
    ks = h,  # Mizer default: ks = h (maximum intake can sustain maximum metabolism)
    z0 = z0,
    z0_original = z0_original,  # Store original z0 before 30% reduction
    beta = beta,
    beta_original = beta_original,  # Store original beta before capping
    sigma = sigma,
    sigma_original = sigma_original,  # Store original sigma before minimum
    erepro = erepro,
    # EwE original values for reference
    ewe_biomass = biomass,
    ewe_pb = pb_ratio,
    ewe_qb = qb_ratio,
    ewe_ee = ee
  ) %>%
  select(species, category, monitored, ewe_group_num, ewe_group_name,
         w_min, w_mat, w_inf, k_vb, h, h_uncapped, h_max, ks, n_exponent,
         z0, z0_original, beta, beta_original, sigma, sigma_original, erepro,
         ewe_biomass, ewe_pb, ewe_qb, ewe_ee,
         ref_notes, ref_notes_growth, feeding_notes)

# =============================================================================
# 10. CREATE INTERACTION MATRIX FROM DIET COMPOSITION
# =============================================================================

# Extract diet matrix from EwE data (predators in columns, prey in rows)
# Columns are predator groups 1-31 (skipping detritus imports)

# Get predator columns (groups 1-31)
diet_matrix_raw <- ewe_diet %>%
  slice(1:35) %>%  # 35 prey groups
  select(2:32)  # Columns for predators 1-31

# Convert to numeric matrix
diet_matrix <- as.matrix(diet_matrix_raw[, -1])
rownames(diet_matrix) <- ewe_diet$X2[1:35]

# Create interaction matrix for mizer species
# Rows = prey (resources + species), Columns = predators (species)

# For now, create species-to-species interaction matrix
# Will add resource interactions in Step 4

n_species <- nrow(species_params_final)
interaction_matrix <- matrix(0, nrow = n_species, ncol = n_species,
                             dimnames = list(species_params_final$species,
                                           species_params_final$species))

# Fill interaction matrix based on EwE diet
# For each predator species, get diet composition from EwE
for (i in 1:n_species) {
  predator_sp <- species_params_final$species[i]
  predator_ewe_num <- species_params_final$ewe_group_num[i]
  
  # Get diet of this predator from EwE
  predator_diet <- diet_matrix[, predator_ewe_num]
  
  # For each prey species, assign interaction strength
  for (j in 1:n_species) {
    prey_sp <- species_params_final$species[j]
    prey_ewe_num <- species_params_final$ewe_group_num[j]
    
    # Special case: Antarctic Krill combines two EwE groups
    if (prey_sp == "Antarctic Krill") {
      # Get diet proportion for both krill stanzas and sum
      krill_large_diet <- diet_matrix[26, predator_ewe_num]
      krill_small_diet <- diet_matrix[27, predator_ewe_num]
      interaction_matrix[j, i] <- krill_large_diet + krill_small_diet
    } else {
      # Direct mapping
      interaction_matrix[j, i] <- diet_matrix[prey_ewe_num, predator_ewe_num]
    }
  }
}

# Convert to data frame for easier handling
interaction_df <- as.data.frame(interaction_matrix) %>%
  rownames_to_column("prey") %>%
  pivot_longer(-prey, names_to = "predator", values_to = "interaction")

# =============================================================================
# 11. SAVE OUTPUTS
# =============================================================================

# Save species parameters
write_csv(species_params_final, 
          here("Models/AI-assisted/Attempt 1/species_parameters.csv"))

# Save interaction matrix (wide format)
write_csv(as.data.frame(interaction_matrix) %>% rownames_to_column("prey"),
          here("Models/AI-assisted/Attempt 1/interaction_matrix.csv"))

# Save interaction matrix (long format for easier analysis)
write_csv(interaction_df,
          here("Models/AI-assisted/Attempt 1/interaction_matrix_long.csv"))

# =============================================================================
# 12. SUMMARY AND DIAGNOSTICS
# =============================================================================

cat("\n=== SPECIES PARAMETERS SUMMARY ===\n\n")
cat("Total species:", nrow(species_params_final), "\n")
cat("Monitored species:", sum(species_params_final$monitored), "\n\n")

cat("Species by category:\n")
print(table(species_params_final$category))

cat("\n\nSize range summary (grams):\n")
summary_df <- species_params_final %>%
  group_by(category) %>%
  summarise(
    n = n(),
    min_w_min = min(w_min),
    max_w_max = max(w_inf),
    mean_w_mat = mean(w_mat)
  )
print(summary_df)

cat("\n\nParameter ranges:\n")
cat("K (von Bertalanffy):", range(species_params_final$k_vb), "\n")
cat("h (max consumption rate):", range(species_params_final$h), "\n")
cat("z0 (background mortality):", range(species_params_final$z0), "\n")
cat("beta (PPMR):", range(species_params_final$beta), "\n")
cat("sigma (feeding kernel width):", range(species_params_final$sigma), "\n")

cat("\n\nFiles saved to: Models/AI-assisted/Attempt 1/\n")
cat("- species_parameters.csv\n")
cat("- interaction_matrix.csv\n")
cat("- interaction_matrix_long.csv\n")
cat("\nParameter derivation complete!\n")
