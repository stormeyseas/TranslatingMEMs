# Documentation Helper Functions
# This script sets up paths and helper functions for Quarto documents
# in the Documentation directory

# Get project root directory BEFORE loading here
# When rendering Quarto docs, the working directory is Documentation/
# We need to go up one level to the project root
if (basename(getwd()) == "Documentation") {
  PROJECT_ROOT <- dirname(getwd())
  # Change to project root BEFORE loading here package
  # This ensures here() initializes with the correct root
  original_wd <- getwd()
  setwd(PROJECT_ROOT)
  library(here)
  setwd(original_wd)
} else {
  library(here)
  PROJECT_ROOT <- here::here()
}

# Define key paths relative to project root
MODEL_DIR <- file.path(PROJECT_ROOT, "Models", "AI-assisted", "Attempt 1")
INPUT_DIR <- file.path(PROJECT_ROOT, "Input_Files")
EWE_DIR <- file.path(INPUT_DIR, "EwE_files")
ISIMIP_CALIBRATION_DIR <- file.path(INPUT_DIR, "ISIMIP3a_calibration_data")
ISIMIP_CLIMATE_DIR <- file.path(INPUT_DIR, "ISIMIP3a_climate_forcing_inputs")
ISIMIP_FISHING_DIR <- file.path(INPUT_DIR, "ISIMIP3a_fishing_forcing_inputs")

# Helper function to source scripts from the model directory
source_model_script <- function(script_name) {
  script_path <- file.path(MODEL_DIR, script_name)
  if (!file.exists(script_path)) {
    stop("Script not found: ", script_path)
  }
  
  # Save current working directory
  original_wd <- getwd()
  
  # Change to project root before sourcing
  setwd(PROJECT_ROOT)
  
  # Unload and reload here package to reset its root detection
  # This ensures here() calls in the sourced script work correctly
  if ("here" %in% loadedNamespaces()) {
    unloadNamespace("here")
  }
  library(here)
  
  # Source the script and restore working directory
  tryCatch({
    source(script_path)
  }, finally = {
    setwd(original_wd)
    # Reload here one more time for subsequent chunks
    if ("here" %in% loadedNamespaces()) {
      unloadNamespace("here")
    }
    setwd(PROJECT_ROOT)
    library(here)
    setwd(original_wd)
  })
}

# Print confirmation (can be suppressed with suppressMessages())
message("Documentation paths initialized:")
message("  Project root: ", PROJECT_ROOT)
message("  Model directory: ", MODEL_DIR)
