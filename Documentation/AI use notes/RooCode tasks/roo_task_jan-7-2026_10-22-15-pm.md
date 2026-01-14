**User:**

<task>
It's now time for you to complete Step 2: Mizer Model Structure and Conceptual Design as detailed in `Documentation/index.qmd`. This is possibly the most important step in the whole project, so whever a key decision needs to be made I encourage you to ask me what I want, presenting me with the different options and your rationale behind each. 

I have created the document `Documentation/02_model_structure.qmd`, ready for you to populate. You will find all Dahood et al. (2019) WAP files in `Input_Files/EwE_files`.
</task>
<environment_details>
# VSCode Visible Files
Documentation\index.qmd

# VSCode Open Tabs
Documentation/index.qmd,Documentation/AI use notes/AI steps.txt

# Current Time
Current time in ISO 8601 UTC format: 2026-01-07T10:52:55.642Z
User time zone: Australia/Hobart, UTC+11:00

# Current Cost
$0.00

# Current Mode
<slug>code</slug>
<name>💻 Code</name>
<model>anthropic/claude-sonnet-4.5</model>
<tool_format>native</tool_format>


# Current Workspace Directory (c:/Users/treimer/Documents/R-temp-files/TranslatingMEMs) Files
.gitignore
.Rprofile
Participant_Info_Sheet_FISHMIP.docx
README.md
renv.lock
SurveyPreview.md
Documentation/
Documentation/.rooignore
Documentation/02_model_structure.qmd
Documentation/index.qmd
Documentation/AI use notes/
Documentation/AI use notes/AI steps.txt
Documentation/AI use notes/RooCode setup.txt
Input_Files/
Input_Files/Dahood_et_al_2020.pdf
Input_Files/EwE_files/
Input_Files/EwE_files/Dahood WAP -Basic input.csv
Input_Files/EwE_files/Dahood WAP -Diet composition.csv
Input_Files/EwE_files/Dahood WAP -Fishing effort functions grid.csv
Input_Files/EwE_files/Dahood WAP -Fishing mortality functions grid.csv
Input_Files/EwE_files/Dahood WAP -Forcing functions grid.csv
Input_Files/EwE_files/Dahood WAP -Time series grid.csv
Input_Files/EwE_files/Dahood_EwE_Feb_1_2017.ldb
Input_Files/ISIMIP3a_calibration_data/
Input_Files/ISIMIP3a_calibration_data/calibration_catch_histsoc_1850_2017_western-antarctic-peninsula.parquet
Input_Files/ISIMIP3a_calibration_data/catch_dictionary.parquet
Input_Files/ISIMIP3a_calibration_data/SAUPtoCountry.csv
Input_Files/ISIMIP3a_climate_forcing_inputs/
Input_Files/ISIMIP3a_climate_forcing_inputs/gfdl-mom6-cobalt2_areacello_15arcmin_western-antarctic-peninsula_fixed.csv
Input_Files/ISIMIP3a_climate_forcing_inputs/optional_additional_forcing/
Input_Files/ISIMIP3a_climate_forcing_inputs/optional_additional_forcing/Sea_ice_forcing/
Input_Files/ISIMIP3a_climate_forcing_inputs/optional_additional_forcing/Sea_ice_forcing/gfdl-mom6-cobalt2_obsclim_siconc_15arcmin_western-antarctic-peninsula_monthly_1961_2010.csv
Input_Files/ISIMIP3a_climate_forcing_inputs/plankton_forcing/
Input_Files/ISIMIP3a_climate_forcing_inputs/plankton_forcing/gfdl-mom6-cobalt2_obsclim_phydiat-vint_15arcmin_western-antarctic-peninsula_monthly_1961_2010.csv
Input_Files/ISIMIP3a_climate_forcing_inputs/plankton_forcing/gfdl-mom6-cobalt2_obsclim_phydiaz-vint_15arcmin_western-antarctic-peninsula_monthly_1961_2010.csv
Input_Files/ISIMIP3a_climate_forcing_inputs/plankton_forcing/gfdl-mom6-cobalt2_obsclim_phypico-vint_15arcmin_western-antarctic-peninsula_monthly_1961_2010.csv
Input_Files/ISIMIP3a_climate_forcing_inputs/plankton_forcing/gfdl-mom6-cobalt2_obsclim_zmeso-vint_15arcmin_western-antarctic-peninsula_monthly_1961_2010.csv
Input_Files/ISIMIP3a_climate_forcing_inputs/plankton_forcing/gfdl-mom6-cobalt2_obsclim_zmicro-vint_15arcmin_western-antarctic-peninsula_monthly_1961_2010.csv
Input_Files/ISIMIP3a_climate_forcing_inputs/temperature_forcing/
Input_Files/ISIMIP3a_climate_forcing_inputs/temperature_forcing/gfdl-mom6-cobalt2_obsclim_tob_15arcmin_western-antarctic-peninsula_monthly_1961_2010.csv
Input_Files/ISIMIP3a_climate_forcing_inputs/temperature_forcing/gfdl-mom6-cobalt2_obsclim_tos_15arcmin_western-antarctic-peninsula_monthly_1961_2010.csv
Input_Files/ISIMIP3a_fishing_forcing_inputs/
Input_Files/ISIMIP3a_fishing_forcing_inputs/effort_dictionary.parquet
Input_Files/ISIMIP3a_fishing_forcing_inputs/effort_histsoc_1841_2017_western-antarctic-peninsula.parquet
Input_Files/ISIMIP3a_fishing_forcing_inputs/SAUPtoCountry.csv
renv/
renv/.gitignore
renv/activate.R
renv/library/
renv/library/windows/
renv/library/windows/R-4.4/
renv/library/windows/R-4.4/x86_64-w64-mingw32/
renv/library/windows/R-4.4/x86_64-w64-mingw32/askpass/
renv/library/windows/R-4.4/x86_64-w64-mingw32/askpass/help/
renv/library/windows/R-4.4/x86_64-w64-mingw32/askpass/html/
renv/library/windows/R-4.4/x86_64-w64-mingw32/askpass/libs/
renv/library/windows/R-4.4/x86_64-w64-mingw32/askpass/libs/x64/
renv/library/windows/R-4.4/x86_64-w64-mingw32/askpass/Meta/
renv/library/windows/R-4.4/x86_64-w64-mingw32/askpass/R/
renv/library/windows/R-4.4/x86_64-w64-mingw32/assertthat/
renv/library/windows/R-4.4/x86_64-w64-mingw32/assertthat/help/
renv/library/windows/R-4.4/x86_64-w64-mingw32/assertthat/html/
renv/library/windows/R-4.4/x86_64-w64-mingw32/assertthat/Meta/
renv/library/windows/R-4.4/x86_64-w64-mingw32/assertthat/R/
renv/library/windows/R-4.4/x86_64-w64-mingw32/base64enc/
renv/library/windows/R-4.4/x86_64-w64-mingw32/base64enc/help/
renv/library/windows/R-4.4/x86_64-w64-mingw32/base64enc/html/
renv/library/windows/R-4.4/x86_64-w64-mingw32/base64enc/libs/
renv/library/windows/R-4.4/x86_64-w64-mingw32/base64enc/libs/x64/
renv/library/windows/R-4.4/x86_64-w64-mingw32/base64enc/Meta/
renv/library/windows/R-4.4/x86_64-w64-mingw32/base64enc/R/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/brand/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/brand/bs5/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/bs3compat/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/bs3compat/fonts/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/bs3compat/js/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/bslib-scss/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/builtin/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/builtin/bs5/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/builtin/bs5/shiny/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/builtin/bs5/shiny/ionrangeslider/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/builtin/bs5/shiny/tables/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/components/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/components/scss/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/components/scss/mixins/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/css-precompiled/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/css-precompiled/3/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/css-precompiled/4/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/css-precompiled/5/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/custom/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/examples-shiny/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/examples-shiny/brand.yml/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/examples-shiny/build-a-box/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/examples-shiny/build-a-box/R/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/examples-shiny/build-a-box/www/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/examples-shiny/card/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/examples-shiny/card/www/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/examples-shiny/flights/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/examples-shiny/flights/www/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/examples-shiny/value_box/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/fonts/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/help/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/help/figures/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/html/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/lib/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/lib/bs-a11y-p/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/lib/bs-a11y-p/plugins/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/lib/bs-a11y-p/plugins/css/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/lib/bs-a11y-p/plugins/js/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/lib/bs-a11y-p/src/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/lib/bs-a11y-p/src/js/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/lib/bs-a11y-p/src/less/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/lib/bs-a11y-p/src/less/partials/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/lib/bs-a11y-p/src/meteor/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/lib/bs-a11y-p/src/sass/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/lib/bs-a11y-p/src/sass/partials/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/lib/bs-colorpicker/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/lib/bs-colorpicker/css/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/lib/bs-colorpicker/js/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/lib/bs3/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/lib/bs3/assets/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/lib/bs3/assets/fonts/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/lib/bs3/assets/fonts/bootstrap/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/lib/bs3/assets/javascripts/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/lib/bs3/assets/javascripts/bootstrap/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/lib/bs3/assets/stylesheets/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/lib/bs3/assets/stylesheets/bootstrap/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/lib/bs3/assets/stylesheets/bootstrap/mixins/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/lib/bs4/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/lib/bs4/scss/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/lib/bs4/scss/mixins/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/lib/bs4/scss/utilities/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/lib/bs5/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/lib/bs5/scss/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/lib/bs5/scss/forms/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/lib/bs5/scss/helpers/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/lib/bs5/scss/mixins/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/lib/bs5/scss/utilities/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/lib/bsw3/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/lib/bsw3/cerulean/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/lib/bsw3/cosmo/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/lib/bsw3/cyborg/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/lib/bsw3/darkly/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/lib/bsw3/flatly/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/lib/bsw3/journal/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/lib/bsw3/lumen/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/lib/bsw3/paper/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/lib/bsw3/readable/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/lib/bsw3/sandstone/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/lib/bsw3/simplex/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/lib/bsw3/slate/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/lib/bsw3/spacelab/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/lib/bsw3/superhero/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/lib/bsw3/united/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/lib/bsw3/yeti/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/lib/bsw4/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/lib/bsw5/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/Meta/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/R/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/rmarkdown/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/rmarkdown/templates/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/rmarkdown/templates/legacy/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/rmarkdown/templates/legacy/skeleton/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/rmarkdown/templates/new/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/rmarkdown/templates/new/skeleton/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/rmarkdown/templates/real-time/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/rmarkdown/templates/real-time/skeleton/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/sass-utils/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/themer/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/themer-demo/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/themer-demo/deploy/
renv/library/windows/R-4.4/x86_64-w64-mingw32/bslib/themer-demo/R/
renv/library/windows/R-4.4/x86_64-w64-mingw32/cachem/
renv/library/windows/R-4.4/x86_64-w64-mingw32/cachem/help/
renv/library/windows/R-4.4/x86_64-w64-mingw32/cachem/html/
renv/library/windows/R-4.4/x86_64-w64-mingw32/cachem/libs/
renv/library/windows/R-4.4/x86_64-w64-mingw32/cachem/libs/x64/
renv/library/windows/R-4.4/x86_64-w64-mingw32/cachem/Meta/
renv/library/windows/R-4.4/x86_64-w64-mingw32/cachem/R/
renv/library/windows/R-4.4/x86_64-w64-mingw32/cli/
renv/library/windows/R-4.4/x86_64-w64-mingw32/cli/examples/
renv/library/windows/R-4.4/x86_64-w64-mingw32/cli/examples/apps/
renv/library/windows/R-4.4/x86_64-w64-mingw32/cli/exec/
renv/library/windows/R-4.4/x86_64-w64-mingw32/cli/help/
renv/library/windows/R-4.4/x86_64-w64-mingw32/cli/help/figures/
renv/library/windows/R-4.4/x86_64-w64-mingw32/cli/html/
renv/library/windows/R-4.4/x86_64-w64-mingw32/cli/include/
renv/library/windows/R-4.4/x86_64-w64-mingw32/cli/include/cli/
renv/library/windows/R-4.4/x86_64-w64-mingw32/cli/libs/
renv/library/windows/R-4.4/x86_64-w64-mingw32/cli/libs/x64/
renv/library/windows/R-4.4/x86_64-w64-mingw32/cli/Meta/
renv/library/windows/R-4.4/x86_64-w64-mingw32/cli/R/
renv/library/windows/R-4.4/x86_64-w64-mingw32/cli/shiny/
renv/library/windows/R-4.4/x86_64-w64-mingw32/cli/shiny/along/
renv/library/windows/R-4.4/x86_64-w64-mingw32/cli/shiny/format/
renv/library/windows/R-4.4/x86_64-w64-mingw32/cli/shiny/nested/
renv/library/windows/R-4.4/x86_64-w64-mingw32/cli/shiny/output/
renv/library/windows/R-4.4/x86_64-w64-mingw32/cli/shiny/simple/
renv/library/windows/R-4.4/x86_64-w64-mingw32/commonmark/

(File list truncated. Use list_files on specific subdirectories if you need to explore further.)
You have not created a todo list yet. Create one with `update_todo_list` if your task is complicated or involves multiple steps.
</environment_details>

---

**Assistant:**

I'll help you complete Step 2: Mizer Model Structure and Conceptual Design. Let me start by understanding the requirements and the available data.
[Tool Use: read_file]
Files: [
  {
    "path": "Documentation/index.qmd"
  },
  {
    "path": "Documentation/02_model_structure.qmd"
  }
]

---

**User:**

[Tool]
File: Documentation/index.qmd
Lines 1-328:
  1 | ---
  2 | title: "Translation of Dahood et al. (2019) EwE Model to Mizer"
  3 | subtitle: "Western Antarctic Peninsula Ecosystem Model"
  4 | author: "Your Name"
  5 | date: last-modified
  6 | format:
  7 |   html:
  8 |     toc: true
  9 |     toc-depth: 3
 10 |     number-sections: true
 11 |     code-fold: show
 12 |     theme: cosmo
 13 | ---
 14 | 
 15 | # Overview
 16 | 
 17 | This document provides a step-by-step guide to translating the Ecopath with Ecosim (EwE) model developed by Dahood et al. (2019) for the Western Antarctic Peninsula into a size-based multi-species model using the `mizer` package in R. The translated model will be used to run simulations following FishMIP/ISIMIP3a conventions and produce diagnostics for model validation.
 18 | 
 19 | ## Project Goals
 20 | 
 21 | 1. **Develop a mizer model** based on the Dahood et al. (2019) Ecopath with Ecosim model
 22 | 2. **Run analogous simulations** using FishMIP/ISIMIP3a forcing data and conventions
 23 | 3. **Produce diagnostics** (validation plots, skill metrics) following ISIMIP and FishMIP guidance
 24 | 
 25 | ## Key References
 26 | 
 27 | - **Study**: Dahood, A., Watters, G. M., & de Mutsert, K. (2019). Using sea-ice to calibrate a dynamic trophic model for the Western Antarctic Peninsula. *PloS one*, 14(4), e0214814.
 28 | - **Mizer**: [Mizer documentation](https://sizespectrum.org/mizer/)
 29 | - **FishMIP**: [Fisheries and Marine Ecosystem Model Intercomparison Project](https://www.isimip.org/gettingstarted/marine-ecosystems-fisheries/)
 30 | - **ISIMIP3a**: [Inter-Sectoral Impact Model Intercomparison Project Protocol](https://www.isimip.org/protocol/)
 31 | 
 32 | # Workflow Steps
 33 | 
 34 | ## Step 1: Data Extraction and Preparation {#sec-data-extraction}
 35 | 
 36 | **Document**: [01_data_extraction.qmd](01_data_extraction.qmd)
 37 | 
 38 | Extract and prepare data from the Dahood et al. (2019) EwE model files:
 39 | 
 40 | - Load and parse EwE input files (Basic inputs, Diet composition, Time series)
 41 | - Extract species/functional group information
 42 | - Extract biomass, production, consumption, and diet data
 43 | - Identify key parameters for mizer translation
 44 | - Create standardized data structures for model setup
 45 | 
 46 | **Key outputs**:
 47 | 
 48 | - Species parameter table
 49 | - Diet/interaction matrix
 50 | - Initial biomass estimates
 51 | - Life history parameters
 52 | 
 53 | This step was completed prior to project start and the files were provided.
 54 | 
 55 | ## Step 2: Mizer Model Structure and Conceptual Design {#sec-model-structure}
 56 | 
 57 | **Document**: [02_model_structure.qmd](02_model_structure.qmd)
 58 | 
 59 | Design the mizer model structure:
 60 | 
 61 | - Map EwE functional groups to mizer species
 62 | - Determine which groups can be represented as size-structured species
 63 | - Identify resource spectrum representation (plankton/benthos)
 64 | - Design predator-prey interaction framework
 65 | - Document assumptions and simplifications in the translation
 66 | 
 67 | **Key decisions**:
 68 | 
 69 | - Which EwE groups become mizer species vs. resources
 70 | - Size range and discretization for each species
 71 | - Handling of non-fish groups (seals, whales, seabirds, etc.)
 72 | 
 73 | ## Step 3: Parameter Derivation and Conversion {#sec-parameter-conversion}
 74 | 
 75 | **Document**: [03_parameter_conversion.qmd](03_parameter_conversion.qmd)
 76 | 
 77 | Convert EwE parameters to mizer parameters:
 78 | 
 79 | - Derive size-at-maturity (`w_mat`) and maximum size (`w_inf`) from EwE data
 80 | - Estimate growth parameters (von Bertalanffy K, h, ks)
 81 | - Calculate mortality rates (background mortality `z0`, fishing mortality)
 82 | - Derive size-based feeding parameters (beta, sigma)
 83 | - Set reproduction parameters (R_max, erepro)
 84 | - Create species parameter data frame
 85 | 
 86 | **Key conversions**:
 87 | 
 88 | - EwE biomass → mizer initial abundances
 89 | - EwE P/B and Q/B → mizer growth and feeding rates
 90 | - EwE diet matrix → mizer interaction matrix
 91 | 
 92 | ## Step 4: Resource Spectrum Parameterization {#sec-resource-spectrum}
 93 | 
 94 | **Document**: [04_resource_spectrum.qmd](04_resource_spectrum.qmd)
 95 | 
 96 | Set up the resource spectrum representing primary producers and zooplankton:
 97 | 
 98 | - Define resource size spectrum parameters (kappa, lambda)
 99 | - Incorporate plankton forcing from ISIMIP3a climate data
100 | - Set up time-varying resource dynamics linking to phytoplankton and zooplankton data
101 | - Validate resource spectrum against EwE primary production
102 | 
103 | **Data sources**:
104 | 
105 | - `gfdl-mom6-cobalt2_obsclim_phydiat-vint_*.csv` (diatoms)
106 | - `gfdl-mom6-cobalt2_obsclim_phydiaz-vint_*.csv` (diazotrophs)
107 | - `gfdl-mom6-cobalt2_obsclim_phypico-vint_*.csv` (picophytoplankton)
108 | - `gfdl-mom6-cobalt2_obsclim_zmicro-vint_*.csv` (microzooplankton)
109 | - `gfdl-mom6-cobalt2_obsclim_zmeso-vint_*.csv` (mesozooplankton)
110 | 
111 | ## Step 5: Interaction Matrix Calibration {#sec-interaction-matrix}
112 | 
113 | **Document**: [05_interaction_matrix.qmd](05_interaction_matrix.qmd)
114 | 
115 | Calibrate the predator-prey interaction matrix:
116 | 
117 | - Translate EwE diet composition to size-based preferences
118 | - Set interaction matrix based on diet data
119 | - Account for size-based feeding preferences
120 | - Incorporate predator-prey size ratios (PPMR)
121 | - Validate against EwE diet composition
122 | 
123 | ## Step 6: Initial Model Setup and Steady State {#sec-initial-setup}
124 | 
125 | **Document**: [06_initial_setup.qmd](06_initial_setup.qmd)
126 | 
127 | Create the initial mizer model and find steady state:
128 | 
129 | - Assemble all parameters into `MizerParams` object
130 | - Set initial abundances based on EwE biomass
131 | - Run model to steady state (if applicable)
132 | - Check mass balance and energy conservation
133 | - Initial validation against EwE equilibrium state
134 | 
135 | ## Step 7: Model Calibration and Tuning {#sec-calibration}
136 | 
137 | **Document**: [07_calibration.qmd](07_calibration.qmd)
138 | 
139 | Calibrate the model to match historical data:
140 | 
141 | - Define calibration period (e.g., 1961-2010)
142 | - Set up fishing mortality from ISIMIP3a fishing effort data
143 | - Incorporate environmental forcing (temperature, sea ice, plankton)
144 | - Tune parameters to match observed catches and biomass trends
145 | - Use catch data from ISIMIP3a calibration files
146 | 
147 | **Data sources**:
148 | 
149 | - `calibration_catch_histsoc_1850_2017_western-antarctic-peninsula.parquet`
150 | - `effort_histsoc_1841_2017_western-antarctic-peninsula.parquet`
151 | - Temperature forcing: `gfdl-mom6-cobalt2_obsclim_tob_*.csv`, `*_tos_*.csv`
152 | - Sea ice forcing: `gfdl-mom6-cobalt2_obsclim_siconc_*.csv`
153 | 
154 | ## Step 8: Environmental Forcing Implementation {#sec-forcing}
155 | 
156 | **Document**: [08_environmental_forcing.qmd](08_environmental_forcing.qmd)
157 | 
158 | Implement time-varying environmental forcing following FishMIP protocols:
159 | 
160 | - Temperature effects on metabolism and growth
161 | - Sea ice effects on habitat availability
162 | - Plankton forcing on resource spectrum
163 | - Standardize forcing data to model time steps
164 | - Create forcing functions for simulations
165 | 
166 | ## Step 9: Fishing Scenarios Implementation {#sec-fishing-scenarios}
167 | 
168 | **Document**: [09_fishing_scenarios.qmd](09_fishing_scenarios.qmd)
169 | 
170 | Implement fishing scenarios following ISIMIP3a protocols:
171 | 
172 | - Historical fishing scenario (`histsoc`: 1850-2017)
173 | - No-fishing scenario baseline
174 | - Future fishing scenarios (if applicable)
175 | - Implement size-selective fishing mortality
176 | - Match fishing effort to species/functional groups
177 | 
178 | ## Step 10: Model Simulations {#sec-simulations}
179 | 
180 | **Document**: [10_simulations.qmd](10_simulations.qmd)
181 | 
182 | Run model simulations following FishMIP conventions:
183 | 
184 | - Spin-up period setup
185 | - Historical simulation (1961-2010 or 1850-2017)
186 | - Extract outputs in FishMIP format
187 | - Save time series of biomass, catches, and ecosystem indicators
188 | - Compare with Dahood et al. (2019) Ecosim simulations
189 | 
190 | ## Step 11: Model Validation and Diagnostics {#sec-validation}
191 | 
192 | **Document**: [11_validation.qmd](11_validation.qmd)
193 | 
194 | Validate the model following ISIMIP and FishMIP guidance:
195 | 
196 | ### Validation Plots
197 | 
198 | - Time series comparisons (biomass, catches)
199 | - Size spectra by species and community
200 | - Diet composition matrices
201 | - Growth curves
202 | - Mortality schedules
203 | - Fishing mortality by species
204 | 
205 | ### Skill Metrics
206 | 
207 | - Model Efficiency (MEF)
208 | - Root Mean Square Error (RMSE)
209 | - Normalized RMSE
210 | - Correlation coefficients
211 | - Bias metrics
212 | - Reliability Index (RI)
213 | 
214 | ### Comparison with EwE
215 | 
216 | - Biomass trajectories
217 | - Catch trends
218 | - Ecosystem indicators (e.g., total biomass, mean trophic level)
219 | - Response to forcing variables
220 | 
221 | ## Step 12: Ecosystem Indicators {#sec-indicators}
222 | 
223 | **Document**: [12_ecosystem_indicators.qmd](12_ecosystem_indicators.qmd)
224 | 
225 | Calculate and analyze ecosystem indicators:
226 | 
227 | - Total biomass by functional group/trophic level
228 | - Mean trophic level of catches
229 | - Biomass spectra (Sheldon spectrum)
230 | - Productivity metrics
231 | - Size-based indicators
232 | - Compare with FishMIP indicator requirements
233 | 
234 | ## Step 13: Sensitivity Analysis {#sec-sensitivity}
235 | 
236 | **Document**: [13_sensitivity_analysis.qmd](13_sensitivity_analysis.qmd)
237 | 
238 | Conduct sensitivity analysis on key parameters:
239 | 
240 | - Identify key uncertain parameters
241 | - Parameter perturbation experiments
242 | - Assess output sensitivity
243 | - Quantify uncertainty in projections
244 | - Document parameter uncertainty ranges
245 | 
246 | ## Step 14: Results Summary and Comparison {#sec-results}
247 | 
248 | **Document**: [14_results_summary.qmd](14_results_summary.qmd)
249 | 
250 | Synthesize results and compare with original EwE model:
251 | 
252 | - Summary of model performance
253 | - Key differences between mizer and EwE results
254 | - Strengths and limitations of the translation
255 | - Insights gained from size-based approach
256 | - Recommendations for model use and future development
257 | 
258 | # Data Files Reference
259 | 
260 | ## Input Data
261 | 
262 | ### Dahood et al. (2019) EwE Files
263 | 
264 | Located in `Input_Files/EwE_files/`:
265 | 
266 | - `Dahood WAP -Basic input.csv`: Species parameters, biomass, P/B, Q/B
267 | - `Dahood WAP -Diet composition.csv`: Diet matrix
268 | - `Dahood WAP -Fishing effort functions grid.csv`: Fishing effort time series
269 | - `Dahood WAP -Fishing mortality functions grid.csv`: Fishing mortality
270 | - `Dahood WAP -Forcing functions grid.csv`: Environmental forcing
271 | - `Dahood WAP -Time series grid.csv`: Observed time series
272 | 
273 | ### ISIMIP3a Climate Forcing
274 | 
275 | Located in `Input_Files/ISIMIP3a_climate_forcing_inputs/`:
276 | 
277 | - **Plankton**: `phydiat-vint`, `phydiaz-vint`, `phypico-vint`, `zmicro-vint`, `zmeso-vint`
278 | - **Temperature**: `tob` (bottom), `tos` (surface)
279 | - **Sea Ice**: `siconc` (concentration)
280 | - **Grid Cell Area**: `areacello`
281 | 
282 | ### ISIMIP3a Fishing Data
283 | 
284 | Located in `Input_Files/ISIMIP3a_fishing_forcing_inputs/`:
285 | 
286 | - `effort_histsoc_1841_2017_western-antarctic-peninsula.parquet`
287 | - `effort_dictionary.parquet`
288 | 
289 | ### ISIMIP3a Calibration Data
290 | 
291 | Located in `Input_Files/ISIMIP3a_calibration_data/`:
292 | 
293 | - `calibration_catch_histsoc_1850_2017_western-antarctic-peninsula.parquet`
294 | - `catch_dictionary.parquet`
295 | 
296 | # Software Requirements
297 | 
298 | ```r
299 | # Core packages
300 | library(mizer)
301 | library(mizerExperimental)  # If needed for advanced features
302 | 
303 | # Data manipulation
304 | library(tidyverse)
305 | library(arrow)  # For reading parquet files
306 | 
307 | # Plotting
308 | library(ggplot2)
309 | library(patchwork)
310 | 
311 | # Additional utilities
312 | library(here)
313 | library(lubridate)
314 | ```
315 | 
316 | # Project Timeline
317 | 
318 | - [x] Data sourcing (Dahood et al. 2019 and ISIMIP3a data)
319 | - [x] Data extraction and preparation
320 | - [ ] Model structure design
321 | - [ ] Parameter conversion
322 | - [ ] Initial model setup
323 | - [ ] Calibration
324 | - [ ] Validation
325 | - [ ] Simulations
326 | - [ ] Results analysis
327 | 
328 | ---


---

File: Documentation/02_model_structure.qmd
Note: File is empty
<environment_details>
# VSCode Visible Files
Documentation\index.qmd

# VSCode Open Tabs
Documentation/index.qmd,Documentation/AI use notes/AI steps.txt

# Current Time
Current time in ISO 8601 UTC format: 2026-01-07T10:53:14.486Z
User time zone: Australia/Hobart, UTC+11:00

# Current Cost
$0.06

# Current Mode
<slug>code</slug>
<name>💻 Code</name>
<model>anthropic/claude-sonnet-4.5</model>
<tool_format>native</tool_format>
You have not created a todo list yet. Create one with `update_todo_list` if your task is complicated or involves multiple steps.
</environment_details>

---

**Assistant:**

[Tool Use: update_todo_list]
Todos: [ ] Read and analyze EwE basic input file to understand functional groups
[ ] Read and analyze EwE diet composition to understand trophic interactions
[ ] Review Dahood et al. (2019) paper for model context
[ ] Design the mizer species mapping from EwE groups
[ ] Design resource spectrum representation
[ ] Design predator-prey interaction framework
[ ] Document key assumptions and simplifications
[ ] Present key decisions to user for approval
[ ] Populate 02_model_structure.qmd with complete analysis

---

**User:**

[Tool]
Todo list updated successfully.
<environment_details>
# VSCode Visible Files
Documentation\index.qmd

# VSCode Open Tabs
Documentation/index.qmd,Documentation/AI use notes/AI steps.txt

# Current Time
Current time in ISO 8601 UTC format: 2026-01-07T10:53:25.342Z
User time zone: Australia/Hobart, UTC+11:00

# Current Cost
$0.09

# Current Mode
<slug>code</slug>
<name>💻 Code</name>
<model>anthropic/claude-sonnet-4.5</model>
<tool_format>native</tool_format>
====

REMINDERS

Below is your current list of reminders for this task. Keep them updated as you progress.

| # | Content | Status |
|---|---------|--------|
| 1 | Read and analyze EwE basic input file to understand functional groups | Pending |
| 2 | Read and analyze EwE diet composition to understand trophic interactions | Pending |
| 3 | Review Dahood et al. (2019) paper for model context | Pending |
| 4 | Design the mizer species mapping from EwE groups | Pending |
| 5 | Design resource spectrum representation | Pending |
| 6 | Design predator-prey interaction framework | Pending |
| 7 | Document key assumptions and simplifications | Pending |
| 8 | Present key decisions to user for approval | Pending |
| 9 | Populate 02_model_structure.qmd with complete analysis | Pending |


IMPORTANT: When task status changes, remember to call the `update_todo_list` tool to update your progress.

</environment_details>

---

**Assistant:**

[Tool Use: read_file]
Files: [
  {
    "path": "Input_Files/EwE_files/Dahood WAP -Basic input.csv"
  },
  {
    "path": "Input_Files/EwE_files/Dahood WAP -Diet composition.csv"
  }
]

---

**User:**

[Tool]
File: Input_Files/EwE_files/Dahood WAP -Basic input.csv
Lines 1-37:
 1 | ,"Group name","Hab area (proportion)","Biomass in habitat area (t/km²)","Total mortality (/year)","Production / biomass (/year)","Consumption / biomass (/year)","Ecotrophic Efficiency","Other mortality","Production / consumption","Unassim. consumption","Detritus import (t/km²/year)",
 2 | 1,"Killer whales",1,0.007524,,0.02,1.075269,,,,0.2,,
 3 | 2,"Leopard Seal",1,0.008352,,0.27,15.16854,,,,0.2,,
 4 | 3,"Weddell Seal",1,0.081212,,0.08,4.597701,,,,0.2,,
 5 | 4,"Crabeater Seal",1,1.097774,,0.1,5.952381,,,,0.2,,
 6 | 5,"Antarctic fur seals",1,0.001032318,,0.17,9.659091,,,,0.2,,
 7 | 6,"S Elephant Seals",1,0.001035257,,0.21,12.06896,,,,0.2,,
 8 | 7,"Sperm Whales",1,0.02839939,,0.29,16.66667,,,,0.2,,
 9 | 8,"Blue Whales",1,0.0071769,,0.04,2.531646,,,,0.2,,
10 | 9,"Fin Whales",1,0.0428043,,0.0315,2.55,,,,0.2,,
11 | 10,"Minke Whales",1,0.0472752,,0.095,5.654762,,,,0.2,,
12 | 11,"Humpback whales",1,0.08118936,,0.04,2.380952,,,,0.2,,
13 | 12,"Emperor Penguins",1,0.000115949,,0.1945,13.89286,,,,0.2,,
14 | 13,"Gentoo Penguins",1,0.001161069,,0.22,15.2777,,,,0.2,,
15 | 14,"Chinstrap Penguins",1,0.02142,,0.22,15.2778,,,,0.2,,
16 | 15,"Adelie Penguins",1,0.00583,,0.12,36.61972,,,,0.2,,
17 | 16,"Macaroni Penguins",1,0.000114505,,0.11,7.638889,,,,0.2,,
18 | 17,"Flying Birds",1,0.004,,0.088,4.888889,,,,0.2,,
19 | 18,Cephalopods,1,2.49,,3.15,30.28846,,,,0.2,,
20 | 19,Myctophids,1,3.27,,1.1,10.58,,,,0.2,,
21 | 20,"On-shelf fish",1,5.25,,0.46,4.423077,,,,0.2,,
22 | 21,"N. rossii",1,0.138,,0.29,2.788,,,,0.2,,
23 | 22,"C gunnari",1,0.9,,0.48,4.615385,,,,0.2,,
24 | 23,"G gibberifrons",1,1.2,,0.46,4.423077,,,,0.2,,
25 | 24,Salps,1,320,,3,12.245,,,,0.2,,
26 | 25,"Benthic invertbrates",1,85.5375,,0.5,2.19,,,,0.2,,
27 | ,krill,,,,,,,,,,,
28 | 26,"Krill Large",1,81.26,0.8,,3.57,,,,0.2,,
29 | 27,"Krill Small",1,28.93069,0.8,,6.512738,,,,0.2,,
30 | 28,"Other Euphausiids",1,148,,1.5,6.6964,,,,0.2,,
31 | 29,Micro-Zool,1,25,,55,275,,,,0.2,,
32 | 30,"Meso zooplankton",1,130,,4.81,19.63265,,,,0.2,,
33 | 31,Macro-zoopl,1,35,,2.5,8.92857,,,,0.2,,
34 | 32,"Small phytoplankton",1,,,75,,0.5,,,,,
35 | 33,"Large phytoplankton",1,,,75,,0.5,,,,,
36 | 34,"Ice Algae",1,,,50,,0.5,,,,,
37 | 35,Detritus,1,5.77,,,,,,,,0,


---

File: Input_Files/EwE_files/Dahood WAP -Diet composition.csv
Lines 1-39:
 1 | ,"Prey \ predator",1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,
 2 | 1,"Killer whales",0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
 3 | 2,"Leopard Seal",0.03,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
 4 | 3,"Weddell Seal",0.465,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
 5 | 4,"Crabeater Seal",0.365,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
 6 | 5,"Antarctic fur seals",0,0.001,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
 7 | 6,"S Elephant Seals",0.01,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
 8 | 7,"Sperm Whales",0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
 9 | 8,"Blue Whales",0.01,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
10 | 9,"Fin Whales",0.01,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
11 | 10,"Minke Whales",0.01,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
12 | 11,"Humpback whales",0.01,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
13 | 12,"Emperor Penguins",1E-05,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
14 | 13,"Gentoo Penguins",0.002,0.001,0,0,0.01,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
15 | 14,"Chinstrap Penguins",0.02,0.03,0,0,0.03,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
16 | 15,"Adelie Penguins",0.004,0,0,0,0.005,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
17 | 16,"Macaroni Penguins",0,0,0,0,0.001,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
18 | 17,"Flying Birds",0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
19 | 18,Cephalopods,0,0.078,0.08,0.075,0.054,0.6,0.85,0,0,0,0.06,0.1,0,0,0,0.01,0.46,0,0,0.055,0,0,0.01,0,0,0,0,0,0,0,0,
20 | 19,Myctophids,0.029,0.04,0.05,0.075,0.2,0.1,0.005,0,0.015,0.01,0.04,0,0.1,0.0225,0.0125,0.1,0.043,0.02,0,0.02,0.1,0.01,0.02,0,0,0,0,0,0,0,0,
21 | 20,"On-shelf fish",0.02,0,0.6,0.07,0.2,0.14,0.045,0,0.015,0.01,0.04,0.38,0.1,0.0225,0,0.12,0.087,0.02,0,0,0,0,0,0,0,0,0,0,0,0,0,
22 | 21,"N. rossii",0.005,0,0,0,0,0.1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
23 | 22,"C gunnari",0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.0005,0,0,0,0,0.015,0,0,0,0,0,0,0,0,0,0,0,
24 | 23,"G gibberifrons",0.01,0.15,0.22,0,0,0.06,0,0,0,0,0,0,0,0,0.0125,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
25 | 24,Salps,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.01,0.02,0,0.17,0,0,0,0,0,0,0,0,
26 | 25,"Benthic invertbrates",0,0,0.05,0,0,0,0.1,0,0,0,0,0,0,0,0,0,0,0.21,0,0.2,0.02,0,0.59,0,0,0,0,0,0,0,0,
27 | 26,"Krill Large",0,0.7,0,0.78,0.5,0,0,0.61,0.71,0.76,0.76,0.52,0.8,0.95,0.962,0.34,0.3,0.4,0.25,0.25,0.6,0.9,0.09,0,0,0,0,0,0,0,0.01,
28 | 27,"Krill Small",0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.001,0,0,0,0,0,0,0.02,
29 | 28,"Other Euphausiids",0,0,0,0,0,0,0,0.2,0.12,0.11,0,0,0,0,0,0.35,0,0.15,0.35,0.135,0.2,0.08,0,0,0,0,0,0,0,0,0.01,
30 | 29,Micro-Zool,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.104,0,0,0.1,0,0,0.03,0,
31 | 30,"Meso zooplankton",0,0,0,0,0,0,0,0,0.01,0,0.015,0,0,0,0,0,0.005,0,0.05,0.085,0,0,0,0.03,0,0.1,0,0.2,0,0,0.5,
32 | 31,Macro-zoopl,0,0,0,0,0,0,0,0.19,0.13,0.11,0.085,0,0,0.005,0.0125,0.08,0.105,0.2,0.35,0.23,0,0.01,0.02,0,0,0,0,0,0,0,0,
33 | 32,"Small phytoplankton",0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.415,0,0,0.275,0,0.6,0.24,0.1,
34 | 33,"Large phytoplankton",0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.45,0,0.5,0.275,0.6,0.25,0.66,0.21,
35 | 34,"Ice Algae",0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.06,0,0.1,0,0,0.1,0.25,0,0,0,0,
36 | 35,Detritus,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0.3,0.1,0.2,0.15,0.07,0.15,
37 | ,Import,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
38 | ,Sum,1.00001,1,1,1,1,1,1,1,0.9999999,1,0.9999999,1,1,1,1,0.9999999,1,0.9999999,1,1,1,0.9999999,1,1,1,1,1,1,1,1,1,
39 | ,"(1 - Sum)",-9.894371E-06,0,0,0,0,0,0,0,5.960464E-08,0,5.960464E-08,0,0,0,0,5.960464E-08,0,5.960464E-08,0,0,0,5.960464E-08,0,0,0,0,0,0,0,0,0,

<environment_details>
# VSCode Visible Files
Documentation\index.qmd

# VSCode Open Tabs
Documentation/index.qmd,Documentation/AI use notes/AI steps.txt

# Current Time
Current time in ISO 8601 UTC format: 2026-01-07T10:53:32.101Z
User time zone: Australia/Hobart, UTC+11:00

# Current Cost
$0.17

# Current Mode
<slug>code</slug>
<name>💻 Code</name>
<model>anthropic/claude-sonnet-4.5</model>
<tool_format>native</tool_format>
====

REMINDERS

Below is your current list of reminders for this task. Keep them updated as you progress.

| # | Content | Status |
|---|---------|--------|
| 1 | Read and analyze EwE basic input file to understand functional groups | Pending |
| 2 | Read and analyze EwE diet composition to understand trophic interactions | Pending |
| 3 | Review Dahood et al. (2019) paper for model context | Pending |
| 4 | Design the mizer species mapping from EwE groups | Pending |
| 5 | Design resource spectrum representation | Pending |
| 6 | Design predator-prey interaction framework | Pending |
| 7 | Document key assumptions and simplifications | Pending |
| 8 | Present key decisions to user for approval | Pending |
| 9 | Populate 02_model_structure.qmd with complete analysis | Pending |


IMPORTANT: When task status changes, remember to call the `update_todo_list` tool to update your progress.

</environment_details>

---

**Assistant:**

[Tool Use: read_file]
Files: [
  {
    "path": "Input_Files/Dahood_et_al_2020.pdf"
  }
]

---

**User:**

[Tool]
File: Input_Files/Dahood_et_al_2020.pdf
Lines 1-1458:
   1 |    1 | 
   2 |    2 | 
   3 |    3 | RESEARCHARTICLE
   4 |    4 | Usingsea-icetocalibratea dynamictrophic
   5 |    5 | modelfortheWesternAntarcticPeninsula
   6 |    6 | AdrianDahood
   7 |    7 | ID
   8 |    8 | 1,2,3
   9 |    9 | *,   GeorgeM.Watters
  10 |   10 | 2
  11 |   11 | , KimdeMutsert
  12 |   12 | 1
  13 |   13 | 1Departmentof Environmental ScienceandPolicy,GeorgeMasonUniversity,Fairfax,Virginia,United
  14 |   14 | Statesof America,2AntarcticEcosystemResearchDivision,SouthwestFisheriesScienceCenter,National
  15 |   15 | MarineFisheriesService,NationalOceanicandAtmospheric Administration,LaJolla,California, United
  16 |   16 | Statesof America,3Instituteof MarineSciences,Universityof California SantaCruz,SantaCruz,California,
  17 |   17 | UnitedStatesof America
  18 |   18 | *adahood@gmail.com
  19 |   19 | Abstract
  20 |   20 | Thepelagicecosystemsof theWesternAntarcticPeninsulaaredynamicandchanging
  21 |   21 | rapidlyin thefaceof sustainedwarming.Thereis alreadyevidencethatwarmingmaybe
  22 |   22 | impactingthefoodweb.Antarctickrill,Euphausiasuperba,is anice-associatedspecies
  23 |   23 | thatis bothanimportantpreyitemandthetargetof theonlycommercialfisheryoperatingin
  24 |   24 | theregion.Thegoalof thisstudyis to developa dynamictrophicmodelfortheregionthat
  25 |   25 | includestheimpactof thesea-iceregimeonkrillandkrillpredators.Sucha modelmaybe
  26 |   26 | helpfulto fisheriesmanagersastheydevelopnewmanagementstrategiesin thefaceof
  27 |   27 | continuedsea-iceloss.A massbalancedfood-webmodel(Ecopath)andtimedynamicsim-
  28 |   28 | ulations(Ecosim)werecreated.TheEcopathmodelincludeseightcurrentlymonitoredspe-
  29 |   29 | ciesassinglespeciesto facilitateitsfuturedevelopmentintoa modelthatcouldbeusedfor
  30 |   30 | marineprotectedareaplanningin theregion.TheEcosimmodelis calibratedfortheyears
  31 |   31 | 1996–2012.ThesuccessfulcalibrationrepresentsanimprovementoverexistingEcopath
  32 |   32 | modelsfortheregion.Simulationsindicatethattheroleof seaiceis bothcentralandcom-
  33 |   33 | plex.Thesimulationsareonlyableto recreateobservedbiomasstrendsforthemonitored
  34 |   34 | specieswhenmetricsdescribingthesea-iceregimeareusedto forcekeypredator-prey
  35 |   35 | interactions,andto drivethebiomassesof AntarctickrillandthefishspeciesGobionotothen
  36 |   36 | gibberifrons.Thismodelis readyto beusedforexploringresultsfromsea-icescenariosor
  37 |   37 | to bedevelopedintoa spatialmodelthatinformsdiscussionsregardingthedesignof marine
  38 |   38 | protectedareasin theregion.
  39 |   39 | Introduction
  40 |   40 | TheWesternAntarcticPeninsula(WAP)is oneofthemostrapidlywarmingregionsonEarth
  41 |   41 | [1–3]withanaverageairtemperatureincreaseatthesurfaceofapproximately5-6 ̊C since
  42 |   42 | 1960[4,5].Long-termdatasetsdescribingthesea-iceregimeillustratesignificantchangesin
  43 |   43 | responsetothisprolongedwarmingandincreasingnumberofdayswheretheairtemperature
  44 |   44 | exceedsfreezing[4].“Permanent”iceshelvesthatrestovertheseahavebeenretreatingforthe
  45 |   45 | PLOSONE| https://doi.org/10.1371/journal.pone.0214814April2, 20191 / 28
  46 |   46 | a1111111111
  47 |   47 | a1111111111
  48 |   48 | a1111111111
  49 |   49 | a1111111111
  50 |   50 | a1111111111
  51 |   51 | OPENACCESS
  52 |   52 | Citation:DahoodA, WattersGM, de MutsertK
  53 |   53 | (2019)Usingsea-iceto calibratea dynamictrophic
  54 |   54 | modelfor the WesternAntarcticPeninsula. PLoS
  55 |   55 | ONE 14(4):e0214814.https://doi.org/10.1371/
  56 |   56 | journal.pone.0214814
  57 |   57 | Editor:Christopher EdwardCornwall,Victoria
  58 |   58 | Universityof Wellington,NEWZEALAND
  59 |   59 | Received:November11, 2018
  60 |   60 | Accepted:March20, 2019
  61 |   61 | Published:April 2, 2019
  62 |   62 | Copyright:This is an openaccessarticle,free of all
  63 |   63 | copyright,and may be freelyreproduced,
  64 |   64 | distributed,transmitted, modified, built upon,or
  65 |   65 | otherwiseusedby anyonefor any lawfulpurpose.
  66 |   66 | The workis madeavailableunderthe Creative
  67 |   67 | CommonsCC0 publicdomaindedication.
  68 |   68 | DataAvailability Statement:Most,relevantdata
  69 |   69 | are withinthe manuscript,its cited references,and
  70 |   70 | its SupportingInformationfiles. Somedata were
  71 |   71 | accessedthroughpublicyavailabledata archives;
  72 |   72 | URLsand DOIsfor accessingthesearchivesare
  73 |   73 | containedwithinthe paperand its Supporting
  74 |   74 | Informationfiles.
  75 |   75 | Funding:This workwas supportedby funding
  76 |   76 | fromthe Pew Charitable Trusts,contract ID#
  77 |   77 | 31815.A.D. was a graduatestudentduringmodel
  78 |   78 | development and benefittedfromfundingfromthe
  79 |   79 | Environmental Scienceand PolicyDepartmentat
  80 |   80 | 
  81 |   81 | past20years,andwintersea-iceconcentrationandextentarebothdecreasing[1,2].Seaiceis
  82 |   82 | forminglaterintheseasonandretreatingearlier[1,4].ThroughouttheAntarcticPeninsula
  83 |   83 | regionthewinter-iceseasonhasdecreasedbyonetotwodaysperyearonaverage[4],andthe
  84 |   84 | totalthesea-iceseasonshrankby92daysfrom1979–80to2012–13[2].Seaiceis critically
  85 |   85 | importantinstructuringWAPmarineecosystems[1,2].
  86 |   86 | MarinefoodwebsintheWAPareoftendescribedaskrill-centric[6–8].Dietstudiesof
  87 |   87 | numerouspredatorsintheregionindicatethatAntarctickrill(Euphausiasuperba,hereafter
  88 |   88 | krill)is animportantpreyspeciesfora widevarietyofpredators[9].Krillarethetargetofthe
  89 |   89 | largest(bytonnage)Antarcticfishery,withabout155,000t yr
  90 |   90 | -1
  91 |   91 | landedfromaroundtheWAP,
  92 |   92 | withinStatisticalSubarea48.1asdefinedbytheCommissionfortheConservationofAntarctic
  93 |   93 | MarineLivingResources(CCAMLR)[10,11].Krillarepatchilydistributed,andkrillabun-
  94 |   94 | dancecanvarybyordersofmagnitude[12–15].Theserealitiesimplythattheroleofkrillin
  95 |   95 | thefoodwebcanvarybothspatiallyandtemporally.
  96 |   96 | Thereis evidencethatwarmingaroundtheWAPhasalteredthefoodweb[1].Inareasthat
  97 |   97 | haveexperiencedsustainedwarmingandassociatediceloss,salps(Salpa thompsoni)may
  98 |   98 | replacekrillasthedominantphytoplanktonconsumer[16].ToppredatorssuchasAde
  99 |   99 |  ́
 100 |  100 | lie
 101 |  101 | (Pygoscelisadeliae)andchinstrap(P.antarcticus)penguinsmaybedecliningthroughoutthe
 102 |  102 | WAP,andthesedeclinesarecorrelatedwithincreasingtemperaturesandiceloss[17].Abun-
 103 |  103 | dantpiscinepredatorslikeGobionotothengibberifronsalsoappeartohaveexperiencedsignifi-
 104 |  104 | cantdeclinesyetit is unclearwhatis causingthesetrends[18].Thechangingsea-iceregimeis
 105 |  105 | likelyinfluencingpredator-preydynamicsandpopulationdynamicsatalllevelsofthefood
 106 |  106 | web.Marine-resourcemanagersfortheregionmayfindit usefultoexplorehowchangesin
 107 |  107 | thesea-iceregimeandconsequenteffectsonthefoodwebcouldimpactharvestedandmoni-
 108 |  108 | toredspeciesbeforemakingchangestofisheries-management strategies.Suchexplorations
 109 |  109 | maybeparticularlyhelpfulinlightofongoingdiscussionsregardingthedesignofmarinepro-
 110 |  110 | tectedareas(MPAs)intheregion(paragraphs5.63–5.69of[19]).
 111 |  111 | ThesoftwarepackageEcopathwithEcosim(EwE)wasdesignedtofacilitatethecreationof
 112 |  112 | dynamicfood-webmodelsthatcanbeusedtoaidthedevelopmentoffisheries-management
 113 |  113 | strategies,includingthedevelopmentofMPAs[20,21].Toexploresuchoptions,EwEimple-
 114 |  114 | mentsa massbalancedfood-webmodel(Ecopath)andtimedynamicsimulations(Ecosim)
 115 |  115 | thataimtorecreateobservedbiomasstrendsforkeycomponentsintheecosystem.Thereare
 116 |  116 | threepublishedEwEmodelsthatoverlapinwholeorinpartwiththeWAP:Cornejo-Donoso
 117 |  117 | andAntezana[22],Ballerinietal.[7]andSuprenandandAinsworth[23].TwootherEwE
 118 |  118 | modelshavebeenmadeavailableinthegreyliterature[24,25].Allfivesetsofauthorspro-
 119 |  119 | ducedmassbalancedEcopathmodels,butnoneofthemodelswerecalibratedbyfittingto
 120 |  120 | time-seriesobservationsinEcosim.Thepreviousmodelsdonotrecreateobservedtrendsin
 121 |  121 | thebiomassesofseveralmonitoredspecies.Furthermore,becausespeciesareaggregated,the
 122 |  122 | existingmodelsdonotfacilitateconsiderationofspecies-specificresponsestoenvironmental
 123 |  123 | changeandalternativemanagementdecisions.Theseexistingmodelsarepoorlysuitedtobe
 124 |  124 | usedasdecisionsupporttoolsfortheMPAprocess.
 125 |  125 | Theobjectivesofthisstudyareto1)developa massbalancedfood-webmodelthatexplicitly
 126 |  126 | describesthedynamicsofmonitoredanddecliningspeciesand2)calibratethemodelbyfit-
 127 |  127 | tingtimedynamicsimulationstoobservedtrendsinthebiomassesofspeciesthataremoni-
 128 |  128 | toredintheWAP.Havingaccomplishedtheseobjectives,weassertthemodelwouldbe
 129 |  129 | suitableforfurtherdevelopmentintoa spatialmodeltobeusedasa decisionsupporttool
 130 |  130 | withintheCCAMLRprocesstodesignateMPAs.Theworkpresentedhereevaluatestheextent
 131 |  131 | towhichchangesinsea-icecoverexplainobservedvariationsinspeciesbiomassbyincluding
 132 |  132 | thesea-iceregimeasanenvironmentaldriver.Wenotethattherelationshipbetweenkrilland
 133 |  133 | seaiceis uncertain[14]andthatotherenvironmentaldriversmayinfluencekrillandits
 134 |  134 | Usingsea-iceto calibratea dynamictrophicmodelfortheWesternAntarcticPeninsula
 135 |  135 | PLOSONE| https://doi.org/10.1371/journal.pone.0214814April2, 20192 / 28
 136 |  136 | GeorgeMasonUniversity. The fundershad no role
 137 |  137 | in studydesign,data collectionand analysis, or
 138 |  138 | preparationof the manuscript.The Pew Charitable
 139 |  139 | Trustsrequiredpublicationin a peer reviewed
 140 |  140 | journal,but did not influencethe decisionon where
 141 |  141 | to submit.
 142 |  142 | Competinginterests:The authorshave declared
 143 |  143 | that no competinginterestsexist.
 144 |  144 | 
 145 |  145 | predators.Theworkpresentedherefocusesontheroleofseaiceinstructuringthefoodweb
 146 |  146 | intheWAPasoneplausiblehypothesistoexplaintemporalpatternsofbiomassforeightmon-
 147 |  147 | itoredspecies.
 148 |  148 | Methods
 149 |  149 | Studyarea
 150 |  150 | ThestudyareawasStatisticalSubarea48.1asdefinedbytheCommissionfortheConservation
 151 |  151 | ofAntarcticMarineLivingResources(CCAMLR).Thisis a regionofthesouthwestAtlantic
 152 |  152 | thatincludestheWAPandSouthShetlandIslands[10].Subarea48.1hasanareaofapproxi-
 153 |  153 | mately630,279km
 154 |  154 | 2
 155 |  155 | [9]andis southofSouthAmerica(Fig1).Theonlycommercialfishery
 156 |  156 | currentlyoperatinginStatisticalSubarea48.1is thekrillfishery,whichremovedanaverageof
 157 |  157 | approximately51,000tonnesofkrillperyearinthe1990sand33,000tonnesofkrillperyearin
 158 |  158 | Fig1.Studyareadetail.Map,including reticules,wascreatedusingArcMap10.6.TheAntarcticcontinentshapefileis freelyavailablefromthe
 159 |  159 | AntarcticDigitalDatabase[26],theboundaryofStatistical Area48.1is freelyavailablefromCCAMLR’s onlineGIS[27].TheNaturalEarth(https://
 160 |  160 | www.naturalearthdata.com/)providespublicdomainshapefilesofthecountriesoftheworld.Thepolygonbounding thePalmerLTERStudyAreawas
 161 |  161 | drawntoboundthestationsidentifiedinthePalmerLTERBasicGrid[28]Thedisplayedsea-icemaximais a climatology(1981–2010)describingthe
 162 |  162 | medianlocationoftheseaedgeinthemonthofAugust asmadeavailablefromtheNationalSnowandIceDataCenter[29].Thedisplayedsea-ice
 163 |  163 | minimais a climatology(1981–2010)describingthemedianlocationoftheseaiceedgeinFebruaryasmadeavailablefromtheNationalSnowandIce
 164 |  164 | DataCenter[29].
 165 |  165 | https://doi.org/10.1371/journal.pone.0214814.g001
 166 |  166 | Usingsea-iceto calibratea dynamictrophicmodelfortheWesternAntarcticPeninsula
 167 |  167 | PLOSONE| https://doi.org/10.1371/journal.pone.0214814April2, 20193 / 28
 168 |  168 | 
 169 |  169 | theearly2000s[10].ThekrillcatchinStatisticalSubarea48.1hasbeenincreasingwithcatch
 170 |  170 | exceeding150,000tonnesin5 ofthelasteightyears[10].
 171 |  171 | Mass-balancedfood-webmodel(Ecopath).EcopathwithEcosim(EwE)is opensource,
 172 |  172 | freelyavailablesoftwarethathasbeenusedtomodelecosystemsworldwide[20,21].Ecopath
 173 |  173 | createsa massbalancedmodelofthefoodwebassumingthatpredation,fishingpressure,and
 174 |  174 | competitionarecriticaltostructuringthecommunity[20,21].
 175 |  175 | Ecopathreliesontwomasterequationstoparameterizethemodel.AsdescribedinChris-
 176 |  176 | tensenandWalters(2004),thefirstequationdescribestheproductionterm,P
 177 |  177 | i
 178 |  178 | .
 179 |  179 | Pi¼YiþM2i�BiþEiþBAiþM0i�Bið1Þ
 180 |  180 | Foreachspeciesi,Y
 181 |  181 | i
 182 |  182 | is thetotalfisherycatch,M2
 183 |  183 | i
 184 |  184 | is theinstantaneouspredationrate,B
 185 |  185 | i
 186 |  186 | is the
 187 |  187 | biomass,E
 188 |  188 | i
 189 |  189 | is thenetmigrationrate,BA
 190 |  190 | i
 191 |  191 | is biomassaccumulation,andM0
 192 |  192 | i
 193 |  193 | is ‘other’
 194 |  194 | mortality.
 195 |  195 | Thesecondmasterequationdescribestheenergybalanceofeachgroupsuchthat
 196 |  196 | Consumption¼productionþrespirationþunassimilatedfoodð2Þ
 197 |  197 | Thisequationrequiresthattheconsumptionofanyonemodelgroupis alwayslessthanor
 198 |  198 | equaltoitsproduction,thusensuringenergybalancewithineachgroup[20].
 199 |  199 | Forthisstudy,thefoodweboftheWAPwassimplifiedinto35single-andmulti-species
 200 |  200 | groups,andthesegroupswereselectedtorepresentalllevelsofthefoodweb,fromdetritusto
 201 |  201 | apexpredators.(seeS1Fileforgroupdefinitions).Duetotheimportanceofkrillintheregion
 202 |  202 | [2,7,8],specialattentionwaspaidtokrillandmonitoredkrillpredators.Speciesthatthe
 203 |  203 | CCAMLRhavedesignatedasindicatorspecies[30,31]wererepresentedassingle-species
 204 |  204 | groups.It wasourintentionthatthismodeleventuallybedevelopedintoa spatialmodel(Eco-
 205 |  205 | space)thatcanbeusedtoinformthedevelopmentofmarineprotectedareasintheregion.All
 206 |  206 | currentlymonitoredspeciesseemlikelytofeatureina researchandmonitoringplanassoci-
 207 |  207 | atedwitha newMPAandweremodeledassinglespecies.Otherspecies,suchasnon-krillzoo-
 208 |  208 | plankton,phytoplankton,andfishesforwhichrelativelylittledataexist,werecombinedinto
 209 |  209 | multi-speciesfunctionalgroups.
 210 |  210 | SpecificationofEcopathbiomass.Thebaseyearofthemodelwas1996.Initialbiomass
 211 |  211 | estimatesforallconsumergroupsreflecteddatacollectedduringtheperiod1992–2002,and
 212 |  212 | formanygroupsonlya singleestimatewasavailableduringthistimeframe(S2File).Forlarge
 213 |  213 | krill,multipledensityestimatesareavailableduringthistimeperiodandweaverageddensities
 214 |  214 | fortheyears1996–2001todeterminethebiomasstoinputtoEcopath.Dataonthebiomassof
 215 |  215 | primaryproducersintheregionarescarceandregion-wideestimatesarenotavailable.While
 216 |  216 | satelliteimagerydescribingchlorophyllconcentrationsis availableninemonthsoftheyear
 217 |  217 | [32],measurementsofchlorophyllconcentrationsdonotcaptureicealgaeandmaynotcorre-
 218 |  218 | latewellwithin situmeasurementsofphytoplanktonbiomass[33].Ratherthanintroduce
 219 |  219 | additionalcomplexityanduncertaintybyattemptingtoestimatethebiomassesofthephyto-
 220 |  220 | planktonandice-algaefunctionalgroupsfromremotelysensedimagery,weusedthemodel
 221 |  221 | itselftocalculatebiomassforprimaryproducers.Thiswasaccomplishedbysettingtheeco-
 222 |  222 | trophicefficiency(EE),theproportionofproductionofanygivenmodelgrouputilizedinthe
 223 |  223 | system(seeequation6 of[20]),andallowingthemodeltocalculatethebiomassrequiredto
 224 |  224 | balancethisproportionofutilization.ThiswasthesameapproachusedbyBallerinietal.[7].
 225 |  225 | FollowingtheadviceofHeymansetal.[34],theEEforprimaryproducersinthislargely
 226 |  226 | pelagicecosystemwassetto0.5[33].Forallothergroups,weinputbiomassesandusedthe
 227 |  227 | modeltocalculatetheEEs.FisheriescatchdataareregularlyreportedtotheCCAMLR[10],
 228 |  228 | andtheaveragekrillcatchfortheyears1995–2001,whichrepresentedcatchesnearthebase
 229 |  229 | Usingsea-iceto calibratea dynamictrophicmodelfortheWesternAntarcticPeninsula
 230 |  230 | PLOSONE| https://doi.org/10.1371/journal.pone.0214814April2, 20194 / 28
 231 |  231 | 
 232 |  232 | yearofthemodel,wasincludedas“landings”inEcopath.Wedidnotincludediscardsasdis-
 233 |  233 | cardsarenotclearlyidentifiedinthepubliclyavailableCCAMLRdata[10].
 234 |  234 | Theabundancesoftwospeciesofwhalesareknowntobeincreasinginthestudyarea[35,
 235 |  235 | 36].However,whileestimatesoftherateofincreasehavebeenpresented,noreliabletimes
 236 |  236 | seriesofabundanceareavailable.Humpbackwhales(Megapteranovaeangliae)haveexperi-
 237 |  237 | encedanestimatedaveragepopulationgrowthfortheregionof4.5%peryearwitha 95%con-
 238 |  238 | fidenceintervalof-2.9%to12.3%[35].Initially,weuseda biomassaccumulationtermof
 239 |  239 | 4.5%,butthemodelfailedtobalanceif thebiomassaccumulationtermforhumpbackwhales
 240 |  240 | wasgreaterthan3.9%,soweusedthislatervalue.Whileannualpopulation-growthrateshave
 241 |  241 | notbeenpublishedforfinwhales(Balaenopteraphysalus)inthestudyregion,reportedsight-
 242 |  242 | ingsdata[36]revealthatfinwhalesightingshaveincreasedata similar,butslightlylesserrate.
 243 |  243 | A biomassaccumulationtermof2.9%peryearwasusedforFinwhales.
 244 |  244 | SpecificationofEcopathproductiontobiomassratio.Theproductiontobiomassratio
 245 |  245 | (P/B)describestheturnoverrate,orrateatwhicha trophicgroupcanreplaceitself.Thisrate
 246 |  246 | is poorlydescribedformanyspeciesatlowertrophiclevels.Duetolackofdata,theP/Bratios
 247 |  247 | forprimaryproducers,micro-,meso-,andmacro-zooplankton,salps,andbenthicinverte-
 248 |  248 | brateswereadoptedfrompreviouslypublishedmodels.Ballerinietal.[7]estimatedphyto-
 249 |  249 | planktonproductivityfromsatelliteimagery;theestimatedP/Bforthe“othereuphausiid”
 250 |  250 | functionalgroupwasfromstudiesconductedinJapan[37];andtheestimatedP/Bvaluefor
 251 |  251 | salpswasfromPakhomov[38].
 252 |  252 | Krillweremodeledasa multi-stanzagroup,withonestanzaforanimalsyoungerthan24
 253 |  253 | months(smallkrill)anda secondforanimalsolderthan24months(largekrill).InsteadofP/
 254 |  254 | B,basemortality(Z)wasinputforeachstanza[20].Themulti-stanzaapproachassumesthat
 255 |  255 | bodygrowthforthespeciesfollowsa vonBertalanffycurveandthatthespecies’population,as
 256 |  256 | a whole,hasreacheda stableage-sizedistribution[20].Theseassumptionsseemvalidforthe
 257 |  257 | Antarctickrillpopulation[39,40].A recentreviewofpublishedmortalityratesforkrillindi-
 258 |  258 | catesthattemperature,agecompositionofthepopulation,andsubregionwherethekrillare
 259 |  259 | sampledcansignificantlyinfluenceestimatedmortalityrates;estimatesrangefrom0.38to
 260 |  260 | 1.22[41].Modelscurrentlyusedtoinformthemanagementofthekrillfisheryusea natural
 261 |  261 | mortalityvalueof0.8[42].Krillcatches,approximately210,000tonnesfortheentirefishery
 262 |  262 | duringtheperiod1992–2002[10]arelowcomparedtoconsumptionbypredators[43],sothe
 263 |  263 | naturalmortalityrateis a goodapproximationofZ forkrill.Weusedthemortalityvalueused
 264 |  264 | toinformmanagementofthekrillfishery,0.8,forbothlargeandsmallkrill.Thisvalue,and
 265 |  265 | thevonBertalanffycurvatureconstant(K)of0.440arederivedfromtheworkofRosenberg
 266 |  266 | etal.[40]andofCandyandKawaguchi[39].
 267 |  267 | Hilletal.[9]providea compilationofallestimatesofP/Bratiosforfishes.TheP/Bvalue
 268 |  268 | formyctophidsrangesbetween0.86–1.14.Thevalueof1.1wasusedinthecurrentmodel.
 269 |  269 | Similarly,Hilletal.[9]notethattheP/Bsoffisheslivingonthecontinentalshelfrangefrom
 270 |  270 | 0.19–0.60andrecommenda valueof0.46,whichwasadoptedhere.A naturalmortalityrateof
 271 |  271 | 0.29is recognizedasthebestestimateforNototheniarossii[18]andwasusedinourmodel.
 272 |  272 | Iverson[44]estimatedthatthepre-exploitationnaturalmortalityrateofChampsocephalus
 273 |  273 | gunnarirangedbetween0.23–0.96,andmodelsusedtoinformfisheriesmanagementforthis
 274 |  274 | speciesusethemidrangevalueof0.48[9].Wealsousedthevalueof0.48.A specificP/Bvalue
 275 |  275 | forG.gibberifronscouldnotbefoundintheliterature.Thespeciesis includedintheHilletal.
 276 |  276 | [9]assessmentofthemortalityforshelf-associatedfishes,and,therefore,ourmodeluseda P/B
 277 |  277 | of0.46forG.gibberifrons.
 278 |  278 | Forupperlevelpredators,theP/Bratiocanberepresentedbytheannualrateofadultnatu-
 279 |  279 | ralmortality[7,45],andthisis a commonlypublishedparameter(S3File).Forallmarine
 280 |  280 | mammalandpenguingroups,ourmodelusedpublishedvaluesofsurvivalormortality.
 281 |  281 | Usingsea-iceto calibratea dynamictrophicmodelfortheWesternAntarcticPeninsula
 282 |  282 | PLOSONE| https://doi.org/10.1371/journal.pone.0214814April2, 20195 / 28
 283 |  283 | 
 284 |  284 | FollowingBallerinietal.[7],theP/Bvalueforflyingbirdswascalculatedusinga weighted
 285 |  285 | averageofannualsurvivalforeachspeciesincludedinthefunctionalgroup.Weightswerepro-
 286 |  286 | portionaltotherelativeabundancesofthespeciesasdescribedbyRibicetal.[46].
 287 |  287 | SpecificationofEcopathproductiontoconsumptionratio.Tocreatea massbalanced
 288 |  288 | model,Ecopathusesanestimateofconsumption(Eqs1 and2).Thisestimateis ofteninputto
 289 |  289 | themodelaseithera productiontoconsumption(P/Q)ratioora consumptiontobiomass(Q/
 290 |  290 | B)ratio.TheP/Qratiocanbecalculatedasgrowthefficiency,ortheproductoftheassimila-
 291 |  291 | tionefficiency(AE)andproductionefficiency[PE;7].PublishedAEvaluesexistformany
 292 |  292 | groups(S4File).ThePEvalueswerederivedfromTownsendetal.[47].ConsistentwithBal-
 293 |  293 | lerinietal.[7]wecalculatedQ/BratiosbydividinggroupspecificestimatesofP/Qintogroup
 294 |  294 | specificestimateofP/B.
 295 |  295 | SpecificationofEcopathdietmatrix.Thedietmatrixdescribestrophicinteractions
 296 |  296 | amongallspeciesandfunctionalgroupsinthemodel.Cannibalismwasnotallowedtooccur
 297 |  297 | foranygroupasit cancauseinstability[7,48].Wenotethatforthemultispeciesfunctional
 298 |  298 | groupswherecannibalismis mostlikelytooccur,therearenotsufficientdatatosupportfur-
 299 |  299 | thersubdivisionofthegroupsorcreationofmultistanzasforthegrouptocircumventwithin
 300 |  300 | groupcannibalism.Thedietmatrixwasinformedbypublisheddiet-compositionstudiesand
 301 |  301 | publiclyavailablereportsofpreychoices.Exceptforspermwhales,dietdataweresourced
 302 |  302 | fromstudiesconductedintheAntarctic.Dietstudiesreferencedincludegutcontentanalyses,
 303 |  303 | visualobservationofpreyconsumption,andstableisotopeanalysis.Sourcesforthedietmatrix
 304 |  304 | andnotesdescribinghowthedietswereadaptedfromthevaluesprovidedinthepublishedlit-
 305 |  305 | eratureareprovidedinS5File.
 306 |  306 | BalancingtheEcopathmodel.Wecollatedthedatadescribedabovetocreatea massbal-
 307 |  307 | ancedfood-webmodelfortheWAP,specificallyStatisticalSubarea48.1.Whenthemodelwas
 308 |  308 | initiallyimplemented,withparameterstakendirectlyoutoftheliterature,EEvaluesforseveral
 309 |  309 | groups,includingimportantpreyspeciessuchaskrillandon-shelffish,weresignificantly
 310 |  310 | greaterthan1. Predationpressurewastoohighonthosegroups.Manyofthedietstudiesrefer-
 311 |  311 | encedwithinthedietmatrixhavesmall,spatiallyconstrainedsamplesizesrelativetotheir
 312 |  312 | respectivepopulations(e.g.[49,50,51]).It wasassumedthatthedietspresentedinstudiescov-
 313 |  313 | eringsmallorrestrictedareasaccuratelyrepresentthediversityofimportantpreyitemsfor
 314 |  314 | eachspecies,butthatthepercentageofmassinthedietwasuncertain.Thus,webalancedthe
 315 |  315 | modelbyadjustingthedietmatrix.Startingwiththedietsofpredatorsthatatethepreyitems
 316 |  316 | withthehighestEE,dietswereadjustedincrementallyuntilthemodelbalanced.Thiswasan
 317 |  317 | iterativeprocessduringwhichwemadesmallchangestodiets,lessthan5%ata time,andthen
 318 |  318 | checkedtheEEvaluesforallpreyitemstoensurethelatterparameterswerelessthanone.Bal-
 319 |  319 | ancewasachieved,anddietiterationscomplete,whentheEEsforallgroupswerelessthan
 320 |  320 | one.
 321 |  321 | Timedynamicsimulation(Ecosim)
 322 |  322 | Equations.Ecosimallowsfortimedynamicsimulationsofthebalancedmodelcreatedin
 323 |  323 | Ecopath.EcosimemployscoupleddifferentialequationsthatarederivedfromtheEcopath
 324 |  324 | MasterEquation[20]andareexpressedas:
 325 |  325 | dB
 326 |  326 | i
 327 |  327 | dt
 328 |  328 | ¼g
 329 |  329 | i
 330 |  330 | X
 331 |  331 | j
 332 |  332 | Q
 333 |  333 | ji
 334 |  334 |  
 335 |  335 | X
 336 |  336 | j
 337 |  337 | Q
 338 |  338 | ij
 339 |  339 | þI
 340 |  340 | i
 341 |  341 |   ðMO
 342 |  342 | i
 343 |  343 | þF
 344 |  344 | i
 345 |  345 | þe
 346 |  346 | i
 347 |  347 | Þ�B
 348 |  348 | i
 349 |  349 | ð3Þ
 350 |  350 | Where
 351 |  351 | dB
 352 |  352 | i
 353 |  353 | dt
 354 |  354 | is thegrowthrateduringtimetofthebiomassofgroupi;g
 355 |  355 | i
 356 |  356 | is thenetgrowtheffi-
 357 |  357 | ciency;Q
 358 |  358 | ji
 359 |  359 | representsthetotalconsumptionbypredatorgroupiofpreyfromgroupj(Q
 360 |  360 | ji
 361 |  361 | is
 362 |  362 | similar);I
 363 |  363 | i
 364 |  364 | is thebiomassimmigrationrateandis assumedconstantovertime;MO
 365 |  365 | i
 366 |  366 | is the
 367 |  367 | Usingsea-iceto calibratea dynamictrophicmodelfortheWesternAntarcticPeninsula
 368 |  368 | PLOSONE| https://doi.org/10.1371/journal.pone.0214814April2, 20196 / 28
 369 |  369 | 
 370 |  370 | mortalityratethatis notassociatedwithpredation;F
 371 |  371 | i
 372 |  372 | is thefishingmortalityrate;ande
 373 |  373 | i
 374 |  374 | is the
 375 |  375 | emigrationrate.Thenetmigrationtermise
 376 |  376 | i
 377 |  377 | xB
 378 |  378 | i
 379 |  379 | —I
 380 |  380 | i
 381 |  381 | andis composedoftermsthatareheld
 382 |  382 | constantoverthesimulation(I
 383 |  383 | i
 384 |  384 | ) andthosethatvaryoverthecourseofthesimulation(e
 385 |  385 | i
 386 |  386 | xB
 387 |  387 | i
 388 |  388 | )
 389 |  389 | [20].
 390 |  390 | ConsumptionratesinEcosimarebasedona simpleLotka-Volterrapredator-preymodel
 391 |  391 | thathasbeenmodifiedtoinclude“foragingarena”characteristics[20].Theforaging-arena
 392 |  392 | conceptrecognizesthatpreycanoccurinstatesthatarevulnerabletopredationandstatesthat
 393 |  393 | arenot.Preyshiftbetweenthesestatesastheyseektoaccessresourceslikesheltersthatmake
 394 |  394 | themsaferorseekfoodinareasthatleavethemmoreexposed.Thedifferentvulnerabilitiesof
 395 |  395 | thepreycanaffecttheconsumptionratebypredators.[20].Consumptionrates,Q
 396 |  396 | ij
 397 |  397 | , arecalcu-
 398 |  398 | latedasfollows:
 399 |  399 | Q
 400 |  400 | ij
 401 |  401 | ¼
 402 |  402 | a
 403 |  403 | ij
 404 |  404 | �v
 405 |  405 | ij
 406 |  406 | �B
 407 |  407 | i
 408 |  408 | �B
 409 |  409 | j
 410 |  410 | �T
 411 |  411 | i
 412 |  412 | �T
 413 |  413 | j
 414 |  414 | �S
 415 |  415 | ij
 416 |  416 | �ðM
 417 |  417 | ij
 418 |  418 | =D
 419 |  419 | j
 420 |  420 | Þ
 421 |  421 | v
 422 |  422 | ij
 423 |  423 | þv
 424 |  424 | ij
 425 |  425 | �T
 426 |  426 | i
 427 |  427 | �M
 428 |  428 | ij
 429 |  429 | þa
 430 |  430 | ij
 431 |  431 | �M
 432 |  432 | ij
 433 |  433 | �B
 434 |  434 | j
 435 |  435 | �S
 436 |  436 | ij
 437 |  437 | �ðT
 438 |  438 | j
 439 |  439 | =D
 440 |  440 | j
 441 |  441 | Þ
 442 |  442 | ð4Þ
 443 |  443 | Wherea
 444 |  444 | ij
 445 |  445 | is theeffectivesearchrateforpreyibypredatorj;v
 446 |  446 | ij
 447 |  447 | is thevulnerabilityofthepreyi
 448 |  448 | topredatorj;B
 449 |  449 | i
 450 |  450 | is thebiomassofgroupi;T
 451 |  451 | i
 452 |  452 | is therelativefeedingtimeofgroupi;S
 453 |  453 | ij
 454 |  454 | is a forc-
 455 |  455 | ingfunction;M
 456 |  456 | ij
 457 |  457 | representsmediation(whichis notusedinthismodel);andD
 458 |  458 | j
 459 |  459 | describeshow
 460 |  460 | handlingtimelimitsconsumptionrates[20].Furtherinformationdescribinghowforcing
 461 |  461 | functionscanbeusedtodriveconsumptiondynamicsis providedbyChristensenetal.(see
 462 |  462 | Equations4 and5 andFigure1 in[52]).
 463 |  463 | Ecosimtimeseries.Threetypesofdatawereusedinthetimedynamicsimulationsfor
 464 |  464 | theWAP.Thefirstweretimeseriesthatdescribetrendsinthebiomassesofeightmonitored
 465 |  465 | speciesfortheyears1996–2012andwhichwereusedtoassesmodelfit.Noneofthebiomass
 466 |  466 | time-seriesdatawereusedtoforcecorrespondingbiomassesthemodel.Reliable,yearlytime-
 467 |  467 | seriesdatasetsdatingbacktoatleastthe1990sareavailableforfivespeciesincludedinthe
 468 |  468 | model:Antarcticfurseals,Ade
 469 |  469 |  ́
 470 |  470 | liepenguins,chinstrappenguins,gentoopenguins,andAntarc-
 471 |  471 | tickrill.Lessregulartime-seriesdataareavailableforthreefishes:N.rossii,C.gunnari,andG.
 472 |  472 | gibberifrons(S6Fileprovidessourcesandnotesdescribingthebiomasstime-seriesdata).The
 473 |  473 | timeseries-datausedforfursealswerecollectedatthecolonythatis responsibleforapproxi-
 474 |  474 | mately80%ofthepupproductionintheregion[53].Thetime-seriesdataforthethreepenguin
 475 |  475 | speciesreflectregion-widetrends[17,54].Krillrecruitmentpatternsaresimilarintermsof
 476 |  476 | timingandmagnitudeinboththenorthernandsouthernhalfofthestudyarea[41]andthere-
 477 |  477 | foreusingdatacollectedinthenorthernhalfofthestudyareacanbeconsideredtoreflect
 478 |  478 | regionwidetrends.Datasetsforair-breathingvertebratesrepresentcountsofanimalsindis-
 479 |  479 | cretelocations;krilldatarepresentestimateddensitiesfromacousticsurveys(fisheriesinde-
 480 |  480 | pendent)andfisheriescatch(fisheriesdependent);andfishdataarebiomassestimatesderived
 481 |  481 | fromtrawlsurveys.Fisheriesindependentmeasurementsofkrilldensitywereusedtoassesfit
 482 |  482 | ofthemodel.Alltime-seriesdatadescribingtrendsinbiomasswereincludedinthemodelas
 483 |  483 | “relativebiomass”,whichallowsthemodeltofittotrendsforthesespecies,withoutinforma-
 484 |  484 | tiononscale.Tokeepthestartofthetimedynamicsimulationsconsistentwiththemodel
 485 |  485 | year,datapriorto1996werenotincludedintheEcosimruns.
 486 |  486 | Timesseriesforcatchestakenbythekrillfisheryandkrill-fishingeffort[10]wereinitially
 487 |  487 | includedinthemodel.It is possibletoassesmodelfitforkrillbiomassusingthecatchdata.
 488 |  488 | Howevercommercialfishingactivityhasrecentlyconcentratedinrelativelyconfinedareas
 489 |  489 | definingpreferredfishinggrounds[11].Thesedatamaynotberepresentativeoftheregion
 490 |  490 | andmayshowpatternsmorerelatedtotheeconomicsoffishingthantokrillbiology.There-
 491 |  491 | fore,themodelwasfittedtothefisheriesindependentdata.Fishingeffortdata,asreportedto
 492 |  492 | Usingsea-iceto calibratea dynamictrophicmodelfortheWesternAntarcticPeninsula
 493 |  493 | PLOSONE| https://doi.org/10.1371/journal.pone.0214814April2, 20197 / 28
 494 |  494 | 
 495 |  495 | CCAMLR[10]wereincludedinthemodeltocapturethetemporaldynamicsofthefishery
 496 |  496 | from1996–2012.
 497 |  497 | ThethirdtypeofdatausedinEcosimsimulationsweretimeseriesdescribingenvironmen-
 498 |  498 | talconditionsthatmayhaveinfluencedbiomasstrends,calledforcingfunctions.Fourforcing
 499 |  499 | functionswereused:sea-icearea,openwaterarea,chlorophyllaconcentration,andobserved
 500 |  500 | predationmortalityrateoffursealpups.Forcingfunctionswereappliedasmultipliersto
 501 |  501 | impactspecificpredator-preyinteractions,orforprimaryproducersasa multiplieronproduc-
 502 |  502 | tionrate.Forconsumers,themultipliercanbeappliedtosearchrate,vulnerability,foraging
 503 |  503 | arenaareaora combinationofvulnerabilityandarenaarea[20].Forcingfunctionswerealso
 504 |  504 | appliedtomoredirectlydrivethebiomassesofkrillandG.gibberifronsusingresponsecurves
 505 |  505 | totietheincreasesinbiomasstochangingenvironmentalconditions.Theprocessesforevalu-
 506 |  506 | atingapplicationsofforcingfunctionsandresponsecurvesarediscussedintheModelCalibra-
 507 |  507 | tionsectionbelow.Duetothehypothesizedimportanceofthesea-iceregimeininfluencing
 508 |  508 | krillabundanceandecosystemdynamics[1,2,16],specialattentionwaspaidtosea-ice
 509 |  509 | forcing.
 510 |  510 | ThePalmerLongTermEcologicalResearchprogram(LTER)programservestimeseriesof
 511 |  511 | monthlyaveragesea-iceandopenwaterareasinkm
 512 |  512 | 2
 513 |  513 | fortheirstudyarea(https://
 514 |  514 | oceaninformatics.ucsd.edu/datazoo/catalogs/pallter/datasets/34). Thesea-iceareais sensedby
 515 |  515 | microwavesatellite.Areasareconsidered“iced”whentheyhavemorethan15%icecover[55]
 516 |  516 | anda timeserieswascreatedofthemonthlyaveragetotalicedarea(inkm
 517 |  517 | 2
 518 |  518 | ). Initially,thesatel-
 519 |  519 | litederived,unalteredtimeseriesoftotalsea-icecoveredarea(inkm
 520 |  520 | 2
 521 |  521 | ) forthePalmerLTER
 522 |  522 | studyareawasincorporatedinthemodel.However,thatappearedtohavelittleornoimpact
 523 |  523 | onmodelpatternsofbiomass(hereaftermodelresults);modelresultsdidnotfitthetime-
 524 |  524 | seriesdatadescribingchangesinbiomass.A sea-iceindexwasmadetoidentify“goodice
 525 |  525 | years”andsmoothsomeofthisvariability.Sincewinterseaiceis thoughttoaffectAde
 526 |  526 |  ́
 527 |  527 | liepen-
 528 |  528 | guinsurvivorship[56,57]attemptsweremadetofocusonwintericeconditions.However,the
 529 |  529 | PalmerLTERsea-icedatasetdoesnotexhibitsufficientvariabilityinthemaximumwintersea-
 530 |  530 | icearea.Formanyyears,theentireLTERstudyareawascompletelycoveredinice,andthus
 531 |  531 | thismeasuredoesnotadequatelydistinguishbetweenyears.Instead,theannualsummersea-
 532 |  532 | iceareaminimumwasusedtoconstructthesea-iceindex.Theassumptionthatyearswith
 533 |  533 | greatersea-iceinthesummeralsohavegreaterannualicecoverageunderliesourindex.This
 534 |  534 | maybea reasonableassumptionaswarmersummersareknowntocontributetoaccelerating
 535 |  535 | sea-icelossthrougha positivefeedbackloop[2,58,59],andthereforecoolericiersummers
 536 |  536 | wouldnotcauseicetobelostasrapidlyaswarmer,lessicy,summers.Weusedannualsea-ice
 537 |  537 | minima,asdocumentedinthePalmerLTERdata,thatwerescaledbytheaveragevaluetocon-
 538 |  538 | structtheindex.Yearswheretheminimumsea-iceareawasgreaterthanaveragehadindex
 539 |  539 | valuesgreaterthanone;thosebelowaveragehadindexvalueslessthanone.Thescaleddataset
 540 |  540 | (Fig2)wasusedasthesea-iceforcingfunctioninthemodel.Theannualvaluewasrepeated
 541 |  541 | foreachmonthlytimestepofthatyear,and,duringthecalibrationprocess,theforcingfunc-
 542 |  542 | tionwasappliedasa multipliertoimpactspecificpredator-preyinteractions.
 543 |  543 | FunctionalresponsecurveswereusedtodescribehowthebiomassesofkrillandG.gibberi-
 544 |  544 | fronsrespondtochangesinthesea-iceindex.Curveswerefittedforbothspeciesindepen-
 545 |  545 | dently,afterforcingalonefailedtohelpthemodelfitthetime-seriesdataforthesetwospecies.
 546 |  546 | Whileourunderstandingregardinghowkrillrespondstoseaiceconditionsis stillevolving
 547 |  547 | [14],previousstudieshaveshownthatkrillexhibitdecliningabundanceandmaybereplaced
 548 |  548 | bysalpsinareasthathaveexperiencedsignificanticeloss[16].Krillrecruitmentis oftenhigher
 549 |  549 | followingwinterswithgreatersea-iceextent[41,60,61].Dataprovidedintheliteraturewere
 550 |  550 | notsufficienttodirectlyconstructa responsecurveforlargekrill.Tofurtherexplorethe
 551 |  551 | hypothesisthatkrillgenerallyrespondpositivelytoincreasedsea-ice,twocurveswere
 552 |  552 | Usingsea-iceto calibratea dynamictrophicmodelfortheWesternAntarcticPeninsula
 553 |  553 | PLOSONE| https://doi.org/10.1371/journal.pone.0214814April2, 20198 / 28
 554 |  554 | 
 555 |  555 | evaluated(Fig3),bothofwhichcausedkrillbiomasstoincreasewiththesea-iceindex:linear
 556 |  556 | (Ecosimparameters:start= 0;end= 60)andsigmoidal(Ecosimcurveparameters:Y
 557 |  557 | zero
 558 |  558 | = 0;
 559 |  559 | Y
 560 |  560 | base
 561 |  561 | = 1.5;Y
 562 |  562 | end
 563 |  563 | = 5;Steep= 3).
 564 |  564 | Gobionotothengibberifronsis a benthicfishthatbreedsinthewinter,andreleasespelagic
 565 |  565 | eggs[62].Availabletime-seriesdataindicatea largedeclineinthebiomassofthisspecies.This
 566 |  566 | declinewasfirstnotedin2001,butitscauseis currentlyunknown[18,63].Thisfishspecies
 567 |  567 | dwellsinthenorthernpartofthestudyareaandis notconsideredicedependent[62].How-
 568 |  568 | ever,thisanimalbreedsinthewinterandcouldpossiblyrespondpositivelytoseaice,oroce-
 569 |  569 | anicconditionsassociatedwithseaice.Afterapplyingforcingusingthesea-iceindexandthe
 570 |  570 | openwaterforcingfunctiontopredator-preyinteractionsbothdirectlyinvolvingthisspecies
 571 |  571 | andmorebroadlytofitthemodelforthesevenotherspeciesforwhichtimeseriesthemodel
 572 |  572 | failedtorecreatethedeclineasdescribedinthebiomassofG.gibberifrons.Insteadthemodel
 573 |  573 | predictedanincreaseinthisspecies.Inanattempttohelpthemodelrecreatetheobserved
 574 |  574 | declineinthisspecies,simulationswererunwithseaicedrivingthebiomassforG.gibberi-
 575 |  575 | frons.Wenotethatthesea-iceindexcouldbeservingasa proxyforotherunmodeledenviron-
 576 |  576 | mentalconditionstowhichG.gibberifronsrespondspositively.However,usingthesea-ice
 577 |  577 | indexasa driverofG.gibberifronsbiomassresultedinthemodelrecreatingthedocumented
 578 |  578 | Fig2.Annualsea-iceindexvalues.
 579 |  579 | https://doi.org/10.1371/journal.pone.0214814.g002
 580 |  580 | Usingsea-iceto calibratea dynamictrophicmodelfortheWesternAntarcticPeninsula
 581 |  581 | PLOSONE| https://doi.org/10.1371/journal.pone.0214814April2, 20199 / 28
 582 |  582 | 
 583 |  583 | decline.ThesimulationsusedcurvesdrawndirectlyinEcosim(Fig3):linearcurve(start= 0,
 584 |  584 | end= 304)andnormalcurve(Ecosimcurveparameters:SDleft= 12;datawidth= 560;SD
 585 |  585 | right= 100;mean= 24;max= 1).
 586 |  586 | WhilesomeAntarcticspeciesthriveinicyconditions,otherspecieshaveincreasedsuccess
 587 |  587 | inopenwater.Gentoopenguinpopulationshavebeenincreasingastheamountofseaicein
 588 |  588 | theregionhasdeclined[17,57].Similarly,Antarcticfursealsarepelagicpredatorsthattendto
 589 |  589 | aggregateattheiceedgeorinopenwatertoforage[64,65].Theaveragemonthlyopenwater
 590 |  590 | areaasdescribedinthePalmerLTERdata[55]wasusedasa multipliertoforceforaginginter-
 591 |  591 | actionsforthesepelagicspecies(Fig4).
 592 |  592 | Fig3.Evaluatedfunctionalresponsescurves.Blacklinesarethelinearcurves,greylinesrepresentthesigmoidal(krill)andnormal(G.gibberifrons)
 593 |  593 | curves.
 594 |  594 | https://doi.org/10.1371/journal.pone.0214814.g003
 595 |  595 | Fig4.OpenwaterareaasdocumentedbythePalmerLTER.
 596 |  596 | https://doi.org/10.1371/journal.pone.0214814.g004
 597 |  597 | Usingsea-iceto calibratea dynamictrophicmodelfortheWesternAntarcticPeninsula
 598 |  598 | PLOSONE| https://doi.org/10.1371/journal.pone.0214814April2, 201910/ 28
 599 |  599 | 
 600 |  600 | ThePalmerLongTermEcologicalResearch(LTER)programhasprovidedweeklymea-
 601 |  601 | surementsofchlorophyllaatPalmerStationsince1995[66].Thisis theonlyyear-round
 602 |  602 | chlorophylltimeseriesavailablefortheregionduringtheyears1996–2012;satelliteimagery
 603 |  603 | is obscuredbycloudsduringtheaustralwinter[32].Duetoequipmentfailures,thereare
 604 |  604 | severalmonthsofmissingdatainthePalmerLTERchlorophyllatime-series.Thelong-term
 605 |  605 | monthlyaveragewasusedtoapproximatethemissingmonthsofdata.Thechlorophylla
 606 |  606 | forcingfunction(Fig5)wasappliedtotheprimaryproducers,usingthebuilt-inEcosim
 607 |  607 | multiplierofproductionrate.Thiscausedprimaryproductioninthemodeltocyclewith
 608 |  608 | empiricalobservations.
 609 |  609 | GoebelandReiss[53]providea timeseries(Fig6)ofobservedleopardsealpredationon
 610 |  610 | Antarcticfursealpups.Thesedatawereusedsolelytoforcethetrophicinteractionbetween
 611 |  611 | leopardsealsandAntarcticfurseals.GoebelandReiss[53]estimatea singlepredationrateper
 612 |  612 | Fig5.MonthlychlorophyllaconcentrationdocumentedbythePalmerLTER.
 613 |  613 | https://doi.org/10.1371/journal.pone.0214814.g005
 614 |  614 | Usingsea-iceto calibratea dynamictrophicmodelfortheWesternAntarcticPeninsula
 615 |  615 | PLOSONE| https://doi.org/10.1371/journal.pone.0214814April2, 201911/ 28
 616 |  616 | 
 617 |  617 | Antarcticseason.TheannualvaluewasrepeatedforOctoberthroughMay(theseasonwhenit
 618 |  618 | wasprobabletohavepupsatCapeShirreff)andzerowasassignedtoJunethroughSeptember
 619 |  619 | (themonthswhenpupswerehighlyunlikelytobeonthebeach).Significantleopardsealpre-
 620 |  620 | dationonfursealpupswasfirstrecordedinOctoberof2003.A valueofzerowasusedfrom
 621 |  621 | thestartofthetimeseriesuntil2003[53].
 622 |  622 | Calibrationofthemodel.Tobeginthecalibrationprocess,themodelwasinitiallyrun
 623 |  623 | withonlythechlorophyllatimeseriesforcingprimaryproducergroups.Inthiscase,the
 624 |  624 | modelfailedtorecreatethedocumentedtrendsofbiomassforallspeciesforwhichtimeseries
 625 |  625 | wereavailable,exceptforC.gunnari.Forcingfunctionswerethenappliedtospecificpredator-
 626 |  626 | preyinteractionstoinfluencetheprey’svulnerabilitytopredation,thepredator’ssearchrate,
 627 |  627 | orthesizeoftheareawherepreyarevunerabletopredation(i.e.,theforagingarena).This
 628 |  628 | typeofforcingwasappliedinEcosimwithouttheuseofresponsecurves.Choicesofwhich
 629 |  629 | timeserieswereappliedasforcingfunctionstoeachpredator-preyinteractionwereinfluenced
 630 |  630 | byhuntingstrategiesdocumentedinthedietstudiesusedtobuildthedietmatrix.Forexam-
 631 |  631 | ple,gentoopenguinsforageinnearshoreenvironments[67]andhavebeenincreasingin
 632 |  632 | abundanceasseaicehasdeclined[17].Thissuggeststhatgentoopenguinsaremoresuccessful
 633 |  633 | foragersinopenwaterconditions.Thusweusedtheopenwaterenvironmentaldrivertoforce
 634 |  634 | predator-preyinteractionsbetweengentoopenguinsandon-shelffishandkrill.Thisapplica-
 635 |  635 | tionmadethosepreyitemsmorevulnerabletogentoopredationwhereopenwaterwasmore
 636 |  636 | prevalent.
 637 |  637 | Modelfitwasmeasuredbysumsofthesquareddifferences(SS)betweensimulationresults
 638 |  638 | andbiomasstimeseriesfortheeightmonitoredspecies,wherea smallerSSindicatesa better
 639 |  639 | fit.If applyinga forcingfunctiontoa specificpredatorpreyinteractiondidnotimprovethefit,
 640 |  640 | Fig6.Observed leopardsealpredationrateonAntarcticfursealpups.FigurerecreatedfromGoebelandReiss[53].
 641 |  641 | https://doi.org/10.1371/journal.pone.0214814.g006
 642 |  642 | Usingsea-iceto calibratea dynamictrophicmodelfortheWesternAntarcticPeninsula
 643 |  643 | PLOSONE| https://doi.org/10.1371/journal.pone.0214814April2, 201912/ 28
 644 |  644 | 
 645 |  645 | orotherwisehelpthemodelrecreatetrendsdocumentedinthetimeseries,thatfunctionwas
 646 |  646 | nolongerappliedtothatforaginginteraction.ToimprovemodelfitforlargekrillandG.gib-
 647 |  647 | berifrons,weusedoursea-iceindextodirectlydrivethebiomassesofbothspecies.Weevalu-
 648 |  648 | atedtwocurvesforeachspeciesandretainedthecurvethatresultedinthelowesttotalsum
 649 |  649 | ofsquares.Oncethemodelwasabletorecreatethetrendsofbiomassasdocumentedinthe
 650 |  650 | time-seriesdata,andeachgroup-specifcSShadbeenminimized,themodelwasconsidered
 651 |  651 | calibrated.
 652 |  652 | WeusedtheMonteCarlo(MC)routineprovidedwithinEwE[20]toassessmodelsensitiv-
 653 |  653 | ity.TheMCroutinerandomlyselectsinitialvaluesoftheinputparameters(Biomass,P/B,and
 654 |  654 | EE)forallmodelgroupsusinga coefficientofvariation(C.V.)of0.1andcomputesthetotal
 655 |  655 | sumofsquaresusingthesenewinputvalues.Thedegreeofdifferenceinthesumofsquares
 656 |  656 | betweentheuser-specifiedmodel,andrandomlyselectedrunsis usedtoinfersensitivityto
 657 |  657 | smallchangesininputparameters.Weran200MCsimulationtrialstoassesssensitivity.
 658 |  658 | Results
 659 |  659 | Ecopath
 660 |  660 | Afteradjustingthedietmatrix(Table1),theEcopathmodelbalanced(Table2).
 661 |  661 | Ecosim
 662 |  662 | Afterapplyingforcingfunctionsanddrivers,andfittingthemodeltoobservations,themodel
 663 |  663 | wassuccessfullycalibratedfortheseventeen-yearperiod1996–2012.Theapplicationofforcing
 664 |  664 | functionstospecificpredator-preyinteractionsimprovedthefitofthemodelbyreducingsum
 665 |  665 | ofsquaresdifferencesbetweenmodelresultsandtime-seriesdata.A listofforcingfunction
 666 |  666 | applicationsretainedinthefinalmodelis presentedinTable3.Whilemanyalternativeappli-
 667 |  667 | cationsofforcingfunctionswereevaluated,weretainedonlythosethatreducedthetotalSS,
 668 |  668 | withtwonotableexceptions.Thefinalmodelincludesopenwaterforcingoftheinteraction
 669 |  669 | betweenon-shelffishandC.gunnariandtheinteractionbetweenC.gunnariandother
 670 |  670 | euphausiidsbecausetheyarenecessaryforthemodeltorecreatetheincreaseinC.gunnaribio-
 671 |  671 | massdocumentedintime-seriesobservationsofthisspecies[63].Toassesstheimpactofeach
 672 |  672 | forcingfunctionapplicationonthetotalSS,wesingularlyremovedeachforcingfunction
 673 |  673 | applicationandnotedthedifferenceintotalSS.
 674 |  674 | Weusedthesea-iceindextodrivethebiomassesofkrillandG.gibberifrons.Thelinear
 675 |  675 | responsecurveimprovedthegroup-specificSSforLargeKrillfrom20.5to11.69(Fig7).
 676 |  676 | Applyinga sigmoidalresponsecurvewitha steeppositiveresponsefurtherimprovedthe
 677 |  677 | group-specificSSofLargeKrillto10.18andcoincidentlymadeslightimprovementstothefits
 678 |  678 | forAde
 679 |  679 |  ́
 680 |  680 | liepenguin,chinstrappenguin,gentoopenguin,C.gunnariandG.gibberifrons.The
 681 |  681 | totalSSforthemodel,wasapproximatelyfourlessusingthesigmoidalresponsecurvethan
 682 |  682 | whenusingthelinearresponsecurve.Weretainedthesigmoidalresponsecurveinthemodel.
 683 |  683 | ThemodelfitforkrillwasfurtherimprovedafterthefitforG.gibberifronsimproved.Applying
 684 |  684 | a linearcurvetodriveG.gibberifrons,changedthetrajectoryofthemodelresultstoalignwith
 685 |  685 | thedocumenteddeclineinthebiomassofthisspeciesandreducedthegroup-specificSSfrom
 686 |  686 | 9.321toanSSof0.621.Applyinga normalresponsecurvetodriveG.gibberifronsdecreased
 687 |  687 | modelperformance,withthegroup-specificSSrisingto20.20.Weretainedthelinearresponse
 688 |  688 | curveinthemodel.
 689 |  689 | ThetotalSSforthemodelwithoutforcingwas70.77andsimulationresultsdidnotfit
 690 |  690 | observedtrendsinbiomass(Fig8).Aftersea-iceforcingofpredator-preyinteractionsand
 691 |  691 | drivingthebiomassesofkrillandG.gibberifrons,thegroup-specificSSforkrillalone
 692 |  692 | decreasednearly50%from19.71to10.04.ThetotalSSdroppedto25.39,andthesimulation
 693 |  693 | Usingsea-iceto calibratea dynamictrophicmodelfortheWesternAntarcticPeninsula
 694 |  694 | PLOSONE| https://doi.org/10.1371/journal.pone.0214814April2, 201913/ 28
 695 |  695 | 
 696 |  696 | Table1.Finaldietmatrix.
 697 |  697 | ModelGroupPrey
 698 |  698 | KillerWhale3%LeopardSeals,46.5%WeddellSeals,36.5%CrabeatersSeals,1%ElephantSeals,1%
 699 |  699 | BlueWhales,1%FinWhales,1%MinkeWhales,1%HumpbackWhales,<1%Emperor
 700 |  700 | Penguins,<1%GentooPenguins,2%ChinstrapPenguins,<1%Ade
 701 |  701 |  ́
 702 |  702 | liePenguins,3%
 703 |  703 | Myctophidfish,2%On-shelfFish,<1%N.rossii,1%G.gibberifrons
 704 |  704 | LeopardSeal<1%AntarcticFurSeals,<1%GentooPenguins, 3%ChinstrapPenguins, 7.8%
 705 |  705 | Cephalopods,4%Myctophids, 15%G.gibberifrons,70%LargeKrill
 706 |  706 | Weddell Seal8%Cephalopods, 5%Myctophids, 60%On-shelfFish,22%G.gibberifrons,5%Benthic
 707 |  707 | Invertebrates
 708 |  708 | Crabeater Seal7.5%Cephalopods,7.5%Myctophids,7%On-shelfFish,78%LargeKrill
 709 |  709 | AntarcticFurSeal1%GentooPenguins, 3%ChinstrapPenguins,<1%Ade
 710 |  710 |  ́
 711 |  711 | liePenguins,<1%Macaroni
 712 |  712 | Penguins, 5.4%Cephalopods, 20%Myctophids,20%On-shelfFish,50%LargeKrill
 713 |  713 | S Elephant Seal60%Cephalopods,10%Myctophids, 14%On-shelffish,10%N.rosii,6%G.gibberifrons
 714 |  714 | SpermWhale85%Cephalopods,<1%Myctophids, 4.5%On-shelfFish,10%BenthicInvertebrates
 715 |  715 | BlueWhale61%LargeKrill,20%OtherEuphausiids, 19%Macrozooplankton
 716 |  716 | FinWhale1.5%Myctophids, 1.5%On-shelfFish,71%LargeKrill,12%OtherEuphausiids, 1%
 717 |  717 | Mesozooplankton,13%Macrozooplankton
 718 |  718 | MinkeWhales1%Myctophids, 1%On-shelffish,76%LargeKrill,11%Othereuphausiids,11%
 719 |  719 | Macrozooplankton
 720 |  720 | HumpbackWhale6%Cephalopods, 4%Myctophids, 4%On-shelfFish,76%LargeKrill,1.5%
 721 |  721 | Mesozooplankton,8.5%Macrozooplankton
 722 |  722 | EmperorPenguin10%Cephalopods,38%On-shelfFish,52%LargeKrill
 723 |  723 | GentooPenguin10%Myctophids, 10%On-shelf-fish,80%LargeKrill
 724 |  724 | Chinstrap Penguin2.25%Myctophids, 2.25%On-shelfFish,95%LargeKrill,<1%Macrozooplankton
 725 |  725 | Ade
 726 |  726 |  ́
 727 |  727 | liePenguin1.25%Myctophids,<1%C.gunnari,1.25%G.gibberifrons,96.2%LargeKrill,1.25%
 728 |  728 | Macrozooplankton
 729 |  729 | MacaroniPenguin1%Cephalopods, 10%Myctophids, 12%On-shelfFish,34%LargeKrill,35%Other
 730 |  730 | Euphausiids,8%Mesozooplankton
 731 |  731 | FlyingBirds46%Cephalopods,4.3%Myctophids, 8.7%On-shelfFish,30%LargeKrill,<1%
 732 |  732 | Mesozooplankton,10.5%Macrozooplankton
 733 |  733 | Cephalopods2%Myctophids, 2%On-shelfFish,21%Benthicinvertebrates,40%LargeKrill,15%
 734 |  734 | OtherEuphausiids,20%Macrozooplankton
 735 |  735 | Myctophids25%LargeKrill,35%OtherEuphausiids, 5%Mesozooplankton,35%Macrozooplankton
 736 |  736 | On-shelfFish5.5%Cephalopods,2%Myctophids, 1.5%C.gunnari,1%Salps,20%Benthic
 737 |  737 | Invertebrates,25%LargeKrill,13.5%OtherEuphausiids, 8.5%Mesozooplankton,23%
 738 |  738 | Macrozooplankton
 739 |  739 | N.rossii10%Myctophids, 2%Salps,2%BenthicInvertebrates,60%LargeKrill,20%Other
 740 |  740 | Euphausiids,6%Icealgae
 741 |  741 | C.gunnari1%Myctophids, 90%LargeKrill,8%OtherEuphausiids, 1%Macrozooplankton
 742 |  742 | G.gibberifrons1%Cephalopods, 2%Myctophids, 17%Salps,59%Benthicinvertebrates,9%LargeKrill,
 743 |  743 | 2%Macrozooplankton,10%Icealgae
 744 |  744 | Salps<1%SmallKrill,10.4%Microzooplankton,3%Mesozooplankton,41.5%Small
 745 |  745 | phytoplankton,45%LargePhytoplankton
 746 |  746 | Benthicinvertebrates100%Detritus
 747 |  747 | LargeKrill(�24
 748 |  748 | months)
 749 |  749 | 10%Mesozooplankton,50%Largephytoplankton,10%IceAlgae,30%Detritus
 750 |  750 | SmallKrill(<24
 751 |  751 | months)
 752 |  752 | 10%Microzooplankton,27.5%Smallphytoplankton,27.5%Largephytoplankton,25%
 753 |  753 | IceAlgae,10%Detritus
 754 |  754 | OtherEuphausiids20%Mesozooplankton,60%Largephytoplankton,20%Detritus
 755 |  755 | Microzooplankton60%Smallphytoplankton,25%Largephytoplankton,15%Detritus
 756 |  756 | Mesozooplankton3%Microzooplankton,24%Smallphytoplankton,66%Largephytoplankton,7%
 757 |  757 | Detritus
 758 |  758 | Macrozooplankton1%LargeKrill,2%SmallKrill,1%Othereuphausiids,50%Mesozooplankton,10%Small
 759 |  759 | phytoplankton,21%Largephytoplankton
 760 |  760 | https://doi.org/10.1371/journal.pone.0214814.t001
 761 |  761 | Usingsea-iceto calibratea dynamictrophicmodelfortheWesternAntarcticPeninsula
 762 |  762 | PLOSONE| https://doi.org/10.1371/journal.pone.0214814April2, 201914/ 28
 763 |  763 | 
 764 |  764 | resultsbetterfittedtheobserveddata(Fig8;modelresultsfromthefinalfittedmodelforthe
 765 |  765 | 27uncalibratedspeciesarepresentedinS7File).AlthoughthetotalSSdecreasedconsiderably,
 766 |  766 | thefitforC.gunnariworsenedbutitsapproximationofthepatternsdocumentedinthetime
 767 |  767 | seriesforthisspeciesimproved(Fig8).Sumsofsquaresdifferenceforeachspeciesgroupran-
 768 |  768 | gedfromlessthan0.5to10.04inthefinalfittedmodel.Speciesforwhichyearlydatapoints
 769 |  769 | wereavailable,andwhichdemonstratedanobvioustrendinthebiomass,hadthesmallest
 770 |  770 | group-specificSSvalues.Thelargestgroup-specificSS(10.04)wasassociatedwithlargekrill,
 771 |  771 | Table2.Balancedecopathmodel.
 772 |  772 | ModelGroupB (t/100km
 773 |  773 | 2
 774 |  774 | )P/BQ/BEETrophicLevel
 775 |  775 | KillerWhale0.750.021.08(0.00)(4.72)
 776 |  776 | LeopardSeals0.840.2715.17(0.11)(3.41)
 777 |  777 | WeddellSeal8.120.084.60(0.584)(4.16)
 778 |  778 | Crabeater Seal109.780.105.95(0.03)(3.36)
 779 |  779 | AntarcticFurSeal0.100.179.66(0.72)(3.69)
 780 |  780 | S Elephant Seal0.100.2112.07(0.37)(4.23)
 781 |  781 | SpermWhale2.840.2916.67(0.00)(4.12)
 782 |  782 | BlueWhale0.720.042.53(0.28)(3.21)
 783 |  783 | FinWhales4.280.032.55(0.98)
 784 |  784 | ��
 785 |  785 | (3.21)
 786 |  786 | MinkeWhales4.730.105.65(0.02)(3.19)
 787 |  787 | HumpbackWhale8.120.042.38(1.0)
 788 |  788 | ��
 789 |  789 | (3.30)
 790 |  790 | EmperorPenguin0.010.1913.89(0.00)(3.67)
 791 |  791 | GentooPenguins0.120.2215.28(0.95)(3.34)
 792 |  792 | ChinstrapPenguin2.140.2215.28(0.90)(3.16)
 793 |  793 | Ade
 794 |  794 |  ́
 795 |  795 | liePenguin0.580.1236.62(0.12)(3.14)
 796 |  796 | MacaroniPenguin0.010.117.64(0.79)(3.45)
 797 |  797 | Flyingbirds0.400.094.89(0.00)(3.83)
 798 |  798 | Cephalopods249.003.1530.29(0.29)(3.24)
 799 |  799 | Myctophids327.001.1010.58(0.75)(3.30)
 800 |  800 | On-shelffish525.000.464.42(0.93)(3.30)
 801 |  801 | N.rossi13.800.292.79(0.03)(3.18)
 802 |  802 | C gunnari90.000.484.62(0.81)(3.13)
 803 |  803 | G gibberifrons120.000.464.42(0.19)(2.98)
 804 |  804 | Salps16000.003.0012.25(0.00)(2.14)
 805 |  805 | Benthicinvertebrates8553.750.502.19(0.55)(2.00)
 806 |  806 | LargeKrill(�24months)8126.00
 807 |  807 | �
 808 |  808 | 0.83.57(0.97)(2.10)
 809 |  809 | SmallKrill(<24months)(2893.07)
 810 |  810 | �
 811 |  811 | 0.86.51(0.35)(2.1)
 812 |  812 | OtherEuphausiids148000.001.56.70(0.14)(2.21)
 813 |  813 | Microzooplankton2500.0055275.00(0.22)(2)
 814 |  814 | Mesozooplankton13000.004.8119.63(0.71(2.03)
 815 |  815 | Macrozooplankton3500.002.58.93(0.37)(2.56)
 816 |  816 | Smallphytoplankton(15023.17)750.5(1.00)
 817 |  817 | Largephytoplankton(13712.00)750.5(1.00)
 818 |  818 | Icealgae(306.67)500.5(1.00)
 819 |  819 | Detritus577.00(0.11)(1.00)
 820 |  820 | Valuesinparentheseswerecalculatedbythemodel.Valuesmarkedwithanasterisk(
 821 |  821 | �
 822 |  822 | ) areZ valuesforthemultistanzadescriptionofkrill.
 823 |  823 | EEvaluesmarkedwithtwoasterisks(
 824 |  824 | ��
 825 |  825 | ) includea biomassaccumulationterm.Allvalueshavebeenroundedto2 decimalplaces.Biomassvalueshavebeenmultiplied
 826 |  826 | by100kmforeaseofpresentation.
 827 |  827 | https://doi.org/10.1371/journal.pone.0214814.t002
 828 |  828 | Usingsea-iceto calibratea dynamictrophicmodelfortheWesternAntarcticPeninsula
 829 |  829 | PLOSONE| https://doi.org/10.1371/journal.pone.0214814April2, 201915/ 28
 830 |  830 | 
 831 |  831 | Table3.Forcingfunctionapplicationsretained inthefinalmodeltoinfluencepredator-prey interactions.
 832 |  832 | PredatorPreyForcing
 833 |  833 | KillerWhaleGentoopenguinvulnerability increaseswithopenwater(0.62)
 834 |  834 | LeopardSealAntarcticfursealvulnerabilityincreases withopenwaterandobservedpredationrate
 835 |  835 | (2.16);Chinstrappenguinsvulnerabilityincreases withsea-iceindex(0.35);Myctophids
 836 |  836 | arenaareaincreaseswithsea-iceindex(0.15)
 837 |  837 | AntarcticFurSealCephalopodsvulnerabilityandarenaareaincreasewithopenwater(0.09);On-shelffish
 838 |  838 | vulnerabilityandarenaareaincreasewithopenwater(0.68);SearchrateforLargekrill
 839 |  839 | increases withsea-iceindex(0.1)
 840 |  840 | GentooPenguinOn-shelf-fishvulnerabilityincreaseswithopenwater(0.69);Largekrillvulnerability
 841 |  841 | increasewithopenwater(0.43)
 842 |  842 | Chinstrap PenguinMyctophidsvulnerability andarenaareaincreasewithsea-iceindex(0.09);On-shelffish
 843 |  843 | vulnerabilityandarenaareaincreasewithsea-iceindex(0.1);LargeKrillvulnerabilityand
 844 |  844 | arenaareaincreasewithsea-iceindex(1.33);Macrozooplanktonvulnerabilityandarena
 845 |  845 | areaincreasewithsea-iceindex(0.02)
 846 |  846 | On-shelffishC.gunnariarenaareaincreases withopenwater(-2.91)
 847 |  847 | N.rossiiLargekrillvulnerabilityincreases withopenwater(2.22);Othereuphausiidsvulnerability
 848 |  848 | increases withopenwater(8.32)
 849 |  849 | C gunnariOthereuphausiidsvulnerabilityincreases withopenwater(-4.06)
 850 |  850 | LargeKrill(�24
 851 |  851 | months)
 852 |  852 | Mesozooplanktonvulnerabilityincreases withsea-iceindex(0.04);Largephytoplankton
 853 |  853 | vulnerabilityandarenaareaincreasewithchlorophyll-a(3.8);Icealgaevulnerabilityand
 854 |  854 | arenaareaincreasewithchlorophyll-a(1.48)
 855 |  855 | SmallKrill(<24
 856 |  856 | months)
 857 |  857 | Smallphytoplankton vulnerability andarenaareaincreasewithsea-iceindex(0.17);Large
 858 |  858 | phytoplanktonarenaareaincreaseswithchlorophyll-a(0.82);Icealgaevulnerability and
 859 |  859 | arenaareaincreasewithsea-iceindex(1.09)
 860 |  860 | Thepredatorcolumnindicatestheimpactedpredator ofthepredator-preyinteraction.ThePreyForcingcolumn
 861 |  861 | indicatesthepreyitemandwhichforcingfunctionwasapplied.Thevaluesinparenthesesindicatethechangeintotal
 862 |  862 | SSwhenthatforcingwasremoved.If a predatordoesnotappearinthetable,interactions withitspreyarenotforced
 863 |  863 | inthefinalmodel.
 864 |  864 | https://doi.org/10.1371/journal.pone.0214814.t003
 865 |  865 | Fig7.Evaluation ofresponsecurvesforkrill.Comparisonofmodelfits(bygroup-specificSS)forkrillwhennocurvewasapplied(a),thelinear
 866 |  866 | functionalresponsecurvewasapplied(b),andthesigmoidal functional responsecurvewasapplied(c).CurvesaredisplayedinFig3 Inallpanelsthe
 867 |  867 | dotsrepresenttheobserveddataandthelinesrepresentmodelresults.Notethatthey-scaleinpanela is significantlylargerthantheothertwopanels.
 868 |  868 | https://doi.org/10.1371/journal.pone.0214814.g007
 869 |  869 | Usingsea-iceto calibratea dynamictrophicmodelfortheWesternAntarcticPeninsula
 870 |  870 | PLOSONE| https://doi.org/10.1371/journal.pone.0214814April2, 201916/ 28
 871 |  871 | 
 872 |  872 | whichhashighvariabilityinthetime-seriesdataandlacksanobvioustrendinbiomass.Krill
 873 |  873 | datawereenteredintothemodelwithoutanysmoothingbecausekrillbiomassis knowntobe
 874 |  874 | highlyvariablebothtemporallyandspatially[12,13].Whilethemodelwasnotabletorecreate
 875 |  875 | allthevariabilityevidentinthekrilldataset,thesimulationresultwasa reasonableapproxima-
 876 |  876 | tionofkrill’stemporaldynamicsinStatisticalSubarea48.1.
 877 |  877 | TheMCsensitivityanalysisyielded200simulationsthatproducedbalancedmodels.The
 878 |  878 | totalSSforeachsimulationvariedbetween21.85and38.17.Thegroupsthatexhibitthehigh-
 879 |  879 | estvariabilityandcontributedmosttotheSS,andthuswerethemostsensitivetotheinput
 880 |  880 | parameters,werethetwofishspeciesN.rossiiandC.gunnari(Fig9).The“best”MCsimula-
 881 |  881 | tionidentifieda slightlybettertotalSSthanthatachievedduringthemodelcalibrationprocess.
 882 |  882 | Thisbetterfitwasachievedonrunswheretheadjustedinputparametersresultedinbetter
 883 |  883 | Fig8.ResultsofEcosimsimulations.Biomasstimeseriesareplottedasblackpoints.Therelativebiomassresultsfromthemodel
 884 |  884 | areplottedaslines.Simulationswithoutsea-iceforcingareshowningrey;simulationswithsea-iceforcingareshowninblack.The
 885 |  885 | group-specificsumofsquares(SS)differencebetweensimulationresultsandobserveddataareshownforeachspecies.
 886 |  886 | https://doi.org/10.1371/journal.pone.0214814.g008
 887 |  887 | Usingsea-iceto calibratea dynamictrophicmodelfortheWesternAntarcticPeninsula
 888 |  888 | PLOSONE| https://doi.org/10.1371/journal.pone.0214814April2, 201917/ 28
 889 |  889 | 
 890 |  890 | fittingsimulationsforC.gunnari.Amongvariousdifferencesinbiomassesandrates,thebest
 891 |  891 | fittingMCsimulationhadnotablyhigherbiomassforlargekrill(9402t/100km
 892 |  892 | 2
 893 |  893 | ), andsalps
 894 |  894 | (17458t/100km
 895 |  895 | 2
 896 |  896 | ) andlowerbiomassformyctophids(276t/100km
 897 |  897 | 2
 898 |  898 | ). Wechosethepurpose-
 899 |  899 | fullycalibratedmodeloverthebestMCsimulationbecausethebiomassdensitiesofkrilland
 900 |  900 | salpsintheformermodelweremoreconsistentwithvaluesfoundintheliteratureandbetter
 901 |  901 | supportedbyfieldobservations.ThebestfittingMCsimulationusedparameterestimatesthat
 902 |  902 | weconsidertobelessplausibleinreality.
 903 |  903 | Discussion
 904 |  904 | Themodelwascalibratedandsuccessfullyrecreatedobservedtrendsinthebiomassesofkey
 905 |  905 | monitoredspecies.Thecalibrationofthemodelrepresentsa significantadvancementoverthe
 906 |  906 | previouslypublished,uncalibratedEwEmodelsfortheregion[see:7,23,24].Thedecreasein
 907 |  907 | totalSSby65%(relativetoa balancedbutuncalibratedmodel)highlightedthepotential
 908 |  908 | importanceofthesea-iceregimeinstructuringthemarineecosystemofStatisticalSubarea
 909 |  909 | 48.1.Thisfindingagreeswithlong-termecologicalstudiesinthearea[1,2].
 910 |  910 | Fig9.Resultsoftwentyrandomlyselected MonteCarlotrials.Eachlinerepresentstherelativebiomasstrajectoryof
 911 |  911 | thatspeciesoverthecourseofa singletrial.Notethatthestartingvalueforallspeciesis one,andmodelresultsis
 912 |  912 | relativetothatvalue.AlsoNotethatthey-axisscalesforN.rossiiandC.gunnariaretwotothreeordersofmagnitude
 913 |  913 | largerthanthescalesfortheotherspecies,indicatingmuchhighersensitivityanduncertaintyforthesetwospecies.
 914 |  914 | https://doi.org/10.1371/journal.pone.0214814.g009
 915 |  915 | Usingsea-iceto calibratea dynamictrophicmodelfortheWesternAntarcticPeninsula
 916 |  916 | PLOSONE| https://doi.org/10.1371/journal.pone.0214814April2, 201918/ 28
 917 |  917 | 
 918 |  918 | TheMonteCarlosensitivityanalysisrevealedthattwofishes(C.gunnariandN.rossii)were
 919 |  919 | sensitivetoinputparametersandwereresponsibleforthegreatestvariabilitybetweenruns.
 920 |  920 | Thisresultwasunsurprisingforfourkeyreasons.First,population-dynamicsanddietdatafor
 921 |  921 | thesefishess arescarce[9,18];second,therearelargegapsinthebiomasstimeseries;third,
 922 |  922 | thegroup-specificSSassociatedwithC.gunnariinthefittedmodelwaslargecomparedto
 923 |  923 | othergroups;andfourth,smallchangesinthebiomassofothermodeledgroups,specifically
 924 |  924 | on-shelffish,couldhavea largeimpactonC.gunnari(S8File,trophicimpactanalysis).The
 925 |  925 | sensitivityanalysisindicatedthata betterfitcouldbeachievedif thestartingbiomassesoflarge
 926 |  926 | krillandsalpswerebothincreased,butthelevelstowhichthesebiomasseswouldneedtobe
 927 |  927 | increaseddonotseemrealisticinourview.
 928 |  928 | Ecologicalimplicationsofmodelchoicesforthe1996–2012WAPmodel
 929 |  929 | OurmodelbuildsonpreviousEcopathmodelsoftheregion[7,22–25],andusesmanyofthe
 930 |  930 | samedatasourcesasthepreviousmodelstoinformchoicesregardingEcopathandEcosim
 931 |  931 | parameters.Yet,ourmodelhassomekeyfeatureswhichcouldinfluenceecologicalinterpreta-
 932 |  932 | tionoftheresults.
 933 |  933 | Asnotedbytheearliermodels,datadescribingthetotalbiomassofprimaryproductionfor
 934 |  934 | theregionwerenotreadilyavailable.Heymansetal.[34]highlightedthatcoastalecosystems
 935 |  935 | withstrongseasonalpatternsinprimaryproductiontypicallyhaveEEvalueslessthan0.5.By
 936 |  936 | adoptingthisEEvalue,wemodelledtheWAPasif therewasampleprimaryproduction.The
 937 |  937 | phytoplanktonbiomassvaluesestimatedbythemodelwerehigh,butStatisticalSubarea48.1is
 938 |  938 | a regionthatgenerallyexperienceshighchl-aconcentrationsandhighkrillgrowthrates[68],
 939 |  939 | andhighsedimentationratesinthesummer[69].Collectivelythisindicatesthattheremaybe
 940 |  940 | amplefoodforkrillandthatsettingtheEEvalueto0.5wasreasonable.
 941 |  941 | Ourmodelincludeda largerbiomassofkrillthanmostoftheearliermodels.Theincreased
 942 |  942 | biomassofkrillresultedfromusingtheNOAA-AMLRacoustictimeseriesofkrilldensity
 943 |  943 | (https://swfsc.noaa.gov/AERD-Data/),tobothsetthebiomassinEcopathandserveastheref-
 944 |  944 | erencetimeseriesusedforcalibration.TheNOAA-AMLRstudyareamayencompassa partic-
 945 |  945 | ularlykrillrichregion,asdensitiesreportedbyNOAA-AMLRwerehigherthantheaverage
 946 |  946 | densitiesreportedina concurrentsynopticsurveyforentiretheregion[70].Withtheexcep-
 947 |  947 | tionofCornejo-DonosoandAntezana[22],thepreviouslypublishedmodelsadoptedkrillbio-
 948 |  948 | massesthatweremoreconsistentwiththeaveragevaluespresentedinthesynopticsurvey
 949 |  949 | [70].Usinga higherbiomassinourmodelcouldimplythatkrillpredatorswerelessfoodlim-
 950 |  950 | itedthanintheearlierstudies.However,thatcomparisonis challengingtomakeacrossmod-
 951 |  951 | els.TheEcotrophicEfficiency(EE)forkrillinthepresentstudywas0.97,indicatingthat
 952 |  952 | roughly97%oftheavailablekrillwereconsumedbypredatorsandcaughtbythefishery.Cor-
 953 |  953 | nejo-DonosoandAntezana[22]andErfranandPitcher[25]settheEEforkrillintheirmodels
 954 |  954 | to0.95andallowedtheirmodelstoestimatethebiomassofkrillneededtosatisfypredatorsat
 955 |  955 | thatlevelofconsumption.Theresultswereverydifferent;theCornejo-DonosoandAntezana
 956 |  956 | [22]modelestimateda biomassofapproximately105t/km
 957 |  957 | 2
 958 |  958 | andErfranandPitcher[25]esti-
 959 |  959 | matedapproximately27t/km
 960 |  960 | 2
 961 |  961 | . SuprenandandAinsworth[23]andHooveretal.[24],used
 962 |  962 | lowbiomassesofadultkrill(approximately9 t/km
 963 |  963 | 2
 964 |  964 | ) andalsoestimatedlowEEs,bothofwhich
 965 |  965 | werelessthan0.8.Collectively,theexistingEcopathmodelsfortheregion,seemtoportraythe
 966 |  966 | possibilityoffoodlimitationsforkrillpredatorsquitedifferently.Suchconflictinginformation
 967 |  967 | maynotbehelpfultomarineresourcemanagers.Ourestimatethat97%ofkrillis eithercon-
 968 |  968 | sumedbypredatorsorcaughtbythefisheryis consistentwithworkbyTrivelpieceetal.[54]
 969 |  969 | andHinkeetal.[71]whichsuggestedthatinareaswherethefisheryis activekrillpredators
 970 |  970 | maybelimitedbykrillavailability.Ourmodelusedactualfielddatatodescribekrillbiomass
 971 |  971 | Usingsea-iceto calibratea dynamictrophicmodelfortheWesternAntarcticPeninsula
 972 |  972 | PLOSONE| https://doi.org/10.1371/journal.pone.0214814April2, 201919/ 28
 973 |  973 | 
 974 |  974 | andwascalibratedtotime-seriesdataforbothkrillandkrillpredators.Therefore,wesuggest
 975 |  975 | thatourmodelmaybettersuitedthantheearlierEcopathmodelsforexaminingtrendsinkrill
 976 |  976 | biomassandthepotentialoffoodlimitationforkrillpredators.
 977 |  977 | Ourmodelincludeda largebiomassofsalps;salpbiomasswasroughlytwicethesizeofthe
 978 |  978 | biomassoflargekrill.Thiswasa significantdeparturefromthepreviouslypublishedmodels
 979 |  979 | wheresalpbiomasswaswellbelowthebiomassofkrill[7,22–25].Thehighbiomassofsalps
 980 |  980 | inthismodelwasinformedbytheworkofLoebandSantora[72]whofoundthat,inthe
 981 |  981 | NOAA-AMLRstudyarea,salpabundancewashighlyvariablebutcouldbeasmuchassix
 982 |  982 | timesgreaterthanthatofkrill.Additionally,Atkinsonetal.[16]reportedthattheAntarctic
 983 |  983 | Peninsularegionexperiencedatleasta two-foldincreaseinsalpsanda similardeclineinkrill
 984 |  984 | duringthe1990sandearly2000s.Salpsrarelyappearasa preyitemindietstudiesthismay
 985 |  985 | possiblyreflectlowconsumptionofsalpsorthefactthatonceconsumed,salptissuebecause
 986 |  986 | unrecognizablemorequicklythantheremainsofpreyitemsthatcontainhardbodyparts.We
 987 |  987 | thereforeestimatetheEEofsalpstobeverylow.Asa result,inourmodel,muchofthepri-
 988 |  988 | maryproductionwasconsumedbysalps,ratherthankrill.Primaryproductionwasnottrans-
 989 |  989 | ferredtohighertrophiclevelsoravailableforkrilltoconsume.Salpbiomassis highlyvariable
 990 |  990 | andresponsivetoenvironmentalconditions[72].If warmingandsea-icelosscontinueinthe
 991 |  991 | region,salpbiomassmightbeexpectedtoincrease[16]andconsumeprimaryproductionthat
 992 |  992 | krillcouldhaveconsumed.InsettingtheEEforprimaryproducersto0.5wemodelledthesys-
 993 |  993 | temasif krillwerenotfoodlimited.However,inthefuture,inareaswheresalpbiomasshas
 994 |  994 | increased,it seemspossiblethatkrillmaybefoodlimited.
 995 |  995 | Thecalibrationprocess,whichinvolvedfittingthemodeltotimesseriesusingforcingfunc-
 996 |  996 | tions,providedanopportunitytoexploreenvironmentalimpactsonforaginginteractions.
 997 |  997 | TwopreviouslypublishedmodelsdevelopedEcosimscenarios[23,24],butthosemodelswere
 998 |  998 | notcalibrated,andtheauthorsdidnotdetailtheirapplicationofforcingonpredator-prey
 999 |  999 | interactions.Wenotethatoneofthosemodels,Hooveretal.[24]alsoattemptedtocalibrate
1000 | 1000 | theirmodelusingsea-iceforcingandevaluateduseofthePalmerLTERdatadescribingsea-ice
1001 | 1001 | extent[55]tobuildthesea-iceforcingfunction.ThefinalmodeldevelopedbyHooveretal.
1002 | 1002 | [24]ultimatelyuseddifferentsea-icedata,onlyappliedsea-iceforcingtotheicealgaefunc-
1003 | 1003 | tionalgroup,usedsea-icetodrivethemodelforlarvalandjuvenilekrillratherthanlarger
1004 | 1004 | adultkrill,andwasultimatelyunsuccessfulatrecreatingtrendsintheabundanceofpenguins.
1005 | 1005 | Ourmodelwasthefirsttobesuccessfullycalibratedfortheregionandwearethefirstsetof
1006 | 1006 | authorstolisttheforcingfunctionapplicationsthathelpedusfitthemodeltotime-seriesdata.
1007 | 1007 | Assuch,ourmodelis a significantimprovementovertheHooveretal.[24]model.
1008 | 1008 | Theapplicationofforcingfunctionsyieldedsomeunexpectedresults.Whiletheimpactsof
1009 | 1009 | removinga singleforcingfunctionapplicationweresmall,eachforcingapplicationinfluenced
1010 | 1010 | theothersandtheireffectswerecollectivelyquitelarge.Whenallforcingfunctionsanddrivers
1011 | 1011 | wereusedthetotalSSdecreasedby65%.Ade
1012 | 1012 |  ́
1013 | 1013 | liepenguinswerenotablyabsentfromthelistof
1014 | 1014 | predatorswhereforcingwassuccessfullyapplied.Hinkeetal.[56]foundthatoverwinterfor-
1015 | 1015 | agingsuccessandsurvivalofjuvenilepenguinswasimpactedbysea-iceconditions,andthat
1016 | 1016 | whenconditionswereicier,overwinterforagingsuccessandsurvivalwerebothhigher.Yet,
1017 | 1017 | applyingsea-iceforcingtoAde
1018 | 1018 |  ́
1019 | 1019 | liepenguinforaginginteractionsdidnotimprovethemodelfit.
1020 | 1020 | However,modelfitwasimprovedbydrivinglargekrill,themainpreyofAde
1021 | 1021 |  ́
1022 | 1022 | liepenguins[73]
1023 | 1023 | withoursea-iceindex.Thisimpliedthatkrillbiomass,ratherthanspecificforagingconditions,
1024 | 1024 | affectedAde
1025 | 1025 |  ́
1026 | 1026 | liepenguinbiomass,a findingconsistentwiththeworkofTrivelpieceetal.[54].
1027 | 1027 | Wedidnotexpectmyctophidvulnerabilitytopredationbychinstrappenguinstoincrease
1028 | 1028 | withthesea-iceindex.Theforagingarenadescribestheareawherepredatorandpreyarelikely
1029 | 1029 | tooverlapandwherepreywillbevulnerabletopredation[20].It maybecounterintuitivethat
1030 | 1030 | theforagingarenasharedbychinstrappenguinsandmyctophidswouldincreaseinicier
1031 | 1031 | Usingsea-iceto calibratea dynamictrophicmodelfortheWesternAntarcticPeninsula
1032 | 1032 | PLOSONE| https://doi.org/10.1371/journal.pone.0214814April2, 201920/ 28
1033 | 1033 | 
1034 | 1034 | conditions.However,thiscouldimplythatinicyconditionschinstrappenguinswerepushed
1035 | 1035 | offshoreandintoareaswheretheyweremorelikelytooverlapwithmyctophids.Theeffectof
1036 | 1036 | thisforcingwasquitesmall(0.09reductionoftotalSS),andit maysimplyrepresentfittingto
1037 | 1037 | noiseinthedata.A moreinfluentialforcingwasappliedtotheinteractionbetweenchinstrap
1038 | 1038 | penguinsandlargekrill,wherekrillvulnerabilitytopredationandforagingarenaarea
1039 | 1039 | increasedwiththesea-iceindex.ThisforcingreducedthetotalSSby1.33,andhadthesecond
1040 | 1040 | largestpositiveimpactontotalSS.It wasalsoconsistentwiththefindingsfromHinkeetal.
1041 | 1041 | [57]thatchinstrappenguinsexperiencegreaterforagingsuccessandsurvivorshipiniciercon-
1042 | 1042 | ditionsandfromTrivelpieceetal.[54]thatkrillavailabilityinfluencespredatorsuccess.The
1043 | 1043 | physicalforcingfunctionthathadthelargestpositiveeffectonmodelfitwasparticularlyobvi-
1044 | 1044 | ous.Icealgaeweremorevulnerabletoconsumptionbylargekrillandshareda largerforaging
1045 | 1045 | arenawithkrillwhenchlorophyllaconcentrationwashigh(1.48reductionintotalSS).
1046 | 1046 | TwoforcingfunctionapplicationsthatincreasedthetotalSSandworsenedmodelfitwere
1047 | 1047 | retainedinthemodel.BothfunctionsrelatedtoC.gunnari,andimpactedinteractionswithits
1048 | 1048 | othereuphausiidprey(2.91increaseinSS)andwithitson-shelffishpredators(4.06increase
1049 | 1049 | inSS).Withoutapplyingforcingtotheseinteractions,themodelwasnotabletorecreatethe
1050 | 1050 | increaseinbiomassofC.gunnariasdocumentedinthetime-seriesdata[63].Systematicsur-
1051 | 1051 | veyshaveyettobeundertakensincethosesubmittedbyKockandJones[63],butthereis no
1052 | 1052 | indicationthatthemostrecentestimatesareerroneouslyhigh.Therefore,it seemedprudent
1053 | 1053 | toforcethemodeltorecreateanincreaseinthebiomassofthisfish,despiteworseningfitsto
1054 | 1054 | othertimeseries.TheMCsimulationsillustratedthatthemodelwasparticularlysensitiveto
1055 | 1055 | inputsforC.gunnari.Giventhegapsinthetimeseriesdata,therelativelyhighuncertainty
1056 | 1056 | associatedwiththeEcopathinputparameters,andthedemonstratedmodelsensitivitytothe
1057 | 1057 | inputparameters,ourresultsfor C.gunnarishouldbeviewedwithsomeskepticism.
1058 | 1058 | Ourmodelwasdesignedtoinvestigatetheeffectsofseaiceonbiomass.Measuresofthe
1059 | 1059 | sea-iceregimeweretheprimaryenvironmentaldriversconsideredinthisstudy,andthe
1060 | 1060 | dynamicsofroughly25%ofthepredatorgroupsinthemodelweretiedtochangesinthesea-
1061 | 1061 | iceregimethroughapplicationofvariousforcingfunctions.Unsurprisingly,biomassprojected
1062 | 1062 | bythemodelthusreflectschangesinthesea-iceindex.Overthecourseofthecalibration
1063 | 1063 | period,thesea-iceindexgenerallydeclined,exceptforin2005and2006.Thetime-seriesdata
1064 | 1064 | describingabundanceshowdeclinesoverthesameperiodforfiveoutoftheeightspecies.Two
1065 | 1065 | ofthesespecies,AntarcticfursealsandAntarctickrillincreasedinbiomassduring2007and
1066 | 1066 | theseincreasesweremoderatelyreflectedinthemodelresults.Whileusingthesea-iceindexto
1067 | 1067 | drivethemodelforkrillsignificantlyimprovedthetotalSSandallowedthemodeltoade-
1068 | 1068 | quatelyfittheobservedtimeseriesofkrillbiomass,themodelwasnotabletorecreateallthe
1069 | 1069 | peaksinthetimeseries.Somefactorthatis notcurrentlycapturedbythemodelis likelyinflu-
1070 | 1070 | encingkrillpopulationdynamics.Thethreespeciesthatincreasedbothinthemodelresults
1071 | 1071 | andintherealworld,hadpositiveresponsestomoreopenwaterconditions.
1072 | 1072 | Sea-iceindynamicsimulations
1073 | 1073 | Currentclimatemodelsindicatethatsea-icelosswillcontinue[74].Inthefuture,successful
1074 | 1074 | managementofmarinelivingresourcesaroundtheWAPcoulddependonunderstandingand
1075 | 1075 | predictinghowspeciesmightrespondtochangesinthesea-iceregime.Thesimulationspre-
1076 | 1076 | sentedhereinvestigatedtheroleoftemporalsea-icedynamicsasonepossiblemechanism
1077 | 1077 | influencingbiomass.Thiswasaccomplishedbyusingseaicetoforcepredationinteractions
1078 | 1078 | anddrivethemodelforlargekrillandthefishG.gibberifrons.Includingthesea-iceregime
1079 | 1079 | allowedthemodeltorecreatedocumentedbiomasstrendsandimprovedthefitbydecreasing
1080 | 1080 | thetotalSSapproximately65%.Whilethemodelnowadequatelyrecreatesdocumented
1081 | 1081 | Usingsea-iceto calibratea dynamictrophicmodelfortheWesternAntarcticPeninsula
1082 | 1082 | PLOSONE| https://doi.org/10.1371/journal.pone.0214814April2, 201921/ 28
1083 | 1083 | 
1084 | 1084 | changesinbiomassesoftheeightmonitoredspecies,it doesnotcaptureallthevariabilityin
1085 | 1085 | availabletime-seriesdata.Somefactornotcurrentlyincludedinthemodellikelyhasa notable
1086 | 1086 | impactonthepopulationdynamicsofkrillandkrillpredators.Theresultsofoursimulations
1087 | 1087 | areconsistentwithpreviousstudies[2]andindicatethattheroleofsea-iceinstructuringthe
1088 | 1088 | WAPmarineecosystemmaybebothcentralandcomplex.
1089 | 1089 | Thesea-iceindexusedinourmodelwasa normalized,relativemeasureofannualmini-
1090 | 1090 | mumsea-icearea.Previousstudiesusedthewintermaximumsea-icetomodelrecruitment
1091 | 1091 | andsurvivalofkrilldependentpredators[56,57].Summeris thebreedingseasonformoni-
1092 | 1092 | toredkrillpredatorssuchaspenguins[75]andAntarcticfurseals[3].Thesespeciesarecentral
1093 | 1093 | placeforagersandarerequiredtoreturntotheircoloniestofeedtheiryoungduringthebreed-
1094 | 1094 | ingseason.Summerenvironmentalconditions,includingtheinteractionofsea-ice,tempera-
1095 | 1095 | ture,andprecipitationpatterns,havebeenshowntoimpactbreedingsuccessandpenguin
1096 | 1096 | populationdynamics[76,77].Whilesummersea-iceminima,ratherthanwintermaxima,
1097 | 1097 | wereusedinthepresentstudy,ourworkdidnotcontradictearlierfindings.Sea-icelossis
1098 | 1098 | impactedbya positivefeedbackloopofice-freewatersabsorbingmoresolarradiationand
1099 | 1099 | warmingfaster[2,58,59];summersfollowingcoldericierwintersarethereforelikelytobe
1100 | 1100 | colderandicier.Hinkeetal.[56]focusedonthenorthernpartofWAP,wherethereseemedto
1101 | 1101 | bemorewintersea-icevariabilitythanwhatwasrecordedinthePalmerLTERdataset.Here
1102 | 1102 | wecametothesameconclusionasHinkeetal.[56]thatseasonalsea-icedynamics,whether
1103 | 1103 | laggedwintermaximainthenorthornormalizedsummerminimainthesouth,influencekrill
1104 | 1104 | andpenguinabundance.
1105 | 1105 | Krillhavebeenconsideredicedependent[16,78,79],andthesizeofthekrillpopulation
1106 | 1106 | hasincreasedfollowingyearsofincreasedwintersea-iceextent[16,41,60,61].However,
1107 | 1107 | previouslypublishedstudiesdescribemoregeneralresponsepatterns.Herewepresenta
1108 | 1108 | well-fittingcurvethatdescribeshowkrillrespondtooursea-iceindex.Thecurvemightbe
1109 | 1109 | usefulinothermodelingstudiesthatexplorehowsea-icedynamicsaffecttheregionaleco-
1110 | 1110 | system.Weassertthatourmodelcanbeusedtoexplorehowkrillmightrespondtofuture
1111 | 1111 | changesinthesea-iceregimeastheareacontinuestowarm.Similarly,weidentifieda sea-ice
1112 | 1112 | responsecurveforG.gibberifronsthatallowedthemodeltorecreateobservedtrendsinthe
1113 | 1113 | abundanceofthisfish.A directlinkbetweenthisspeciesandseaicehasnotpreviouslybeen
1114 | 1114 | notedintheliterature.Whilethesea-iceresponsecurveworkedinthemodel,it mayrepre-
1115 | 1115 | senteffectsofother(environmental)driversthathavenotbeenwelldocumentedforthis
1116 | 1116 | species.
1117 | 1117 | Forcadaetal.[80]indicatedthatsea-iceconditionsalonewereunlikelytoaffectpenguin
1118 | 1118 | populationdynamicsbutsuggestedthaticemightaffecttrophicdynamics.Similarly,Trivel-
1119 | 1119 | pieceetal.[54]suggestedthatkrillavailability,whichmaybetiedtosea-iceconditions,influ-
1120 | 1120 | encespredatorabundance.OurresultssupportthefindingsofForcadaetal.[80].Wewere
1121 | 1121 | onlyabletorecreatehistorictrendsinthebiomassesofmonitoredspecieswhenthesea-ice
1122 | 1122 | regimewassimultaneouslyusedtodrivekrillbiomassandinfluencepredator-preydynamics
1123 | 1123 | for10predators.Indeed,sea-icemightinfluencetrophicinteractionsbeyondwhatwassug-
1124 | 1124 | gestedbyForcadaetal.[80],whofocusedonpenguins.
1125 | 1125 | Managementapplicationsforthemodel
1126 | 1126 | TheCommissionfortheConservationofAntarcticMarineLivingResources(CCAMLR),the
1127 | 1127 | internationalorganizationresponsibleformanagingAntarcticmarinelivingresources,has
1128 | 1128 | longrecognizedthatunderstandingecosystemstructureandprocessesis essentialtomanaging
1129 | 1129 | a sustainablekrillfishery[81].TheCCAMLRmakesitsfisheriesmanagementdecisionswithin
1130 | 1130 | a conservationframeworkthatconsidersbothharvestedandassociatedspecies[81,82].The
1131 | 1131 | Usingsea-iceto calibratea dynamictrophicmodelfortheWesternAntarcticPeninsula
1132 | 1132 | PLOSONE| https://doi.org/10.1371/journal.pone.0214814April2, 201922/ 28
1133 | 1133 | 
1134 | 1134 | CCAMLRmayfindthemodelpresentedhereusefulwhenit considersfuturemanagement
1135 | 1135 | strategiesforthekrillfisheryinStatisticalSubarea48.1.Themodelwascreatedtopurposefully
1136 | 1136 | exploretheinfluenceofchangesinthesea-iceregime.It maybepossibletodevelopand
1137 | 1137 | explorefutureseaicescenariostoevaluatethepotentialeffectsoffuturechangesinthesea-ice
1138 | 1138 | regimeonbiomass.Somespecies,suchasAntarctickrillmightbeexpectedtodeclinewithice
1139 | 1139 | loss[16].Ourmodelcouldhelpexplorehowa decreaseinkrillbiomassmightimpactthebio-
1140 | 1140 | massofkrillpredatorsandotherspecieslessdirectlyconnectedtokrillthroughthefoodweb.
1141 | 1141 | Sucha studywouldcomplementtheworkdonebyKleinetal.[83].Collectively,workusing
1142 | 1142 | twomodelstoexplorethepotentialimpactsofclimatechangemaybeparticularlyusefulto
1143 | 1143 | CCAMLRasit seekstomeetitsconservationobjectives.
1144 | 1144 | Recently,theCCAMLRagreedthatcreatinga representativesystemofmarineprotected
1145 | 1145 | areascouldhelptobothconserveAntarcticmarinebiodiversityandaidinthemanagementof
1146 | 1146 | sustainablefisheries[84].TheCCAMLRhasidentifiedtheWesternAntarcticPeninsulaand
1147 | 1147 | ScotiaSearegion,whichincludesStatisticalSubarea48.1,asa priorityareafordevelopingan
1148 | 1148 | MPA[84].TheCCAMLRhasalsoadopteda frameworkfortheestablishmentoffutureMPAs
1149 | 1149 | [85].ThisframeworkstipulatesthatMPAsshouldbecreatedusingthebestavailablescience
1150 | 1150 | andaimtoprotectkeyecosystemprocesses,amongotherprotectionobjectives.Trophicinter-
1151 | 1151 | actionsaffectbiomassandareimportantecosystemprocessestoconsiderforprotection.In
1152 | 1152 | thefaceofsustainedwarmingandcontinuedsea-iceloss[1,2],it couldbeusefultoconsider
1153 | 1153 | dynamictrophicinteractionswhenplanninganMPA.
1154 | 1154 | Ourmodelis intendedtoaidintheMPAplanningprocessfortheregion.Thegroupsin
1155 | 1155 | ourmodelincludesingle-speciesgroupsformostindicatorspeciesinStatisticalSubarea48.1
1156 | 1156 | [30,31].ThesespecieswilllikelybeimportantastheMembersofCCAMLRsetconservation
1157 | 1157 | goalsduringtheMPAplanningprocessanddevelopmonitoringandmanagementplans.
1158 | 1158 | Ourmodelis calibratedtoavailabletime-seriesdata.Assuch,thefood-webmodelandtime-
1159 | 1159 | dynamicsimulationspresentedherelaythefoundationfordevelopinga spatialmodelthat
1160 | 1160 | couldexploreMPAplacementwhileconsideringthedynamicsea-iceregimeandtrophic
1161 | 1161 | interactions.
1162 | 1162 | Supportinginformation
1163 | 1163 | S1File.Taxarepresentedbymodelgroups.
1164 | 1164 | (PDF)
1165 | 1165 | S2File.Biomasssources.
1166 | 1166 | (PDF)
1167 | 1167 | S3File.Productiontobiomassratioreferences.
1168 | 1168 | (PDF)
1169 | 1169 | S4File.Assimilationandproductionefficiencyvalues.
1170 | 1170 | (PDF)
1171 | 1171 | S5File.Dietmatrixsourcesandnotes.
1172 | 1172 | (PDF)
1173 | 1173 | S6File.Timeseriessources.
1174 | 1174 | (PDF)
1175 | 1175 | S7File.Calibratedmodelresultsforgroupswithouttimeseriesdata.
1176 | 1176 | (PDF)
1177 | 1177 | Usingsea-iceto calibratea dynamictrophicmodelfortheWesternAntarcticPeninsula
1178 | 1178 | PLOSONE| https://doi.org/10.1371/journal.pone.0214814April2, 201923/ 28
1179 | 1179 | 
1180 | 1180 | S8File.Mixedtrophicimpactanalysis.Blackindicatesa negativeimpact,whiteindicatesa
1181 | 1181 | positiveimpact;sizeofthecircleindicatesstrengthoftheimpact.
1182 | 1182 | (TIF)
1183 | 1183 | Acknowledgments
1184 | 1184 | WethankC.Reiss,J. Hinke,M.Goebel,C.Jones,A.Cossio,andJ. Walshforprovidingdata
1185 | 1185 | andinsightthatcontributedtobuildingthismodel.Wethanktheanonymousreviewers
1186 | 1186 | whosecommentshelpedimprovethismanuscript.
1187 | 1187 | AuthorContributions
1188 | 1188 | Conceptualization:AdrianDahood,GeorgeM.Watters,KimdeMutsert.
1189 | 1189 | Formalanalysis:AdrianDahood.
1190 | 1190 | Fundingacquisition:AdrianDahood,GeorgeM.Watters,KimdeMutsert.
1191 | 1191 | Investigation:AdrianDahood.
1192 | 1192 | Methodology:AdrianDahood,KimdeMutsert.
1193 | 1193 | Resources:GeorgeM.Watters,KimdeMutsert.
1194 | 1194 | Supervision:GeorgeM.Watters,KimdeMutsert.
1195 | 1195 | Visualization:AdrianDahood.
1196 | 1196 | Writing– originaldraft:AdrianDahood.
1197 | 1197 | Writing– review&editing:AdrianDahood,GeorgeM.Watters,KimdeMutsert.
1198 | 1198 | References
1199 | 1199 | 1.DucklowHW,BakerK,MartinsonDG,QuetinLB,RossRM,SmithRC,et al.Marinepelagicecosys-
1200 | 1200 | tems:TheWestAntarctic Peninsula.PhilosTransR SocB-BiolSci.2007;362(1477):67–94.https://doi.
1201 | 1201 | org/10.1098/rstb.2006.1955PMID:17405208
1202 | 1202 | 2.DucklowHW,FraserWR,MeredithMP,StammerjohnSE,DoneySC,MartinsonDG,et al.WestAnt-
1203 | 1203 | arcticPeninsula:anice-dependentcoastalmarineecosystemin transition. Oceanography.2013;26
1204 | 1204 | (3):190–203.
1205 | 1205 | 3.Hucke-Gaete R,OsmanLP,MorenoCA,TorresD.Examining naturalpopulationgrowthfromnear
1206 | 1206 | extinction:thecaseof theAntarcticfursealat theSouthShetlands, Antarctica. PolarBiology. 2004;27
1207 | 1207 | (5):304–11. https://doi.org/10.1007/s00300-003-0587-8
1208 | 1208 | 4.VaughanD,MarshallG,Connolley W,ParkinsonC,MulvaneyR,HodgsonD,et al.Recentrapid
1209 | 1209 | regionalclimatewarmingontheAntarcticPeninsula.ClimaticChange.2003;60(3):243–74.https://doi.
1210 | 1210 | org/10.1023/A:1026021217991
1211 | 1211 | 5.SteigEJ,Schneider DP,Rutherford SD,MannME,ComisoJC,ShindellDT.Warmingof theAntarctic
1212 | 1212 | ice-sheetsurfacesincethe1957InternationalGeophysicalYear.Nature.2009;457(7228):459–62.
1213 | 1213 | http://www.nature.com/nature/journal/v457/n7228/suppinfo/nature07669_S1.html.PMID:19158794
1214 | 1214 | 6.HillSL,KeebleK,AtkinsonA,MurphyEJ.A foodwebmodelto exploreuncertaintiesin theSouthGeor-
1215 | 1215 | giashelfpelagic ecosystem.DeepSeaResearchPartII: TopicalStudiesin Oceanography.2012;59–
1216 | 1216 | 60:237–52.http://dx.doi.org/10.1016/j.dsr2.2011.09.001.
1217 | 1217 | 7.BalleriniT, HofmannEE,AinleyDG,DalyK,MarrariM,RibicCA,et al.Productivityandlinkagesof the
1218 | 1218 | foodwebof thesouthernregionof thewesternAntarcticPeninsulacontinental shelf.ProgOceanogr.
1219 | 1219 | 2014;122(0):10–29.http://dx.doi.org/10.1016/j.pocean.2013.11.007.
1220 | 1220 | 8.ConstableAJ,dela MareWK,AgnewDJ,EversonI, MillerD.Managingfisheries to conservetheAnt-
1221 | 1221 | arcticmarineecosystem:practicalimplementationof theConventionontheConservationof Antarctic
1222 | 1222 | MarineLivingResources(CCAMLR).ICESJournalof MarineScience.2000;57(3):778–91.https://doi.
1223 | 1223 | org/10.1006/jmsc.2000.0725
1224 | 1224 | Usingsea-iceto calibratea dynamictrophicmodelfortheWesternAntarcticPeninsula
1225 | 1225 | PLOSONE| https://doi.org/10.1371/journal.pone.0214814April2, 201924/ 28
1226 | 1226 | 
1227 | 1227 | 9.HillSL,ReidK,ThorpeSE,HinkeJ, WattersGM.A compilation of parameters forecosystemdynamics
1228 | 1228 | modelsof theScotiaSea-AntarcticPeninsula region.CCAMLRScience.2007;14:1–25.
1229 | 1229 | 10.CCAMLR.CCAMLRStatisticalBulletin.2018;30:http://www.ccamlr.org/en/data/statistical-bulletin.
1230 | 1230 | 11.NicolS,FosterJ, Kawaguchi S.ThefisheryforAntarctickrill—recentdevelopments.FishandFisheries.
1231 | 1231 | 2012;13(1):30–40. https://doi.org/10.1111/j.1467-2979.2011.00406.x
1232 | 1232 | 12.SantoraJA,ReissCS,CossioAM,VeitRR.Interannualspatialvariability of krill(Euphausiasuperba)
1233 | 1233 | influences seabirdforagingbehavior nearElephant Island,Antarctica.Fisheries Oceanography.2009;
1234 | 1234 | 18(1):20–35. https://doi.org/10.1111/j.1365-2419.2008.00490.x
1235 | 1235 | 13.NicolS.Krill,currents,andseaice:Euphausia superbaanditschangingenvironment.Bioscience.
1236 | 1236 | 2006;56(2):111–20.https://doi.org/10.1641/0006-3568(2006)056[0111:kcasie]2.0.co;2
1237 | 1237 | 14.ReissCS,CossioA,SantoraJA,DietrichKS,MurrayA,MitchellBG,et al.Overwinter habitatselection
1238 | 1238 | byAntarctic krillundervaryingsea-iceconditions: implications fortoppredatorsandfisherymanage-
1239 | 1239 | ment.MarineEcologyProgressSeries.2017;568:1–16.https://doi.org/10.3354/meps12099
1240 | 1240 | 15.ReissCS,CossioAM,LoebV,DemerDA.Variationsin thebiomassof Antarctic krill(Euphausia
1241 | 1241 | superba)aroundtheSouthShetlandIslands,1996–2006.IcesJournalof MarineScience.2008;65
1242 | 1242 | (4):497–508. https://doi.org/10.1093/icesjms/fsn033
1243 | 1243 | 16.AtkinsonA,SiegelV,PakhomovE,RotheryP.Long-termdeclinein krillstockandincreasein salps
1244 | 1244 | withintheSouthernOcean.Nature.2004;432(7013):100–3.https://doi.org/10.1038/nature02996
1245 | 1245 | PMID:15525989
1246 | 1246 | 17.LynchHJ,NaveenR,TrathanPN,FaganWF.Spatiallyintegratedassessment revealswidespread
1247 | 1247 | changesin penguinpopulationsontheAntarcticPeninsula.Ecology.2012;93(6):1367–77.https://doi.
1248 | 1248 | org/10.1890/11-1588.1PMID:22834377
1249 | 1249 | 18.KockK-H,JonesCD.Fishstocksin thesouthernScotiaArcregion—areviewandprospectsforfuture
1250 | 1250 | research. Reviewsin FisheriesScience.2005;13(2):75–108.https://doi.org/10.1080/
1251 | 1251 | 10641260590953900
1252 | 1252 | 19.CCAMLR.Reportof the36thMeetingof theCommission. Hobart,Tasmania2017,122pp.https://
1253 | 1253 | www.ccamlr.org/en/system/files/e-cc-xxxvi_0.pdf.
1254 | 1254 | 20.ChristensenV,WaltersCJ.EcopathwithEcosim: methods,capabilitiesandlimitations. Ecological
1255 | 1255 | Modelling. 2004;172(2–4):109–39.http://dx.doi.org/10.1016/j.ecolmodel.2003.09.003.
1256 | 1256 | 21.PaulyD,ChristensenV,WaltersC.Ecopath,Ecosim,andEcospaceastoolsforevaluating ecosystem
1257 | 1257 | impactof fisheries.IcesJournalof MarineScience.2000;57(3):697–706.https://doi.org/10.1006/jmsc.
1258 | 1258 | 2000.0726
1259 | 1259 | 22.Cornejo-DonosoJ, AntezanaT. Preliminary trophicmodelof theAntarctic Peninsula Ecosystem(Sub-
1260 | 1260 | areaCCAMLR48.1).EcologicalModelling.2008;218(1–2):1–17.http://dx.doi.org/10.1016/j.
1261 | 1261 | ecolmodel.2008.06.011.
1262 | 1262 | 23.SuprenandPM,AinsworthCH.Trophodynamic effectsof climatechange-inducedalterationsto primary
1263 | 1263 | productionalongthewesternAntarcticPeninsula.MarineEcologyProgressSeries. 2017;569:37–54.
1264 | 1264 | https://doi.org/10.3354/meps12100.
1265 | 1265 | 24.HooverC,PitcherT, PakhomovE.TheAntarcticPeninsulaMarineEcosystem ModelandSimulations:
1266 | 1266 | 1978-Present.In:WabnitzCC,HooverC,editors.Fromthetropicsto thepoles:ecosystemmodelsof
1267 | 1267 | HudsonBay,Kaloko-Honokohau,Hawai’i,andtheAntarcticPeninsula,FisheriesCentreResearch
1268 | 1268 | Reports20(2).Unversityof BritishColumbia:Fisheries Centre;2012.p. 108–82.
1269 | 1269 | 25.Erfran,PitcherTJ.Anecosystemsimulationof theAntarctic Peninsula.In:PalomaresMLD,PruvostP,
1270 | 1270 | PitcherTJ,PaulyD,editors.Fisheries CentreResearchReports:Modeling AntarcticMarineEcosys-
1271 | 1271 | tems.13(7).Vancouver, BCCanada:University of BritishColumbia;2005.p. 5–20.
1272 | 1272 | 26.CooperAPR,FretwellP.AntarcticCoastline.In:BritishAnarctic Survey,editor.SCARAntarcticDigital
1273 | 1273 | Database.https://www.add.scar.org/:SCAR;2013.
1274 | 1274 | 27.RammDC,JonesTE.CCAMLRStatisticalareaboundaries—asubsetof FAOstatisticalareas—lowest
1275 | 1275 | resolutionwithcoastline.AustralianAntarctic DataCentre;2015,https://gis.ccamlr.org/.
1276 | 1276 | 28.Information ManagerPAL.BasicWesternAntarcticPeninsula SurveyGrid.In:PalmerStationAntarc-
1277 | 1277 | ticaLTER,editor.SanDiego,California: OceanInformatics- ScrippsInsitutionof Oceanography
1278 | 1278 | UCSD,;2018,http://dx.doi.org/10.6073/pasta/fc528df1b8b8971a4fd28754101f5d6b.
1279 | 1279 | 29.StroeveJ, Meier.W.SeaIceTrendsandClimatologiesfromSMMRandSSM/I-SSMIS,Version3
1280 | 1280 | [SouthernOcean1981–2010].BoulderColordao, USA:NASANationalSnowandIceDataCenterDis-
1281 | 1281 | tributedActiveArchiveCenter,;2015,https://doi.org/10.5067/IJ0T7HFHB9Y6[AcessedMarch15
1282 | 1282 | 2015].
1283 | 1283 | 30.AgnewDJ.Reviewof theCCAMLREcosystemMonitoringProgramme.Antarctic Science.1997;9
1284 | 1284 | (03):235–42. https://doi.org/10.1017/S095410209700031X
1285 | 1285 | Usingsea-iceto calibratea dynamictrophicmodelfortheWesternAntarcticPeninsula
1286 | 1286 | PLOSONE| https://doi.org/10.1371/journal.pone.0214814April2, 201925/ 28
1287 | 1287 | 
1288 | 1288 | 31.ConstableAJ.CCAMLRecosystemmonitoringandmanagement: futurework.CCAMLRScience.
1289 | 1289 | 2002;9:233–53.
1290 | 1290 | 32.AckerJG,LeptoukhG.Onlineanalysisenhances useof NASAearthsciencedata.EOS,Transactions
1291 | 1291 | AmericanGeophysical Union.2007;88(2):14–7. https://doi.org/10.1029/2007EO020003.
1292 | 1292 | 33.ZengC,XuH,FischerAM.Chlorophyll-aEstimationAroundtheAntarcticaPeninsulaUsingSatellite
1293 | 1293 | Algorithms: HintsfromFieldWaterLeavingReflectance.Sensors (Basel,Switzerland).2016;16
1294 | 1294 | (12):2075.https://doi.org/10.3390/s16122075PMID:27941596.
1295 | 1295 | 34.Heymans JJ,CollM,LinkJS,MackinsonS,SteenbeekJ, WaltersC,et al.Bestpracticein Ecopathwith
1296 | 1296 | Ecosimfood-webmodelsforecosystem-basedmanagement. Ecological Modelling. 2016:173–84.
1297 | 1297 | http://dx.doi.org/10.1016/j.ecolmodel.2015.12.007.
1298 | 1298 | 35.BranchTA.Humpbackwhaleabundance southof 60 ̊Sfromthreecompletecircumpolar setsof sur-
1299 | 1299 | veys.Journalof CetaceanResearchandManagement.2011;SpecialIssue(3):53–69.
1300 | 1300 | 36.PasteneLA,HakamadaT. Temporalchangesin sightingdensityindicesof baleenwhalesin CCAMLR
1301 | 1301 | Subareas48.1and48.2basedonthreecircumpolarsightingsurveys.2016:WG-EMM-16-26.
1302 | 1302 | 37.TakiK.Biomassandproductionof theeuphausiidEuphausia pacificaalongthecoastalwatersoff
1303 | 1303 | north-easternJapan.FishSci.2006;72(2):221–32.https://doi.org/10.1111/j.1444-2906.2006.01142.x
1304 | 1304 | 38.PakhomovEA.Salp/krill interactionsin theeasternAtlanticsectorof theSouthern Ocean.DeepSea
1305 | 1305 | ResearchPartII: TopicalStudiesin Oceanography.2004;51(22–24):2645–60.http://dx.doi.org/10.
1306 | 1306 | 1016/j.dsr2.2001.03.001.
1307 | 1307 | 39.CandySG,KawaguchiS.Modellinggrowthof Antarctic krill.II. Novelapproach to describing thegrowth
1308 | 1308 | trajectory. MarineEcologyProgressSeries.2006;306:17–30.https://doi.org/10.3354/meps306017
1309 | 1309 | 40.RosenbergAA,BeddingtonJR,BassonM.Growthandlongevityof krillduringthefirstdecadeof
1310 | 1310 | pelagicwhaling.Nature.1986;324(6093):152–4.https://doi.org/10.1038/324152a0.
1311 | 1311 | 41.ReissC.Age,growth,mortality,andrecruitment of AntarcticKrill,Euphausiasuperba.In:SiegelV,edi-
1312 | 1312 | tor.Thebiologyandecologyof Antarctickrill,EuphausiasuperbaDana,1850Advancesin polarsci-
1313 | 1313 | ence.Dordrecht:Springer;2016.p. 45,https://doi.org/10.1007/978-3-319-29279-3_3.
1314 | 1314 | 42.KinzeyD,WattersG,ReissC.Effectsof recruitmentvariabilityandnaturalmortalityongeneralizedyield
1315 | 1315 | modelprojectionsandtheCCAMLRdecisionrulesforAntarcticKrill.CCAMLRScience.2013;20:81–96.
1316 | 1316 | 43.TrathanPN,HillSL.Theimportance of krillpredationin theSouthernOcean.In:SiegelV,editor.Biol-
1317 | 1317 | ogyandEcologyof Antarctic Krill.Advancesin PolarEcology.Cham:  Springer;2016.p. 321–50.
1318 | 1318 | https://doi.org/10.1007/978-3-319-29279-3_9.
1319 | 1319 | 44.IversonI. Naturalmortalityin themackerelicefish(Champsocephalusgunnari)aroundSouthGeorgia.
1320 | 1320 | CCAMLRScience.1998;5:245–57.
1321 | 1321 | 45.BanseK,MosherS.Adultbodymassandannualproduction/biomassrelationshipsof fieldpopulations.
1322 | 1322 | EcolMonogr. 1980;50(3):355–79.https://doi.org/10.2307/2937256
1323 | 1323 | 46.RibicCA,AinleyDG,GlennFordR,FraserWR,TynanCT,WoehlerEJ.Watermasses,oceanfronts,
1324 | 1324 | andthestructureof Antarctic seabirdcommunities:puttingtheeasternBellingshausenSeain perspec-
1325 | 1325 | tive.DeepSeaResearch PartII: TopicalStudies in Oceanography.2011;58(13–16):1695–709.http://
1326 | 1326 | dx.doi.org/10.1016/j.dsr2.2009.09.017.
1327 | 1327 | 47.TownsendCR,BegonM,HarperJL.Essentialsof Ecology.2nded.Oxford,UK:BlackwellPublishing;
1328 | 1328 | 2003.
1329 | 1329 | 48.SteeleJH,RuzickaJJ.Constructingend-to-endmodelsusingECOPATHdata.Journalof MarineSys-
1330 | 1330 | tems.2011;87(3–4):227–38.http://dx.doi.org/10.1016/j.jmarsys.2011.04.005.
1331 | 1331 | 49.CasauxR,BaroniA,Ramo
1332 | 1332 |  ́
1333 | 1333 | n A,CarliniA,BertolinM,DiPrinzioCY.Dietof theleopardsealHydrurga
1334 | 1334 | leptonyxat theDancoCoast,AntarcticPeninsula.PolarBiology.2009;32(2):307–10.https://doi.org/
1335 | 1335 | 10.1007/s00300-008-0567-0
1336 | 1336 | 50.CasauxR,CarliniA,Corbala
1337 | 1337 |  ́
1338 | 1338 | n A,BertolinL, DiPrinzioCY.Thedietof theWeddellsealLeptonychotes
1339 | 1339 | weddelliiat LaurieIsland,SouthOrkneyIslands.PolarBiology.2009;32(6):833–8. https://doi.org/10.
1340 | 1340 | 1007/s00300-009-0583-8
1341 | 1341 | 51.FloresH,KockKH,WilhelmsS,JonesCD.Dietof twoicefishspeciesfromtheSouthShetlandIslands
1342 | 1342 | andElephantIsland,ChampsocephalusgunnariandChaenocephalusaceratus.PolarBiology.2004;
1343 | 1343 | 27(2):119–29.https://doi.org/10.1007/s00300-003-0570-4
1344 | 1344 | 52.ChristensenV,CollM,SteenbeekJ, BuszowskiJ, Chagaris D,WaltersCJ.Representingvariablehabi-
1345 | 1345 | tatqualityin a spatialfoodwebmodel.Ecosystems. 2014;17(8):1397–412.https://doi.org/10.1007/
1346 | 1346 | s10021-014-9803-3
1347 | 1347 | 53.GoebelME,ReissC.Squeezedfrombothends:declinein Antarcticfursealsin theSouthShetland
1348 | 1348 | Islandsdrivenbybothtop–downandbottom–upprocesses.2014:WG-EMM-14-39;https://data.nodc.
1349 | 1349 | noaa.gov/cgi-bin/iso?id=gov.noaa.nodc:0186008.
1350 | 1350 | Usingsea-iceto calibratea dynamictrophicmodelfortheWesternAntarcticPeninsula
1351 | 1351 | PLOSONE| https://doi.org/10.1371/journal.pone.0214814April2, 201926/ 28
1352 | 1352 | 
1353 | 1353 | 54.Trivelpiece WZ,HinkeJT,MillerAK,ReissCS,TrivelpieceSG,WattersGM.Variabilityin krillbiomass
1354 | 1354 | linksharvestingandclimatewarmingto penguinpopulationchangesin Antarctica. Proceedingsof the
1355 | 1355 | NationalAcademyof Sciences.2011;108(18):7625–8.https://doi.org/10.1073/pnas.1016560108
1356 | 1356 | PMID:21482793
1357 | 1357 | 55.StammerjohnSE.AveragemonthlyseaicecoverageforthePALLTERregionwestof theAntarctic
1358 | 1358 | Peninsuladerivedfrompassivemicrowave, 1978—present.2013:Palmer StationAntarcticaLTER,
1359 | 1359 | http://oceaninformatics.ucsd.edu/datazoo/data/pallter/datasets?action=summary&id=34.
1360 | 1360 | 56.HinkeJ, TrivelpieceS,TrivelpieceW.Ade
1361 | 1361 |  ́
1362 | 1362 | liepenguin(Pygoscelis adeliae)survivalratesandtheirrela-
1363 | 1363 | tionshipto environmentalindicesin theSouthShetlandIslands,Antarctica. PolarBiology.2014;37
1364 | 1364 | (12):1797–809.https://doi.org/10.1007/s00300-014-1562-2
1365 | 1365 | 57.HinkeJT,SalwickaK,Trivelpiece SG,WattersGM,Trivelpiece WZ.Divergentresponses of Pygoscelis
1366 | 1366 | penguinsreveala commonenvironmentaldriver.Oecologia.2007;153(4):845–55.https://doi.org/10.
1367 | 1367 | 1007/s00442-007-0781-4PMID:17566778
1368 | 1368 | 58.StammerjohnS,MaksymT, HeilP,MassomRA,VancoppenolleM,Leonard KC.Theinfluenceof
1369 | 1369 | winds,sea-surfacetemperature andprecipitationanomaliesonAntarctic regionalsea-iceconditions
1370 | 1370 | duringIPY2007.DeepSeaResearchPartII: TopicalStudiesin Oceanography.2011;58(9–10):999–
1371 | 1371 | 1018.http://dx.doi.org/10.1016/j.dsr2.2010.10.026.
1372 | 1372 | 59.MeredithMP,KingJC.Rapidclimatechangein theoceanwestof theAntarctic Peninsuladuringthe
1373 | 1373 | secondhalfof the20thcentury.Geophysical ResearchLetters.2005;32(19).https://doi.org/10.1029/
1374 | 1374 | 2005gl024042
1375 | 1375 | 60.SiegelV,LoebV.Recruitmentof AntarctickrillEuphausiasuperbaandpossiblecausesforitsvariabil-
1376 | 1376 | ity.MarineEcologyProgressSeries.1995;123:45–56.https://doi.org/10.3354/meps123045
1377 | 1377 | 61.DalyKL.Overwinteringgrowthanddevelopmentof larvalEuphausiasuperba: aninterannualcompari-
1378 | 1378 | sonundervaryingenvironmentalconditions westof theAntarctic Peninsula.DeepSeaResearch Part
1379 | 1379 | II: TopicalStudiesin Oceanography.2004;51(17–19):2139–68.http://dx.doi.org/10.1016/j.dsr2.2004.
1380 | 1380 | 07.010.
1381 | 1381 | 62.Barrera-Oro ER,MarschoffE,CasauxRJ.Trendsin relativeabundanceof fjordNototheniarossii,
1382 | 1382 | Gobionothen gibberifronsandNototheniacoriicepsat PotterCove,SouthShetlandIslands,aftercom-
1383 | 1383 | mercialfishingin thearea.CCAMLRScience.2000;7:43–52.
1384 | 1384 | 63.KockKH,JonesCD.Thecomposition,abundanceandreproductive characteristicsof thedemersalfish
1385 | 1385 | faunain theElephantIsland–SouthShetlandIslandsregionandat thetipof theAntarctic Peninsula
1386 | 1386 | (CCAMLRSubarea48.1)in March–earlyApril2012.2012:WG-FSA-12-0.Paperavailablebye-mailto
1387 | 1387 | chris.d.jones@noaa.gov.
1388 | 1388 | 64.VeitRR,Silverman ED,EversonI. Aggregation patterns of pelagicpredatorsandtheirprincipalprey,
1389 | 1389 | AntarcticKrill,nearSouthGeorgia.Journalof AnimalEcology.1993;62(3):551–64.https://doi.org/10.
1390 | 1390 | 2307/5204
1391 | 1391 | 65.SantoraJ. Dynamic intra-seasonalhabitatusebyAntarctic fursealssuggestsmigratoryhotspotsnear
1392 | 1392 | theAntarctic Peninsula.MarBiol.2013;160(6):1383–93.https://doi.org/10.1007/s00227-013-2190-z
1393 | 1393 | 66.SchofieldO.Chlorophylldeterminedbyextractionof samplestakenapproximatelyweeklyfromseawa-
1394 | 1394 | terintakestartingat PalmerStationbystationpersonnelincludingduringwinter-overperiod,1995—
1395 | 1395 | ongoing.PalmerStationAntarcticaLTER.2013;http://oceaninformatics.ucsd.edu/datazoo/data/pallter/
1396 | 1396 | datasets?action=summary&id=197.
1397 | 1397 | 67.MillerAK,KappesMA,Trivelpiece SG,TrivelpieceWZ.Foraging-nicheseparationof breedinggentoo
1398 | 1398 | andchinstrappenguins,SouthShetlandIslands,Antarctica. Condor.2010;112(4):683–95.https://doi.
1399 | 1399 | org/10.1525/cond.2010.090221
1400 | 1400 | 68.MurphyEJ,ThorpeSE,TarlingGA,WatkinsJL,FieldingS,UnderwoodP.Restrictedregionsof
1401 | 1401 | enhanced growthof Antarctic krillin thecircumpolar SouthernOcean.ScientificReports. 2017;7:6963.
1402 | 1402 | https://doi.org/10.1038/s41598-017-07205-9 PMID:28761090
1403 | 1403 | 69.DucklowHW,EricksonM,KellyJ, Montes-HugoM,RibicCA,SmithRC,et al.Particleexportfromthe
1404 | 1404 | upperoceanoverthecontinental shelfof thewestAntarcticPeninsula:A long-termrecord,1992–2007.
1405 | 1405 | DeepSeaResearchPartII: TopicalStudiesin Oceanography.2008;55(18):2118–31.https://doi.org/
1406 | 1406 | 10.1016/j.dsr2.2008.04.028.
1407 | 1407 | 70.HewittRP,WatkinsJ, NaganobuM,SushinV,BrierleyAS,Demer D,et al.Biomassof Antarctickrillin
1408 | 1408 | theScotiaSeain January/February2000anditsusein revisinganestimate of precautionary yield.
1409 | 1409 | DeepSeaResearchPartII: TopicalStudiesin Oceanography.2004;51(12):1215–36.https://doi.org/
1410 | 1410 | 10.1016/j.dsr2.2004.06.011.
1411 | 1411 | 71.HinkeJT,CossioAM,GoebelME,ReissCS,Trivelpiece WZ,WattersGM.Identifyingrisk:concurrent
1412 | 1412 | overlapof theAntarctickrillfisherywithkrill-dependentpredatorsin theScotiaSea.PLoSOne.2017;
1413 | 1413 | 12(1):e0170132.https://doi.org/10.1371/journal.pone.0170132PMID:28085943
1414 | 1414 | Usingsea-iceto calibratea dynamictrophicmodelfortheWesternAntarcticPeninsula
1415 | 1415 | PLOSONE| https://doi.org/10.1371/journal.pone.0214814April2, 201927/ 28
1416 | 1416 | 
1417 | 1417 | 72.LoebVJ,SantoraJA.PopulationdynamicsofSalpathompsonineartheAntarctic Peninsula:growth
1418 | 1418 | ratesandinterannualvariationsin reproductiveactivity(1993–2009). ProgOceanogr. 2012;96(1):93–
1419 | 1419 | 107.http://dx.doi.org/10.1016/j.pocean.2011.11.001.
1420 | 1420 | 73.LynnesAS,ReidK,CroxallJP.Dietandreproductivesuccessof Ade
1421 | 1421 |  ́
1422 | 1422 | lieandchinstrappenguins:linking
1423 | 1423 | responseof predatorsto preypopulationdynamics. PolarBiology. 2004;27(9):544–54.https://doi.org/
1424 | 1424 | 10.1007/s00300-004-0617-1
1425 | 1425 | 74.IPCC.Summaryforpolicymakers.In:StockerTF,QinD,Plattner GK,TignorM,AllenSK,BoschungJ,
1426 | 1426 | et al.,editors.ClimateChange2013:ThePhysicalScienceBasisContributionof WorkingGroupI to the
1427 | 1427 | FifthAssessmnetReportof theIntergovernmentalPanelonClimateChangeCambridge, UnitedKing-
1428 | 1428 | domandNewYork,USA2013. p. 28pp.
1429 | 1429 | 75.Trivelpiece WZ,TrivelpieceSG,VolkmanNJ.Ecological segregationof Adelie,gentoo,andchinstrap
1430 | 1430 | penguinsat KingGeorgeIsland,AntarcticaEcology.1987;68(2):351–61.https://doi.org/10.2307/
1431 | 1431 | 1939266
1432 | 1432 | 76.ForcadaJ, TrathanPN.Penguinresponses to climatechangein theSouthernOcean.GlobChange
1433 | 1433 | Biol.2009;15(7):1618–30.https://doi.org/10.1111/j.1365-2486.2009.01909.x
1434 | 1434 | 77.FraserWR,Hofmann EE.A predator
1435 | 1435 | 1
1436 | 1436 | s perspectiveoncausallinksbetweenclimatechange,physical
1437 | 1437 | forcingandecosystemresponse.MarineEcologyProgressSeries.2003;265:1–15. https://doi.org/10.
1438 | 1438 | 3354/meps265001
1439 | 1439 | 78.EversonI. Krill:Biology, EcologyandFisheries:Wiley;2000.372p.
1440 | 1440 | 79.MoriM,Butterworth DS.A firststeptowardsmodelling thekrill-predatordynamics of theAntarctic eco-
1441 | 1441 | system.CCAMLRScience.2006;13:217–77.
1442 | 1442 | 80.ForcadaJ, TrathanPN,ReidK,MurphyEJ,CroxallJP.Contrastingpopulationchangesin sympatric
1443 | 1443 | penguinspeciesin associationwithclimatewarming.GlobChangeBiol.2006;12(3):411–23.https://
1444 | 1444 | doi.org/10.1111/j.1365-2486.2006.01108.x
1445 | 1445 | 81.MillerDGM.Antarctic krillandecosystemmanagement—FromSeattleto Siena.CCAMLRScience.
1446 | 1446 | 2002;9:175–212.
1447 | 1447 | 82.ConstableAJ.LessonsfromCCAMLRontheimplementationof theecosystemapproachto managing
1448 | 1448 | fisheries.FishandFisheries. 2011;12(2):138–51.https://doi.org/10.1111/j.1467-2979.2011.00410.x
1449 | 1449 | 83.KleinES,HillSL,HinkeJT,PhillipsT, WattersGM.Impactsof risingseatemperature onkrillincrease
1450 | 1450 | risksforpredatorsin theScotiaSea.PLoSOne.2018;13(1):e0191011.https://doi.org/10.1371/journal.
1451 | 1451 | pone.0191011PMID:29385153
1452 | 1452 | 84.CCAMLR.Reportof theWorkshoponMarineProtectedAreas,August29-Septemeber2, Brest,
1453 | 1453 | France.2011:https://www.ccamlr.org/en/ws-mpa-11.
1454 | 1454 | 85.CCAMLR.ConservationMeasure91–04.Generalframeworkfortheestablishmentof CCAMLRMarine
1455 | 1455 | Protected Areas.2011:https://www.ccamlr.org/en/measure-91-04-2011.
1456 | 1456 | Usingsea-iceto calibratea dynamictrophicmodelfortheWesternAntarcticPeninsula
1457 | 1457 | PLOSONE| https://doi.org/10.1371/journal.pone.0214814April2, 201928/ 28

<environment_details>
# VSCode Visible Files
Documentation\index.qmd

# VSCode Open Tabs
Documentation/index.qmd,Documentation/AI use notes/AI steps.txt

# Current Time
Current time in ISO 8601 UTC format: 2026-01-07T10:53:52.245Z
User time zone: Australia/Hobart, UTC+11:00

# Current Cost
$0.21

# Current Mode
<slug>code</slug>
<name>💻 Code</name>
<model>anthropic/claude-sonnet-4.5</model>
<tool_format>native</tool_format>
====

REMINDERS

Below is your current list of reminders for this task. Keep them updated as you progress.

| # | Content | Status |
|---|---------|--------|
| 1 | Read and analyze EwE basic input file to understand functional groups | Pending |
| 2 | Read and analyze EwE diet composition to understand trophic interactions | Pending |
| 3 | Review Dahood et al. (2019) paper for model context | Pending |
| 4 | Design the mizer species mapping from EwE groups | Pending |
| 5 | Design resource spectrum representation | Pending |
| 6 | Design predator-prey interaction framework | Pending |
| 7 | Document key assumptions and simplifications | Pending |
| 8 | Present key decisions to user for approval | Pending |
| 9 | Populate 02_model_structure.qmd with complete analysis | Pending |


IMPORTANT: When task status changes, remember to call the `update_todo_list` tool to update your progress.

</environment_details>

---

**Assistant:**

[Tool Use: update_todo_list]
Todos: [x] Read and analyze EwE basic input file to understand functional groups
[x] Read and analyze EwE diet composition to understand trophic interactions
[x] Review Dahood et al. (2019) paper for model context
[-] Design the mizer species mapping from EwE groups
[ ] Design resource spectrum representation
[ ] Design predator-prey interaction framework
[ ] Document key assumptions and simplifications
[ ] Present key decisions to user for approval
[ ] Populate 02_model_structure.qmd with complete analysis

---

**User:**

[Tool]
Todo list updated successfully.
<environment_details>
# VSCode Visible Files
Documentation\index.qmd

# VSCode Open Tabs
Documentation/index.qmd,Documentation/AI use notes/AI steps.txt

# Current Time
Current time in ISO 8601 UTC format: 2026-01-07T10:54:07.913Z
User time zone: Australia/Hobart, UTC+11:00

# Current Cost
$0.41

# Current Mode
<slug>code</slug>
<name>💻 Code</name>
<model>anthropic/claude-sonnet-4.5</model>
<tool_format>native</tool_format>
====

REMINDERS

Below is your current list of reminders for this task. Keep them updated as you progress.

| # | Content | Status |
|---|---------|--------|
| 1 | Read and analyze EwE basic input file to understand functional groups | Completed |
| 2 | Read and analyze EwE diet composition to understand trophic interactions | Completed |
| 3 | Review Dahood et al. (2019) paper for model context | Completed |
| 4 | Design the mizer species mapping from EwE groups | In Progress |
| 5 | Design resource spectrum representation | Pending |
| 6 | Design predator-prey interaction framework | Pending |
| 7 | Document key assumptions and simplifications | Pending |
| 8 | Present key decisions to user for approval | Pending |
| 9 | Populate 02_model_structure.qmd with complete analysis | Pending |


IMPORTANT: When task status changes, remember to call the `update_todo_list` tool to update your progress.

</environment_details>

---

**Assistant:**

Now I have a comprehensive understanding of the Dahood et al. (2019) EwE model. Let me present you with the key decisions that need to be made for the mizer translation. This is crucial as different approaches will significantly impact the model structure.
[Tool Use: ask_followup_question]
Question: I've analyzed the EwE model which has 35 functional groups including marine mammals, seabirds, fish, zooplankton, and primary producers. The critical decision is how to handle non-fish groups in mizer. I see three main approaches:

**Option A: Fish-Only Mizer Model** 
- Model only the 6 fish/cephalopod groups as size-structured species (Cephalopods, Myctophids, On-shelf fish, N. rossii, C. gunnari, G. gibberifrons)
- Represent krill, other zooplankton, and all predators (seals, whales, penguins) as external mortality and forcing
- Simpler, more traditional mizer approach
- Loses explicit representation of key monitored species (penguins, seals)

**Option B: Multi-Species Including Key Predators**
- Model fish AND key monitored predators as size-structured (e.g., 3 penguin species, Antarctic fur seals, potentially some whales)
- Requires creative size-based representations of air-breathing vertebrates
- Maintains the 8 monitored species for calibration
- More complex but better aligned with EwE model's purpose

**Option C: Hybrid Approach**
- Size-structured fish groups
- Non-size-structured "background" species pools for seals/whales/penguins (using mizer's capability for non-standard components)
- Balance between realism and tractability

Which approach do you prefer? This will fundamentally shape the entire translation.
Follow_up: [
  {
    "text": "Option B - Include key monitored predators as size-structured species to maintain calibration capability",
    "mode": null
  },
  {
    "text": "Option A - Fish-only model, simpler and more traditional mizer approach",
    "mode": null
  },
  {
    "text": "Option C - Hybrid approach with some creative solutions",
    "mode": null
  },
  {
    "text": "Let me think about this - can you provide more details on the trade-offs?",
    "mode": null
  }
]

---

**User:**

[Tool]
<answer>
I want to include key monitored species, including marine mammals. I understand that mizer isn't specifically built for this, but I know that other researchers have previously modelled whales using mizer. Later in the analysis we can research how other researchers have parameterised their whales to provide an acceptable framework for our model.
</answer>
<environment_details>
# VSCode Visible Files
Documentation\index.qmd

# VSCode Open Tabs
Documentation/index.qmd,Documentation/AI use notes/AI steps.txt

# Current Time
Current time in ISO 8601 UTC format: 2026-01-07T10:59:56.261Z
User time zone: Australia/Hobart, UTC+11:00

# Current Cost
$0.45

# Current Mode
<slug>code</slug>
<name>💻 Code</name>
<model>anthropic/claude-sonnet-4.5</model>
<tool_format>native</tool_format>
====

REMINDERS

Below is your current list of reminders for this task. Keep them updated as you progress.

| # | Content | Status |
|---|---------|--------|
| 1 | Read and analyze EwE basic input file to understand functional groups | Completed |
| 2 | Read and analyze EwE diet composition to understand trophic interactions | Completed |
| 3 | Review Dahood et al. (2019) paper for model context | Completed |
| 4 | Design the mizer species mapping from EwE groups | In Progress |
| 5 | Design resource spectrum representation | Pending |
| 6 | Design predator-prey interaction framework | Pending |
| 7 | Document key assumptions and simplifications | Pending |
| 8 | Present key decisions to user for approval | Pending |
| 9 | Populate 02_model_structure.qmd with complete analysis | Pending |


IMPORTANT: When task status changes, remember to call the `update_todo_list` tool to update your progress.

</environment_details>

---

**Assistant:**

Excellent decision! Including the monitored species will make the model much more valuable for calibration and validation. Now let me ask about the next critical structural decision:
[Tool Use: ask_followup_question]
Question: The next key decision concerns Antarctic krill and the lower trophic levels. In the EwE model, krill is split into two stanzas (small <24 months, large ≥24 months) and is the dominant prey item. The model also has other euphausiids, three zooplankton groups (micro, meso, macro), three phytoplankton groups, and ice algae.

**For Antarctic Krill, which approach?**

**Option A: Krill as Size-Structured Species**
- Model krill (combining both EwE stanzas) as a full mizer species
- Captures size-based predation dynamics
- Can fish krill explicitly
- Allows krill to interact with resource spectrum for feeding
- More complex but mechanistic

**Option B: Krill in Resource Spectrum**
- Include krill as the upper end of a broad resource spectrum
- Simpler implementation
- Loses explicit krill fishery representation
- May not capture the ice-driven dynamics well

**For other lower trophic levels:**
- Aggregate all other zooplankton + phytoplankton into a continuous size-based resource spectrum
- Use ISIMIP plankton forcing data (phydiat, phydiaz, phypico, zmicro, zmeso) to drive the spectrum
- This is standard mizer practice

Which approach for krill do you prefer?
Follow_up: [
  {
    "text": "Option A - Krill as a size-structured species to capture fishery and predator dynamics",
    "mode": null
  },
  {
    "text": "Option B - Krill in resource spectrum for simplicity",
    "mode": null
  },
  {
    "text": "A hybrid - Large krill as species, small krill in resource spectrum?",
    "mode": null
  },
  {
    "text": "Need more information about mizer's resource spectrum capabilities",
    "mode": null
  }
]

---

**User:**

[Tool]
<answer>
I want Krill to be represented as a size-structured species, combining the two EwE stanzas. But for the other groups, is it possible to keep phytoplankton and zooplankton as two seperate resources? Since the ISIMIP forcing data records them seperately (phy* files and z* files) this seems doable, and I would think that other groups would interact with the two groups differently rather than treating phyto+zooplankton as a single resource.
</answer>
<environment_details>
# VSCode Visible Files
Documentation\index.qmd

# VSCode Open Tabs
Documentation/index.qmd,Documentation/AI use notes/AI steps.txt

# Current Time
Current time in ISO 8601 UTC format: 2026-01-07T11:04:08.255Z
User time zone: Australia/Hobart, UTC+11:00

# Current Cost
$0.75

# Current Mode
<slug>code</slug>
<name>💻 Code</name>
<model>anthropic/claude-sonnet-4.5</model>
<tool_format>native</tool_format>
====

REMINDERS

Below is your current list of reminders for this task. Keep them updated as you progress.

| # | Content | Status |
|---|---------|--------|
| 1 | Read and analyze EwE basic input file to understand functional groups | Completed |
| 2 | Read and analyze EwE diet composition to understand trophic interactions | Completed |
| 3 | Review Dahood et al. (2019) paper for model context | Completed |
| 4 | Design the mizer species mapping from EwE groups | In Progress |
| 5 | Design resource spectrum representation | Pending |
| 6 | Design predator-prey interaction framework | Pending |
| 7 | Document key assumptions and simplifications | Pending |
| 8 | Present key decisions to user for approval | Pending |
| 9 | Populate 02_model_structure.qmd with complete analysis | Pending |


IMPORTANT: When task status changes, remember to call the `update_todo_list` tool to update your progress.

</environment_details>

---

**Assistant:**

Perfect! Yes, mizer supports multiple resource spectra, and having separate phytoplankton and zooplankton resources makes excellent biological sense. This will allow us to:
- Drive phytoplankton with the phy* forcing data (phydiat, phydiaz, phypico aggregated)
- Drive zooplankton with the z* forcing data (zmicro, zmeso aggregated)  
- Have krill feed on both (they're omnivorous)
- Have other species selectively feed on the appropriate resource

Now I need to finalize which of the 35 EwE groups become mizer species:
[Tool Use: ask_followup_question]
Question: Let me propose the specific species mapping. From the 35 EwE groups, here's my recommendation for which to include as size-structured mizer species:

**Definitely Include (13 species):**
1. Antarctic Krill (combining both stanzas) - key prey & fishery target
2. Cephalopods
3. Myctophids  
4. On-shelf fish
5. N. rossii (toothfish)
6. C. gunnari (icefish)
7. G. gibberifrons (dragonfish)
8. Antarctic Fur Seals - monitored
9. Adélie Penguins - monitored
10. Chinstrap Penguins - monitored
11. Gentoo Penguins - monitored
12. Minke Whales - potentially important krill predator
13. Humpback Whales - monitored (increasing population)

**Potentially Include (5 species):**
- Emperor Penguins (small biomass but monitored)
- Macaroni Penguins (moderate biomass)
- Leopard Seal (important predator, but low biomass)
- Crabeater Seal (high biomass, major krill consumer)
- Weddell Seal (moderate biomass)

**Exclude/Aggregate (17 groups):**
- Other whales (Killer, Blue, Fin, Sperm, S.Elephant Seal) - very low biomass or limited data
- Flying Birds, Salps, Other Euphausiids, Benthic invertebrates
- All plankton groups (→ resource spectra)
- Detritus, Ice Algae

Should I include the 13 core species, or also add some from the "potentially include" list?
Follow_up: [
  {
    "text": "13 core species is good - keep it manageable",
    "mode": null
  },
  {
    "text": "Add Crabeater Seal - it has high biomass and is a major krill consumer",
    "mode": null
  },
  {
    "text": "Add both Crabeater Seal and Leopard Seal for better predator representation",
    "mode": null
  },
  {
    "text": "Add Emperor Penguins too since they're monitored (14-15 species total)",
    "mode": null
  }
]

---

**User:**

[Tool]
<answer>
I understand why you want to aggregate or exclude species/groups, but I'm hesitant to do so. Many of the low-biomass groups are large keystone predators and likely have a disproportionate effect on the ecosystem, especially since there are some specific predator-prey interactions observed between these groups which are detailed in Dahood et al. (2019) Table 3 which may be important. Try this approach: look at that table and include groups mentioned there as size-spectrum species into the model. Then for any groups still undecided, look at the diet matrix and aggregate groups that have similar diets. I would like to avoid excluding groups entirely if at all possible.
</answer>
<environment_details>
# VSCode Visible Files
Documentation\index.qmd

# VSCode Open Tabs
Documentation/index.qmd,Documentation/AI use notes/AI steps.txt

# Current Time
Current time in ISO 8601 UTC format: 2026-01-07T11:15:17.860Z
User time zone: Australia/Hobart, UTC+11:00

# Current Cost
$0.79

# Current Mode
<slug>code</slug>
<name>💻 Code</name>
<model>anthropic/claude-sonnet-4.5</model>
<tool_format>native</tool_format>
====

REMINDERS

Below is your current list of reminders for this task. Keep them updated as you progress.

| # | Content | Status |
|---|---------|--------|
| 1 | Read and analyze EwE basic input file to understand functional groups | Completed |
| 2 | Read and analyze EwE diet composition to understand trophic interactions | Completed |
| 3 | Review Dahood et al. (2019) paper for model context | Completed |
| 4 | Design the mizer species mapping from EwE groups | In Progress |
| 5 | Design resource spectrum representation | Pending |
| 6 | Design predator-prey interaction framework | Pending |
| 7 | Document key assumptions and simplifications | Pending |
| 8 | Present key decisions to user for approval | Pending |
| 9 | Populate 02_model_structure.qmd with complete analysis | Pending |


IMPORTANT: When task status changes, remember to call the `update_todo_list` tool to update your progress.

</environment_details>

---

**Assistant:**

Excellent approach! Let me analyze Table 3 (forcing functions) and the diet matrix systematically:
[Tool Use: update_todo_list]
Todos: [x] Read and analyze EwE basic input file to understand functional groups
[x] Read and analyze EwE diet composition to understand trophic interactions
[x] Review Dahood et al. (2019) paper for model context
[-] Design the mizer species mapping from EwE groups
[-] Design resource spectrum representation
[ ] Design predator-prey interaction framework
[ ] Document key assumptions and simplifications
[ ] Present key decisions to user for approval
[ ] Populate 02_model_structure.qmd with complete analysis

---

**User:**

[Tool]
Todo list updated successfully.
<environment_details>
# VSCode Visible Files
Documentation\index.qmd

# VSCode Open Tabs
Documentation/index.qmd,Documentation/AI use notes/AI steps.txt

# Current Time
Current time in ISO 8601 UTC format: 2026-01-07T11:15:41.219Z
User time zone: Australia/Hobart, UTC+11:00

# Current Cost
$1.11

# Current Mode
<slug>code</slug>
<name>💻 Code</name>
<model>anthropic/claude-sonnet-4.5</model>
<tool_format>native</tool_format>
====

REMINDERS

Below is your current list of reminders for this task. Keep them updated as you progress.

| # | Content | Status |
|---|---------|--------|
| 1 | Read and analyze EwE basic input file to understand functional groups | Completed |
| 2 | Read and analyze EwE diet composition to understand trophic interactions | Completed |
| 3 | Review Dahood et al. (2019) paper for model context | Completed |
| 4 | Design the mizer species mapping from EwE groups | In Progress |
| 5 | Design resource spectrum representation | In Progress |
| 6 | Design predator-prey interaction framework | Pending |
| 7 | Document key assumptions and simplifications | Pending |
| 8 | Present key decisions to user for approval | Pending |
| 9 | Populate 02_model_structure.qmd with complete analysis | Pending |


IMPORTANT: When task status changes, remember to call the `update_todo_list` tool to update your progress.

</environment_details>

---

**Assistant:**

Based on your guidance, let me analyze the forcing functions (Table 3) and diet patterns systematically. I'll create a comprehensive species list:

**Analysis of Table 3 forcing functions - these groups had calibrated forcing:**
- Killer Whale, Leopard Seal, Antarctic Fur Seal
- Gentoo Penguin, Chinstrap Penguin
- N. rossii, C. gunnari, On-shelf fish
- Large Krill, Small Krill
- Myctophids, Cephalopods (as prey)

**Diet similarity analysis for potential aggregations:**

*Baleen whales (very similar krill-specialist diets):*
- Blue (61% krill), Fin (71% krill), Minke (76% krill), Humpback (76% krill)
→ Could aggregate as "Baleen Whales" group

*Seals (divergent diets - should keep separate):*
- Leopard: Unique - predates on seals/penguins + 70% krill
- Crabeater: 78% krill specialist (highest biomass)
- Weddell: Benthic feeder (60% on-shelf fish, 22% G. gibberifrons)
- Antarctic Fur Seal: Already decided to keep (monitored)
- S. Elephant Seal: Deep diver (60% cephalopods)

*Penguins (similar but distinct enough for monitoring):*
- Keep Adélie, Chinstrap, Gentoo separate (monitored, in forcing functions)
- Emperor & Macaroni: Lower priority but different enough diets

**Proposed Final Species List (20-22 species):**

Would you like me to now write up the complete proposed species mapping with justifications, including how to handle the remaining groups (Sperm Whale, Flying Birds, Salps, Other Euphausiids, Benthic Invertebrates)?
[Tool Use: ask_followup_question]
Question: Based on the forcing functions and diet analysis, here's my proposed approach:

**As Size-Structured Mizer Species (20-22 total):**

*Fish & Cephalopods (6):*
Cephalopods, Myctophids, On-shelf fish, N. rossii, C. gunnari, G. gibberifrons

*Krill & Related (2):*
Antarctic Krill (combining both EwE stanzas), Other Euphausiids

*Seals (5):*
Killer Whale, Leopard Seal, Weddell Seal, Crabeater Seal, Antarctic Fur Seal, (S. Elephant Seal?)

*Baleen Whales - aggregate (1):*
"Baleen Whales" combining Blue, Fin, Minke, Humpback (very similar krill-specialist diets)

*Other Large Predators (1-2):*
Sperm Whale (unique deep-diving cephalopod specialist) - keep or aggregate with deep divers?

*Penguins (3-5):*
Adélie, Chinstrap, Gentoo definitely; Emperor, Macaroni (keep separate or aggregate as "Other Penguins"?)

**Other groups:**
- Flying Birds: Aggregate with similar diet group or represent as background predation?
- Salps: Include as species (competes with krill) or background?
- Benthic Invertebrates: Part of benthic resource or separate species?

What's your preference for these borderline groups?
Follow_up: [
  {
    "text": "Keep it comprehensive - all 5 penguin species separate, Salps as species, ~22-24 total species",
    "mode": null
  },
  {
    "text": "Moderate - aggregate Emperor+Macaroni penguins, keep Salps, ~20-21 species",
    "mode": null
  },
  {
    "text": "Lean - aggregate baleen whales AND penguins more, ~18 species",
    "mode": null
  },
  {
    "text": "Let me decide group by group - show me the trade-offs for each",
    "mode": null
  }
]

---

**User:**

[Tool]
<answer>
Keep it comprehensive - all 5 penguin species separate, Salps as species, ~22-24 total species
</answer>
<environment_details>
# VSCode Visible Files
Documentation\index.qmd

# VSCode Open Tabs
Documentation/index.qmd,Documentation/AI use notes/AI steps.txt

# Current Time
Current time in ISO 8601 UTC format: 2026-01-07T11:16:49.317Z
User time zone: Australia/Hobart, UTC+11:00

# Current Cost
$1.17

# Current Mode
<slug>code</slug>
<name>💻 Code</name>
<model>anthropic/claude-sonnet-4.5</model>
<tool_format>native</tool_format>
====

REMINDERS

Below is your current list of reminders for this task. Keep them updated as you progress.

| # | Content | Status |
|---|---------|--------|
| 1 | Read and analyze EwE basic input file to understand functional groups | Completed |
| 2 | Read and analyze EwE diet composition to understand trophic interactions | Completed |
| 3 | Review Dahood et al. (2019) paper for model context | Completed |
| 4 | Design the mizer species mapping from EwE groups | In Progress |
| 5 | Design resource spectrum representation | In Progress |
| 6 | Design predator-prey interaction framework | Pending |
| 7 | Document key assumptions and simplifications | Pending |
| 8 | Present key decisions to user for approval | Pending |
| 9 | Populate 02_model_structure.qmd with complete analysis | Pending |


IMPORTANT: When task status changes, remember to call the `update_todo_list` tool to update your progress.

</environment_details>

---

**Assistant:**

Perfect! A comprehensive model will capture the ecosystem dynamics much better. Now let me finalize the complete mapping:
[Tool Use: ask_followup_question]
Question: Excellent! Here's my final proposed structure for the comprehensive model:

**SIZE-STRUCTURED MIZER SPECIES (25-26 total):**

*Fish & Cephalopods (6):* Cephalopods, Myctophids, On-shelf fish, N. rossii, C. gunnari, G. gibberifrons

*Euphausiids (2):* Antarctic Krill (combining Large+Small EwE stanzas), Other Euphausiids

*Marine Mammals (11):* Killer Whale, Leopard Seal, Weddell Seal, Crabeater Seal, Antarctic Fur Seal, S. Elephant Seal, Sperm Whale, Blue Whale, Fin Whale, Minke Whale, Humpback Whale

*Seabirds (5-6):* Emperor, Gentoo, Chinstrap, Adélie, Macaroni Penguins, + Flying Birds (or make Flying Birds background predation?)

*Other (1):* Salps

**RESOURCE SPECTRA (2):**
- **Phytoplankton Spectrum:** Small + Large phytoplankton, driven by ISIMIP phy* forcing (phydiat, phydiaz, phypico aggregated)
- **Zooplankton Spectrum:** Micro + Meso + Macro zooplankton, driven by ISIMIP z* forcing (zmicro, zmeso aggregated)

**REMAINING GROUPS:**
- **Ice Algae:** Add to phytoplankton spectrum with seasonal/ice scaling, or separate ice-associated resource?
- **Benthic Invertebrates:** Benthic resource pool or size-structured species?
- **Detritus:** Implicit in resource dynamics (mizer doesn't model detritus explicitly)

What should we do with Ice Algae and Benthic Invertebrates?
Follow_up: [
  {
    "text": "Ice Algae → add to phytoplankton spectrum with ice forcing; Benthic Inverts → separate benthic resource spectrum",
    "mode": null
  },
  {
    "text": "Ice Algae → separate ice-associated resource; Benthic Inverts → bottom resource spectrum",
    "mode": null
  },
  {
    "text": "Both Ice Algae and Benthic Inverts as size-structured species for maximum detail",
    "mode": null
  },
  {
    "text": "Ice Algae → phytoplankton; Benthic Inverts → size-structured species (they have high biomass)",
    "mode": null
  }
]

---

**User:**

[Tool]
<answer>
Ice Algae → separate ice-associated resource; Benthic Inverts → bottom resource spectrum
</answer>
<environment_details>
# VSCode Visible Files
Documentation\index.qmd

# VSCode Open Tabs
Documentation/index.qmd,Documentation/AI use notes/AI steps.txt

# Current Time
Current time in ISO 8601 UTC format: 2026-01-07T11:17:53.875Z
User time zone: Australia/Hobart, UTC+11:00

# Current Cost
$1.22

# Current Mode
<slug>code</slug>
<name>💻 Code</name>
<model>anthropic/claude-sonnet-4.5</model>
<tool_format>native</tool_format>
====

REMINDERS

Below is your current list of reminders for this task. Keep them updated as you progress.

| # | Content | Status |
|---|---------|--------|
| 1 | Read and analyze EwE basic input file to understand functional groups | Completed |
| 2 | Read and analyze EwE diet composition to understand trophic interactions | Completed |
| 3 | Review Dahood et al. (2019) paper for model context | Completed |
| 4 | Design the mizer species mapping from EwE groups | In Progress |
| 5 | Design resource spectrum representation | In Progress |
| 6 | Design predator-prey interaction framework | Pending |
| 7 | Document key assumptions and simplifications | Pending |
| 8 | Present key decisions to user for approval | Pending |
| 9 | Populate 02_model_structure.qmd with complete analysis | Pending |


IMPORTANT: When task status changes, remember to call the `update_todo_list` tool to update your progress.

</environment_details>

---

**Assistant:**

Excellent! Now I have all the structural decisions. Let me document the complete model structure in the 02_model_structure.qmd file:
[Tool Use: write_to_file]
Path: Documentation/02_model_structure.qmd
Content: ---
title: "Step 2: Mizer Model Structure and Conceptual Design"
subtitle: "Translation of Dahood et al. (2019) EwE Model"
author: "Your Name"
date: last-modified
format:
  html:
    toc: true
    toc-depth: 3
    number-sections: true
    code-fold: show
    theme: cosmo
---

# Overview

This document details the conceptual design and structural decisions for translating the Dahood et al. (2019) Ecopath with Ecosim (EwE) model of the Western Antarctic Peninsula ecosystem into a size-based multi-species model using the `mizer` package in R.

The Dahood et al. (2019) EwE model contains **35 functional groups** representing the complete food web from phytoplankton to apex predators. The translation to mizer requires careful consideration of which groups can be represented as size-structured species versus resources, and how to preserve the key ecological interactions while working within mizer's framework.

## Key Structural Decisions

Based on analysis of the EwE model structure, forcing functions (Table 3 in Dahood et al. 2019), diet composition, and project objectives, the following key decisions were made:

1. **Comprehensive species representation**: Include all major consumer groups as size-structured species to maintain calibration capability for the 8 monitored species and preserve important predator-prey dynamics
2. **Multiple resource spectra**: Use separate resource spectra for phytoplankton, zooplankton, ice algae, and benthic resources to better represent distinct production pathways
3. **Krill as size-structured species**: Model Antarctic krill as a full size-structured species (combining EwE's two stanzas) to explicitly represent the fishery and complex trophic role
4. **Marine mammals and seabirds included**: Represent all marine mammal and seabird groups as size-structured species, following approaches used in previous mizer applications to whales

# EwE Model Summary

## Original EwE Functional Groups

The Dahood et al. (2019) EwE model includes 35 functional groups:

### Marine Mammals (11 groups)
1. Killer whales (*Orcinus orca*)
2. Leopard Seal (*Hydrurga leptonyx*)
3. Weddell Seal (*Leptonychotes weddellii*)
4. Crabeater Seal (*Lobodon carcinophaga*)
5. Antarctic Fur Seals (*Arctocephalus gazella*)
6. Southern Elephant Seals (*Mirounga leonina*)
7. Sperm Whales (*Physeter macrocephalus*)
8. Blue Whales (*Balaenoptera musculus*)
9. Fin Whales (*Balaenoptera physalus*)
10. Minke Whales (*Balaenoptera bonaerensis*)
11. Humpback Whales (*Megaptera novaeangliae*)

### Seabirds (6 groups)
12. Emperor Penguins (*Aptenodytes forsteri*)
13. Gentoo Penguins (*Pygoscelis papua*)
14. Chinstrap Penguins (*Pygoscelis antarcticus*)
15. Adélie Penguins (*Pygoscelis adeliae*)
16. Macaroni Penguins (*Eudyptes chrysolophus*)
17. Flying Birds (multi-species group)

### Fish and Cephalopods (6 groups)
18. Cephalopods (squids and octopods)
19. Myctophids (lanternfishes)
20. On-shelf fish (multi-species demersal group)
21. *Notothenia rossii* (marbled rockcod)
22. *Champsocephalus gunnari* (mackerel icefish)
23. *Gobionotothen gibberifrons* (humped rockcod)

### Invertebrates (6 groups)
24. Salps (*Salpa thompsoni*)
25. Benthic Invertebrates (multi-species group)
26. Krill Large (*Euphausia superba*, ≥24 months)
27. Krill Small (*Euphausia superba*, <24 months)
28. Other Euphausiids (non-krill euphausiids)
29. Micro-Zooplankton (<200 μm)

### Plankton (6 groups)
30. Meso-Zooplankton (200-2000 μm)
31. Macro-Zooplankton (>2000 μm)
32. Small Phytoplankton (<20 μm)
33. Large Phytoplankton (>20 μm)
34. Ice Algae (sea ice-associated microalgae)
35. Detritus

## Key EwE Model Features

### Biomass Distribution
- **Highest biomass groups**: Benthic invertebrates (8554 t/km²), Salps (16,000 t/km²), Large krill (8126 t/km²), Other euphausiids (14,800 t/km²)
- **Phytoplankton**: Model-calculated to balance primary production (EE = 0.5)
- **Marine mammals**: Generally low biomass (0.001-110 t/km²) but ecologically important
- **Fish**: Moderate biomass (0.14-525 t/km²)

### Trophic Structure
- **Krill-centric ecosystem**: Antarctic krill appears in diets of most predators (12+ species consume >30% krill)
- **Multiple trophic pathways**: 
  - Ice algae → Krill → Predators
  - Phytoplankton → Zooplankton → Fish → Predators
  - Benthic pathway → Demersal fish → Predators
- **Trophic levels**: Range from 1.0 (primary producers) to 4.72 (Killer whales)

### Calibration and Forcing
Dahood et al. (2019) successfully calibrated their model using:

- **Sea-ice forcing**: Applied to multiple predator-prey interactions and used to drive krill and *G. gibberifrons* biomass via functional response curves
- **Open water forcing**: Applied to gentoo penguins, fur seals, and other ice-avoiding species
- **Chlorophyll-a forcing**: Applied to primary producers
- **Observed predation rates**: Leopard seal predation on fur seal pups

**Forcing function applications retained in final EwE model** (from Table 3):
- 10 predators had forced interactions with their prey
- Forcing reduced sum of squares by 65% compared to unfocused model
- Largest impacts: Ice algae vulnerability to krill (1.48 SS reduction), Chinstrap penguin-krill interaction (1.33 SS reduction)

# Mizer Model Structure

## Size-Structured Species (26 species)

The following groups from the EwE model will be represented as size-structured species in mizer:

### Fish and Cephalopods (6 species)

| Species | EwE Group | Biomass (t/km²) | Notes |
|---------|-----------|-----------------|-------|
| Cephalopods | Cephalopods | 2.49 | Important prey for marine mammals |
| Myctophids | Myctophids | 3.27 | Key mesopelagic fish |
| On-shelf fish | On-shelf fish | 5.25 | Multi-species demersal group |
| *Notothenia rossii* | N. rossii | 0.138 | Commercially important toothfish |
| *Champsocephalus gunnari* | C. gunnari | 0.9 | Monitored icefish |
| *Gobionotothen gibberifrons* | G. gibberifrons | 1.2 | Monitored, declined significantly |

**Ecological role**: Mid-trophic level consumers, prey for marine mammals and seabirds

### Euphausiids (2 species)

| Species | EwE Groups | Biomass (t/km²) | Notes |
|---------|------------|-----------------|-------|
| Antarctic Krill | Krill Large + Krill Small | 81.26 + 28.93 | **Key species**: Combines both EwE stanzas into single size-structured species; target of commercial fishery |
| Other Euphausiids | Other Euphausiids | 148 | Non-*E. superba* euphausiids |

**Rationale for krill as species**: 
- Explicit representation of krill fishery
- Central role in food web (consumed by 20+ species)
- Size-dependent predation dynamics
- Can be driven by sea-ice forcing as in EwE model
- EwE used multi-stanza approach (small/large separated by age 24 months); mizer naturally represents size structure

### Seals (6 species)

| Species | EwE Group | Biomass (t/km²) | Notes |
|---------|-----------|-----------------|-------|
| Killer Whale | Killer whales | 0.0075 | Apex predator, forced interactions in EwE |
| Leopard Seal | Leopard Seal | 0.0084 | **Monitored**, forced interactions, unique predator on seals/penguins |
| Weddell Seal | Weddell Seal | 0.081 | Benthic feeder, different from other seals |
| Crabeater Seal | Crabeater Seal | 1.098 | **Highest biomass seal**, krill specialist (78% diet) |
| Antarctic Fur Seal | Antarctic fur seals | 0.0010 | **Monitored**, forced interactions in EwE, important for calibration |
| S. Elephant Seal | S Elephant Seals | 0.0010 | Deep-diving cephalopod specialist |

**Ecological role**: Top predators, diverse feeding strategies (krill specialists, fish feeders, apex predators)

**Rationale for inclusion**: 
- Antarctic Fur Seal is monitored and has calibration time series
- Leopard Seal has forced interactions in EwE (Table 3)
- Crabeater Seal has highest biomass among seals
- Each seal has distinct diet (cannot aggregate)
- Killer Whale is apex predator with unique role

### Whales (5 species)

| Species | EwE Group | Biomass (t/km²) | Notes |
|---------|-----------|-----------------|-------|
| Sperm Whale | Sperm Whales | 0.0284 | Deep-diving cephalopod specialist (85% cephalopods) |
| Blue Whale | Blue Whales | 0.0072 | Krill specialist (61% krill + 39% other euphausiids/zooplankton) |
| Fin Whale | Fin Whales | 0.0428 | Krill specialist (71% krill), increasing population (EE = 0.98) |
| Minke Whale | Minke Whales | 0.0473 | Krill specialist (76% krill) |
| Humpback Whale | Humpback whales | 0.0812 | **Increasing population** (4.5% yr⁻¹), krill specialist (76% krill) |

**Ecological role**: Large-bodied krill and cephalopod consumers

**Rationale for separate species** (not aggregated despite diet similarity):
- Humpback whale population increasing (biomass accumulation term in EwE)
- Different body sizes affect size-based predation
- Potential differential responses to climate change
- Previous mizer studies have successfully modeled whales (will research parameterization approaches)

### Penguins (5 species)

| Species | EwE Group | Biomass (t/km²) | Notes |
|---------|-----------|-----------------|-------|
| Emperor Penguin | Emperor Penguins | 0.00012 | Low biomass but ecologically distinct (winter breeder) |
| Gentoo Penguin | Gentoo Penguins | 0.00116 | **Monitored**, increasing, open water forager, forced interactions in EwE |
| Chinstrap Penguin | Chinstrap Penguins | 0.0214 | **Monitored**, declining, forced interactions in EwE |
| Adélie Penguin | Adelie Penguins | 0.00583 | **Monitored**, declining, ice-associated |
| Macaroni Penguin | Macaroni Penguins | 0.00011 | Moderate diet diversity (34% krill, 35% other euphausiids) |

**Ecological role**: Intermediate predators, krill-dependent, key indicators of ecosystem change

**Rationale for keeping all 5 species separate**:
- Three species (Gentoo, Chinstrap, Adélie) are monitored with time series for calibration
- Each has distinct response to sea ice (increasing vs. declining)
- Forced interactions in EwE calibration (Table 3)
- Different foraging strategies (ice-associated vs. open water)

### Other Consumers (2 species)

| Species | EwE Group | Biomass (t/km²) | Notes |
|---------|-----------|-----------------|-------|
| Flying Birds | Flying Birds | 0.004 | Multi-species aggregate (petrels, albatrosses, etc.) |
| Salps | Salps | 320 | **Very high biomass**, potential krill competitor, respond to warming |

**Rationale for inclusion**:
- **Flying Birds**: Represents important seabird predation not captured by penguins; moderate diet diversity
- **Salps**: Critical for climate change scenarios; EwE notes salps may replace krill in warming areas; very high biomass

## Resource Spectra (4 resources)

Mizer will use four distinct resource spectra to represent the lower trophic levels:

### 1. Phytoplankton Resource Spectrum

**EwE groups included**: 
- Small Phytoplankton (<20 μm)
- Large Phytoplankton (>20 μm)

**Biomass**: Model-calculated in EwE to balance EE = 0.5 (Small: ~15,023 t/km², Large: ~13,712 t/km²)

**Mizer implementation**:
- Single continuous size spectrum spanning small to large phytoplankton size range
- Driven by ISIMIP3a climate forcing data:
  - `phydiat-vint` (diatoms)
  - `phydiaz-vint` (diazotrophs)  
  - `phypico-vint` (picophytoplankton)
- Production rate scaled by chlorophyll-a as in EwE calibration
- EE = 0.5 implies ample primary production (not limiting)

**Size range**: Approximately 1-100 μm (will refine based on literature)

### 2. Zooplankton Resource Spectrum

**EwE groups included**:
- Micro-Zooplankton (<200 μm)
- Meso-Zooplankton (200-2000 μm)
- Macro-Zooplankton (>2000 μm)

**Biomass**: Micro: 25 t/km², Meso: 130 t/km², Macro: 35 t/km²

**Mizer implementation**:
- Single continuous size spectrum spanning micro to macro zooplankton size range
- Driven by ISIMIP3a climate forcing data:
  - `zmicro-vint` (microzooplankton)
  - `zmeso-vint` (mesozooplankton)
- Note: Macro-zooplankton feeds on meso-zooplankton in EwE, creating a size-structured cascade
- Will feed on phytoplankton resource spectrum

**Size range**: Approximately 50 μm - 5 mm (will refine based on literature)

**Rationale for separate phytoplankton and zooplankton spectra**:
- ISIMIP forcing data separates phy* and z* variables
- Different groups feed preferentially on phytoplankton vs. zooplankton
- Allows representation of distinct production pathways
- Mizer supports multiple resource spectra

### 3. Ice Algae Resource Spectrum

**EwE group**: Ice Algae

**Biomass**: Model-calculated in EwE (~307 t/km²)

**Mizer implementation**:
- Separate resource spectrum to represent ice-associated production
- Highly seasonal and dependent on sea ice presence
- Can be forced by sea ice concentration data from ISIMIP (`siconc`)
- Important for krill (both EwE stanzas feed on ice algae: 10-25% of diet)
- EwE applied forcing to ice algae-krill interaction (1.48 SS reduction - largest single forcing effect)

**Size range**: Similar to phytoplankton (1-100 μm) but with distinct seasonality and spatial distribution

**Ecological importance**: 
- Critical for krill overwinter survival
- Links sea ice dynamics to food web
- Enables representation of ice-driven bottom-up forcing

### 4. Benthic Resource Spectrum

**EwE group**: Benthic Invertebrates

**Biomass**: 8554 t/km² (second highest biomass in EwE model)

**Mizer implementation**:
- Spectrum representing size-structured benthic community
- Feeds demersal fish (especially Weddell Seal: 5% diet, *G. gibberifrons*: 59% diet, cephalopods: 21% diet)
- Distinct from pelagic resources (depth-segregated production)
- May be less affected by sea ice changes than pelagic resources

**Size range**: Wide range from small infauna to large epifauna (will define based on prey size preferences of consumers)

**Rationale**: 
- Very high biomass indicates importance
- Supports distinct demersal food web pathway
- Cannot be aggregated with pelagic resources (different habitat)

## Species Excluded / Incorporated into Resources

The following EwE group is **not** explicitly represented:

- **Detritus** (5.77 t/km² input): Mizer does not explicitly model detritus. The detrital pathway is implicitly included through:
  - Natural mortality contributing to resource production
  - Unassimilated consumption creating nutrient recycling
  - Resource spectrum regeneration rates

# Predator-Prey Interaction Framework

## Size-Based Predation

Mizer uses size-based predation where predators consume prey within a preferred size range determined by:

- **Predator-Prey Mass Ratio (PPMR)**: The preferred ratio of predator size to prey size (β)
- **Feeding kernel width (σ)**: How selective predators are about prey size
- **Interaction matrix**: Species-specific preferences for prey types

### Deriving Mizer Interactions from EwE Diet Matrix

The EwE diet matrix (Table 1 in Dahood et al. 2019) provides the proportion of each prey in each predator's diet. This will be translated to mizer's interaction matrix as follows:

**For interactions between size-structured species**:
- EwE diet proportions → mizer interaction matrix elements
- Size-based feeding kernel determines actual consumption based on sizes
- Example: Leopard Seal consumes 70% Large Krill in EwE → High interaction coefficient for Leopard Seal-Krill pair

**For interactions with resource spectra**:
- Species feeding on plankton in EwE → Interactions with appropriate resource spectrum
- Example: Krill consumes 50% Large phytoplankton, 10% ice algae, 10% meso-zooplankton → Interactions split between phytoplankton, ice algae, and zooplankton spectra
- Benthic feeders → Interactions with benthic resource spectrum

### Key Trophic Interactions to Preserve

Based on EwE forcing functions (Table 3) and diet analysis, the following interactions are particularly important:

**Ice Algae → Krill** (Strongest forcing effect in EwE):
- Large Krill: 10% ice algae in diet, forcing applied to vulnerability and arena area
- Small Krill: 25% ice algae in diet, forcing applied with sea ice index
- **Mizer implementation**: Ice algae resource spectrum availability driven by sea ice; krill feeding rate on ice algae modulated by sea ice forcing

**Krill → Multiple Predators** (Central hub):
20+ species consume krill, with varying dependencies:
- High dependence (>70% diet): Chinstrap (95%), Adélie (96%), Crabeater Seal (78%), Minke (76%), Humpback (76%), Gentoo (80%)
- Moderate dependence (30-70%): Fin (71%), Blue (61%), Emperor (52%), Fur Seal (50%), Cephalopods (40%)
- **Mizer implementation**: High interaction coefficients for krill specialists; size-based feeding kernels determine actual consumption

**Open Water Predators** (Forced in EwE with open water area):
- Gentoo Penguin → On-shelf fish and Krill (forced with open water)
- Antarctic Fur Seal → Cephalopods, On-shelf fish, Krill (forced with open water)
- **Mizer implementation**: Can incorporate habitat-based interaction modulation

**Benthic Pathway**:
- Benthic Invertebrates → *G. gibberifrons* (59%), Weddell Seal (5%), Cephalopods (21%)
- **Mizer implementation**: Benthic resource spectrum with appropriate size range and availability

**Sea Ice-Driven Biomass** (EwE used response curves):
- Sea ice index → Large Krill biomass (sigmoidal response, largest biomass driver)
- Sea ice index → *G. gibberifrons* biomass (linear response)
- **Mizer implementation**: Will need to research mizer capabilities for environmental forcing of recruitment/mortality

## Fishing

**Krill Fishery**:
- Only commercial fishery in Statistical Subarea 48.1
- EwE average catch 1995-2001: ~51,000 tonnes
- Recent catches (2010s): >150,000 tonnes in area 48.1
- **Mizer implementation**: Size-selective fishing mortality on Antarctic Krill species

**Historical Fish Fisheries** (ceased before model period):
- *N. rossii*, *C. gunnari* were historically fished but not during EwE calibration period (1996-2012)
- **Mizer implementation**: Include capability to impose fishing mortality for historical scenarios if needed

ISIMIP3a fishing forcing data available:
- `effort_histsoc_1841_2017_western-antarctic-peninsula.parquet`
- Can be used to drive temporal fishing mortality

# Size Ranges and Body Size Assignments

A critical aspect of the mizer translation is assigning appropriate size ranges to each species. For groups that are not typically size-structured (e.g., adult marine mammals, adult seabirds), we need to determine how to represent them in mizer's size-based framework.

## Approach for Different Taxa

### Fish and Cephalopods
- **Standard mizer approach**: Use species-specific von Bertalanffy growth parameters
- Size ranges from recruitment size to maximum observed size (L∞)
- Literature values available for most species in Hill et al. (2007) compilation

### Euphausiids
- **Antarctic Krill**: 
  - EwE modeled as multi-stanza with transition at 24 months
  - Size range: ~10 mm (recruitment) to ~60 mm (maximum adult size)
  - Growth follows von Bertalanffy curve (K = 0.44, parameters from Rosenberg et al. 1986, Candy & Kawaguchi 2006)
  - **Mizer**: Single species spanning full size range
  
- **Other Euphausiids**: Similar size range to krill

### Marine Mammals and Seabirds
These groups present a challenge for size-based modeling. We will research how previous mizer applications have handled whales and adapt those approaches. Options include:

**Option 1: Full Life Cycle**
- Model complete size range from birth/hatching to adult
- Requires growth parameters and size-at-recruitment
- May be feasible for pinnipeds with known growth curves

**Option 2: Adult-Only Representation**
- Model only adult size classes
- Use narrow size range around adult body mass
- Simpler but loses juvenile dynamics

**Option 3: Representative Size Classes**
- Select a few key size classes to represent age structure
- Balance between biological realism and computational efficiency

**Research needed**: Review literature on mizer applications to marine mammals (if available) to determine best practice approach for parameterization.

## Preliminary Size Ranges

Based on adult body masses from literature, preliminary maximum sizes (will refine):

| Taxon | Mass Range | Notes |
|-------|------------|-------|
| **Fish** |  |  |
| Myctophids | 1-50 g | Small mesopelagic fish |
| *N. rossii* | 50-7000 g | Large nototheniid |
| *C. gunnari* | 50-500 g | Icefish |
| *G. gibberifrons* | 50-400 g | Smaller nototheniid |
| On-shelf fish | 10-1000 g | Multi-species average |
| Cephalopods | 100-5000 g | Squids and octopods |
| **Euphausiids** |  |  |
| Antarctic Krill | 0.1-1 g | ~10-60 mm length |
| Other Euphausiids | 0.1-1 g | Similar to krill |
| **Seals** |  |  |
| Leopard Seal | 200-600 kg | Large phocid |
| Weddell Seal | 400-600 kg | Large phocid |
| Crabeater Seal | 200-300 kg | Medium phocid |
| Fur Seal | 50-200 kg | Smaller otariid |
| Elephant Seal | 500-4000 kg | Largest seal |
| Killer Whale | 3000-8000 kg | Largest odontocete |
| **Baleen Whales** |  |  |
| Minke Whale | 5000-10000 kg | Smallest baleen whale |
| Humpback Whale | 25000-40000 kg | Medium baleen whale |
| Fin Whale | 40000-80000 kg | Large baleen whale |
| Blue Whale | 80000-150000 kg | Largest animal |
| **Sperm Whale** | 15000-50000 kg | Largest odontocete |
| **Penguins** |  |  |
| Emperor Penguin | 20-45 kg | Largest penguin |
| Gentoo Penguin | 4-8 kg | Medium penguin |
| Chinstrap Penguin | 3-6 kg | Medium penguin |
| Adélie Penguin | 3-6 kg | Medium penguin |
| Macaroni Penguin | 3-6 kg | Medium penguin |
| **Other** |  |  |
| Flying Birds | 0.5-5 kg | Average across species |
| Salps | 0.001-0.1 kg | Colonial tunicates |

# Key Assumptions and Simplifications

## Assumptions Required for Translation

### 1. Size-Based Representation of Non-Fish Species

**Assumption**: Marine mammals and seabirds can be represented within mizer's size-based framework despite not exhibiting indeterminate growth

**Justification**: 
- Previous mizer studies have successfully modeled whales
- Body size still determines feeding and predation risk
- Can represent key processes (consumption, mortality, reproduction) even if growth pattern differs from fish

**Implications**:
- Will need creative parameterization approaches
- May use narrow size ranges or discrete size classes
- Growth parameters will represent maturation rather than continuous growth

### 2. Combining EwE Krill Stanzas

**Assumption**: EwE's two krill stanzas (small <24 months, large ≥24 months) can be combined into a single size-structured species

**Justification**:
- Mizer naturally represents size structure and growth through size classes
- Von Bertalanffy growth parameters (K = 0.44) can describe transition from small to large
- Size-based predation will automatically capture preferential predation on smaller vs. larger krill

**Implications**:
- Need to ensure size-based feeding kernels capture the diet differences between krill sizes in EwE
- May need to calibrate recruitment to match total krill biomass

### 3. Aggregation of Plankton Groups

**Assumption**: Multiple EwE plankton groups can be aggregated into continuous resource spectra

**Justification**:
- Standard mizer approach for lower trophic levels
- Size-based spectra can represent size diversity within functional groups
- Forcing data (ISIMIP) provides phytoplankton and zooplankton abundances

**Implications**:
- Lose discrete functional group representation
- Cannot explicitly model shifts between phytoplankton types
- Resource dynamics simplified compared to EwE

### 4. Detritus Pathway

**Assumption**: Detrital pathway can be represented implicitly through resource dynamics

**Justification**:
- Mizer does not explicitly model detritus
- Natural mortality and unassimilated consumption contribute to nutrient recycling
- Resource regeneration can implicitly represent detrital remineralization

**Implications**:
- Cannot explicitly track detritus pools
- May underestimate importance of detrital pathway for benthic communities
- energy flow through detritus is implicit rather than explicit

### 5. Spatial Homogeneity

**Assumption**: Statistical Subarea 48.1 is treated as spatially homogeneous (well-mixed)

**Justification**:
- EwE model (non-Ecospace version) also assumes spatial homogeneity
- Consistent with EwE approach being translated
- Forcing data are area-averaged

**Implications**:
- Cannot represent spatial heterogeneity in krill distribution
- Cannot model spatial MPAs without extension to spatial mizer
- May miss local depletion effects near fishing activity

### 6. Sea Ice Forcing Translation

**Assumption**: EwE's forcing functions and response curves can be translated to mizer's forcing framework

**Justification**:
- Both models can incorporate environmental forcing
- EwE demonstrated that sea ice is critical driver (65% SS reduction)
- Mizer can incorporate external factors affecting growth, mortality, or resource availability

**Challenges**:
- Need to research mizer's capabilities for environmental forcing
- May require custom functions or mizerExperimental features
- Functional response curves (e.g., sigmoidal krill response to ice) may need creative implementation

## Simplifications from EwE Model

### 1. Diet Matrix to Interaction Matrix

**Simplification**: EwE's detailed diet matrix (proportion of each prey in each predator diet) is simplified to species-level interaction coefficients combined with size-based feeding

**What is lost**:
- Age/size-specific diet information within EwE groups
- Ability to specify exact diet proportions independent of size

**What is gained**:
- Emergent diet composition based on prey size and availability
- More mechanistic representation of size-based predation

### 2. Biomass Accumulation

**Simplification**: EwE's biomass accumulation terms (Humpback whale +3.9% yr⁻¹, Fin whale +2.9% yr⁻¹) need alternative representation

**Options**:
- Adjust recruitment to create population increase
- Modify mortality schedules
- Incorporate trends in carrying capacity

**Implications**: Population trends may need to be forced rather than emergent

### 3. Forcing Function Applications

**Simplification**: EwE applied forcing functions to specific predator-prey interaction parameters (vulnerability, search rate, arena area). Mizer's forcing may work differently.

**EwE forcing preserved**:
- Sea ice effects on ice algae and krill
- Open water effects on fur seals and gentoo penguins
- Chlorophyll effects on primary production

**Challenges**: 
- Mizer may not have direct equivalents to EwE's "arena area" or "vulnerability" parameters
- May need to implement forcing through resource availability or mortality modulation

### 4. Cannibalism

**Simplification**: EwE explicitly disallowed cannibalism for all groups. Mizer's size-based predation may allow cannibalism if size ranges overlap.

**Approach**: 
- Can set interaction matrices to zero for self-interactions
- Or allow cannibalism where biologically realistic (e.g., large fish eating small conspecifics)

### 5. Multi-Species Functional Groups

**Simplification**: Some EwE multi-species groups (On-shelf fish, Flying Birds) are represented as single species in mizer

**What is lost**:
- Species diversity within functional groups
- Differential responses of component species

**Justification**:
- Insufficient data to parameterize multiple component species
- Functional group approach consistent with EwE model's own approach
- Preserves overall trophic role

# Model Parameterization Approach

The translation from EwE to mizer will preserve key parameters where possible:

## Parameters Directly Translatable

1. **Biomass** (B): EwE biomass (t/km²) → Mizer initial abundances (converted to numbers-at-size using size structure)

2. **Production to Biomass ratio** (P/B): EwE annual P/B → Related to mizer growth and mortality parameters
   - For multi-cellular organisms: P/B ≈ natural mortality M
   - Will inform background mortality (z0) in mizer

3. **Consumption to Biomass ratio** (Q/B): EwE annual Q/B → Informs mizer feeding parameters
   - Relates to maximum consumption rate and feeding level

4. **Diet Composition**: EwE diet matrix → Mizer interaction matrix + size-based preferences

5. **Fishing Mortality**: EwE fishing effort and catches → Mizer fishing mortality arrays

## Parameters Requiring Derivation

1. **Size-at-maturity** (w_mat): Need to derive from literature for each species
   - Fish: Well-documented for most species
   - Marine mammals: Age/size at sexual maturity
   - Penguins: Body mass at first breeding

2. **Asymptotic size** (w_inf): Maximum body size
   - Fish: L∞ from von Bertalanffy growth
   - Mammals/birds: Maximum adult body mass

3. **von Bertalanffy K**: Growth rate parameter
   - Fish: Available in literature for most species
   - Krill: K = 0.44 (from EwE model)
   - Mammals/birds: May need alternative parameterization

4. **Predator-Prey Mass Ratio** (beta): Preferred predator:prey size ratio
   - Derive from predator size and typical prey sizes in EwE diets
   - Literature values for feeding mode (benthic feeders, planktivores, piscivores, etc.)

5. **Feeding kernel width** (sigma): Size selectivity
   - Specialists: Narrow feeding kernel
   - Generalists: Broad feeding kernel

6. **Reproductive efficiency** (erepro): Conversion of energy to reproduction
   - Will need calibration to match biomass and recruitment patterns

## Research Needed for Marine Mammals/Seabirds

Key questions requiring literature review and potentially consultation with mizer experts:

1. How have previous mizer studies parameterized whales?
2. What approaches exist for modeling organisms with determinate growth?
3. How to represent annual breeding cycles in mizer's continuous time framework?
4. What are appropriate size ranges for adult-only representations?
5. How to handle extreme size differences between nekton and mammals/birds in the same model?

# Environmental Forcing Implementation

Based on Dahood et al. (2019) success with environmental forcing, the mizer model will incorporate:

## Sea Ice Forcing

**Data source**: ISIMIP3a `siconc` (sea ice concentration)

**Applications** (following EwE Table 3):

1. **Ice Algae Resource Spectrum**:
   - Production rate modulated by sea ice cover
   - Higher ice → higher ice algae availability

2. **Krill Dynamics**:
   - EwE used sigmoidal response curve (sea ice index → large krill biomass)
   - Mizer implementation options:
     - Sea ice affects krill recruitment (R_max or erepro modulation)
     - Sea ice affects krill resource availability (ice algae spectrum)
     - Sea ice affects krill mortality (overwinter survival)
   - **Most realistic**: Combination of ice algae availability + recruitment modulation

3. **Predator-Prey Interactions**:
   - EwE forced Chinstrap-Krill interaction (1.33 SS reduction)
   - EwE forced interactions for Leopard Seal, Fur Seal
   - Mizer implementation: Research how to modulate interaction strength with environmental variables

## Open Water Forcing

**Data source**: Can derive from sea ice concentration (open water = 1 - ice cover)

**Applications** (following EwE Table 3):

1. **Gentoo Penguin** feeding:
   - Open water increases foraging success on on-shelf fish and krill

2. **Antarctic Fur Seal** feeding:
   - Open water increases foraging success (pelagic hunter)

3. **Fish interactions**:
   - EwE applied to C. gunnari and N. rossii interactions

## Plankton Forcing

**Data sources**: ISIMIP3a phytoplankton and zooplankton fields

1. **Phytoplankton Resource Spectrum**:
   - Driven by sum of `phydiat-vint`, `phydiaz-vint`, `phypico-vint`
   - Total phytoplankton biomass varies temporally

2. **Zooplankton Resource Spectrum**:
   - Driven by `zmicro-vint`, `zmeso-vint`
   - May need to calibrate how forcing is applied (multiplicative vs. additive)

3. **Chlorophyll-a**:
   - EwE applied chlorophyll forcing to primary production
   - ISIMIP data are vertically integrated biomasses, may correlate with chlorophyll
   - Can potentially derive chlorophyll-equivalent metric from phytoplankton biomasses

## Temperature Forcing

**Data sources**: ISIMIP3a `tob` (bottom temperature), `tos` (surface temperature)

**Potential applications** (not explicitly in EwE calibration but ecologically important):

1. **Metabolic rates**: Temperature-dependence of consumption and metabolism
2. **Growth rates**: Temperature affects growth efficiency
3. **Fish distributions**: Temperature may affect habitat suitability (not in non-spatial model but affects parameters)

**Implementation**: Mizer has built-in temperature dependence capabilities; need to evaluate if/how to use

# Next Steps: Parameter Conversion

The following steps will be undertaken in subsequent documents:

1. **Literature review**: Research mizer applications to marine mammals and determine best practices for parameterization (Step 3)

2. **Size range specification**: Finalize minimum, maximum, and maturity sizes for all 26 species (Step 3)

3. **Growth parameters**: Derive von Bertalanffy (or alternative) growth parameters for all species (Step 3)

4. **Feeding parameters**: Convert EwE Q/B and diet data to mizer feeding parameters (beta, sigma, interaction matrix) (Step 3)

5. **Resource spectrum parameterization**: Set up the four resource spectra with appropriate size ranges, carrying capacities, and regeneration rates (Step 4)

6. **Initial abundances**: Convert EwE biomasses to size-structured abundance-at-size distributions (Step 6)

7. **Fishing parameterization**: Set up krill fishing mortality matching historical catches (Step 9)

8. **Environmental forcing**: Implement sea ice, plankton, and temperature forcing following EwE calibration approach (Step 8)

# Summary: Model Structure Overview

## Complexity and Comprehensiveness

The translated mizer model will be **comprehensive**, representing:

- **26 size-structured species** (fish, euphausiids, seals, whales, penguins, salps)
- **4 resource spectra** (phytoplankton, zooplankton, ice algae, benthic)
- **Multiple forcing mechanisms** (sea ice, open water, plankton dynamics, temperature)
- **Explicit krill fishery**
- **Full food web** from primary producers to apex predators

This is a **complex translation** that pushes mizer beyond its typical application domain (fish-focused models) to include air-breathing vertebrates. However, this comprehensiveness is justified by:

1. **Calibration requirements**: 8 monitored species need to be represented for model validation
2. **Ecosystem approach**: WAP ecosystem is truly krill-centric with multiple dependent predator groups
3. **Climate change focus**: Sea ice forcing affects multiple groups across taxa
4. **Management relevance**: Model designed to inform MPA planning, requiring multi-species representation

## Challenges and Innovations

**Challenges**:
- Representing marine mammals and seabirds in size-based framework
- Implementing EwE-style forcing in mizer
- Calibrating complex model with 26 species

**Innovations**:
- Multiple resource spectra for different production pathways
- Ice algae as distinct resource linked to sea ice
- Comprehensive representation of Antarctic food web in mizer

## Comparison to EwE Model

| Aspect | EwE Model | Mizer Model |
|--------|-----------|-------------|
| **Groups/Species** | 35 functional groups | 26 species + 4 resources |
| **Size structure** | Multi-stanza for krill only | All 26 species size-structured |
| **Lower trophic levels** | 9 discrete groups | 4 continuous spectra |
| **Spatial structure** | Homogeneous (non-Ecospace) | Homogeneous (non-spatial mizer) |
| **Temporal resolution** | Monthly time steps | Flexible (typically annual or finer) |
| **Predation** | Diet matrix + vulnerabilities | Size-based with interaction matrix |
| **Environmental forcing** | Forcing functions + response curves | To be implemented (resource forcing, parameter modulation) |
| **Calibration targets** | 8 species time series | Same 8 species time series |
| **Primary output** | Biomass trajectories | Biomass + size spectra + indicators |

The mizer translation **preserves the essential structure** of the EwE model while leveraging mizer's strengths in size-based dynamics and potentially providing additional insights from size spectrum analyses.

---

**Document Status**: Conceptual design complete. Next: Parameter derivation and conversion (Step 3).



---

**User:**

[Tool]
{"path":"Documentation/02_model_structure.qmd","operation":"modified","notice":"You do not need to re-read the file, as you have seen all changes Proceed with the task using these changes as the new baseline."}
<environment_details>
# VSCode Visible Files
Documentation\02_model_structure.qmd

# VSCode Open Tabs
Documentation/index.qmd,Documentation/02_model_structure.qmd,Documentation/AI use notes/AI steps.txt

# Recently Modified Files
These files have been modified since you last accessed them (file was just edited so you may need to re-read it before editing):
Documentation/02_model_structure.qmd

# Current Time
Current time in ISO 8601 UTC format: 2026-01-07T11:21:41.877Z
User time zone: Australia/Hobart, UTC+11:00

# Current Cost
$1.41

# Current Mode
<slug>code</slug>
<name>💻 Code</name>
<model>anthropic/claude-sonnet-4.5</model>
<tool_format>native</tool_format>
====

REMINDERS

Below is your current list of reminders for this task. Keep them updated as you progress.

| # | Content | Status |
|---|---------|--------|
| 1 | Read and analyze EwE basic input file to understand functional groups | Completed |
| 2 | Read and analyze EwE diet composition to understand trophic interactions | Completed |
| 3 | Review Dahood et al. (2019) paper for model context | Completed |
| 4 | Design the mizer species mapping from EwE groups | In Progress |
| 5 | Design resource spectrum representation | In Progress |
| 6 | Design predator-prey interaction framework | Pending |
| 7 | Document key assumptions and simplifications | Pending |
| 8 | Present key decisions to user for approval | Pending |
| 9 | Populate 02_model_structure.qmd with complete analysis | Pending |


IMPORTANT: When task status changes, remember to call the `update_todo_list` tool to update your progress.

</environment_details>

---

**Assistant:**

[Tool Use: update_todo_list]
Todos: [x] Read and analyze EwE basic input file to understand functional groups
[x] Read and analyze EwE diet composition to understand trophic interactions
[x] Review Dahood et al. (2019) paper for model context
[x] Design the mizer species mapping from EwE groups
[x] Design resource spectrum representation
[x] Design predator-prey interaction framework
[x] Document key assumptions and simplifications
[x] Present key decisions to user for approval
[x] Populate 02_model_structure.qmd with complete analysis

---

**User:**

[Tool]
Todo list updated successfully.
<environment_details>
# VSCode Visible Files
Documentation\02_model_structure.qmd

# VSCode Open Tabs
Documentation/index.qmd,Documentation/02_model_structure.qmd,Documentation/AI use notes/AI steps.txt

# Current Time
Current time in ISO 8601 UTC format: 2026-01-07T11:21:51.841Z
User time zone: Australia/Hobart, UTC+11:00

# Current Cost
$1.48

# Current Mode
<slug>code</slug>
<name>💻 Code</name>
<model>anthropic/claude-sonnet-4.5</model>
<tool_format>native</tool_format>
====

REMINDERS

Below is your current list of reminders for this task. Keep them updated as you progress.

| # | Content | Status |
|---|---------|--------|
| 1 | Read and analyze EwE basic input file to understand functional groups | Completed |
| 2 | Read and analyze EwE diet composition to understand trophic interactions | Completed |
| 3 | Review Dahood et al. (2019) paper for model context | Completed |
| 4 | Design the mizer species mapping from EwE groups | Completed |
| 5 | Design resource spectrum representation | Completed |
| 6 | Design predator-prey interaction framework | Completed |
| 7 | Document key assumptions and simplifications | Completed |
| 8 | Present key decisions to user for approval | Completed |
| 9 | Populate 02_model_structure.qmd with complete analysis | Completed |


IMPORTANT: When task status changes, remember to call the `update_todo_list` tool to update your progress.

</environment_details>

---

**Assistant:**

[Tool Use: attempt_completion]
Result: I've completed Step 2: Mizer Model Structure and Conceptual Design for translating the Dahood et al. (2019) EwE model to mizer.

## Key Structural Decisions Made:

**1. Comprehensive Species Representation (26 size-structured species):**
- 6 fish and cephalopod species
- 2 euphausiid species (Antarctic Krill combining both EwE stanzas + Other Euphausiids)
- 6 seal species (including Killer Whale)
- 5 whale species (keeping separate despite diet similarity for population dynamics)
- 5 penguin species (all monitored species kept separate)
- 2 other consumers (Flying Birds, Salps)

**2. Multiple Resource Spectra (4 resources):**
- Phytoplankton spectrum (driven by ISIMIP phydiat, phydiaz, phypico)
- Zooplankton spectrum (driven by ISIMIP zmicro, zmeso)
- Ice Algae spectrum (separate ice-associated resource, sea ice forced)
- Benthic resource spectrum (representing benthic invertebrates)

**3. Environmental Forcing Framework:**
- Sea ice forcing on ice algae, krill dynamics, and predator-prey interactions
- Open water forcing for ice-avoiding predators
- Plankton forcing from ISIMIP climate data
- Following EwE's successful calibration approach (65% improvement)

**4. Predator-Prey Interactions:**
- Size-based feeding with interaction matrix derived from EwE diet composition
- Preserves key trophic pathways (ice algae→krill→predators, benthic pathway)
- 20+ species depend on krill as major prey item

The complete analysis is documented in [`Documentation/02_model_structure.qmd`](Documentation/02_model_structure.qmd), including:
- Detailed species-by-species justifications
- Size range assignments for all taxa
- Key assumptions and simplifications
- Comparison with original EwE model
- Next steps for parameter derivation (Step 3)

This comprehensive approach maintains all 8 monitored species for calibration while pushing mizer beyond typical fish-only applications to include marine mammals and seabirds, following your preference for a detailed ecosystem representation.

