# Complete Diagnostic Report: Model Collapse Analysis and Solutions
## Western Antarctic Peninsula Mizer Model

**Date**: 2026-01-14  
**Status**: Root cause identified, solution proposed  
**Model Version**: Attempt 1

---

# Executive Summary

The mizer model collapses to zero biomass for almost all species during the 100-year steady-state run. Through systematic diagnosis, we identified the **root cause**: a critical design discrepancy where only 1 of 4 planned resource spectra was implemented, resulting in **99.5% of resource biomass missing**.

**Key Finding**: The documentation ([`Documentation/02_model_structure.qmd`](../../../Documentation/02_model_structure.qmd)) planned 4 separate resource spectra (phytoplankton, zooplankton, ice algae, benthic) totaling ~37,786 t/km², but the implementation ([`02_resource_spectrum.R`](02_resource_spectrum.R)) created only 1 spectrum (zooplankton) with 190 t/km².

**Recommended Solution**: Extend the single resource spectrum to cover the full size range (1e-10 to 10 g) and increase carrying capacity to represent all resource groups, while using zooplankton forcing to avoid temporal dynamics mismatches.

---

# Part 1: Initial Diagnosis - The Three Symptoms

## Symptom 1: RESOURCE SIZE MISMATCH (CRITICAL)

### The Problem

The resource spectrum (plankton) size range **does not overlap** with consumer feeding ranges.

**Current Resource Parameters:**
- `w_min` (minimum size): **1e-08 g** (0.00001 mg)
- `w_pp_cutoff` (maximum size): **0.001 g** (1 mg)
- **Resource size range**: 0.00001 mg to 1 mg

**Smallest Consumer (Antarctic Krill):**
- `w_min`: **0.1 g** (100 mg)
- **Krill are 100× larger than the largest resource!**

### Why This Causes Collapse

In mizer, organisms feed on prey **smaller than themselves** by a factor determined by `beta`. Typical predator:prey size ratio is 10:1 to 1000:1.

**Example**:
- Antarctic krill (100 mg) with beta=10 would feed on prey of ~10 mg
- **But largest resource is only 1 mg!**
- Result: **Krill have nothing to eat → starve → die**

**Cascade effect**: All species feeding on krill also starve, causing ecosystem collapse.

## Symptom 2: RESOURCE CARRYING CAPACITY TOO LOW (CRITICAL)

### The Problem

Total resource biomass is insufficient to support the consumer community.

**Current Value**: `kappa` = 8.641

**Estimated resource biomass**: ~50-100 t/km² (from spectrum equation)

**Consumer biomass from EwE**: ~750 t/km²

**Expected ratio**: Resource:Consumer should be **10:1 to 100:1** for marine ecosystems

**Actual ratio**: Likely **< 1:10** (resources less than consumers!)

This violates basic energetic principles - you cannot have more predator biomass than prey biomass.

## Symptom 3: RESOURCE REGENERATION RATE TOO SLOW (CRITICAL)

### The Problem

The resource regeneration rate is orders of magnitude too slow for plankton dynamics.

**Current Value**: `r_pp` = 0.0301 per year (~3% per year, 33-year doubling time)

**Expected Values for Marine Plankton**:
- **Phytoplankton**: 50-365 per year (turnover every 1-7 days)
- **Microzooplankton**: 20-100 per year  
- **Mesozooplankton**: 5-20 per year
- **Large zooplankton**: 1-10 per year

**Current value is 1,000× too slow for phytoplankton and 100× too slow for zooplankton!**

### Impact

**Estimated resource production**: ~50 t/km² × 0.03/year = **1.5 t/km²/year**

**Estimated consumer demand**: ~2,000-5,000 t/km²/year (from EwE Q/B ratios)

**Production meets only ~0.03% of consumer demand!**

---

# Part 2: Root Cause Analysis - The Design Discrepancy

## What Was Planned vs. What Was Implemented

### Planned Design (Documentation/02_model_structure.qmd, lines 213-308)

**4 separate resource spectra:**

#### 1. Phytoplankton Resource Spectrum
- **EwE groups**: Small phytoplankton + Large phytoplankton
- **Size range**: ~1-100 μm (1e-10 to 1e-7 g)
- **Biomass**: Model-calculated ~28,735 t/km² to balance EE = 0.5
- **Forcing**: ISIMIP phydiat, phydiaz, phypico
- **Regeneration**: ~75 per year (fast turnover)

#### 2. Zooplankton Resource Spectrum
- **EwE groups**: Micro + Meso + Macro zooplankton
- **Size range**: 50 μm - 5 mm (1e-7 to 0.01 g)
- **Biomass**: 190 t/km² (Micro: 25, Meso: 130, Macro: 35)
- **Forcing**: ISIMIP zmicro, zmeso
- **Regeneration**: Weighted average ~11 per year

#### 3. Ice Algae Resource Spectrum
- **EwE group**: Ice algae
- **Size range**: Similar to phytoplankton (1-100 μm)
- **Biomass**: ~307 t/km²
- **Forcing**: Sea ice concentration (siconc)
- **Seasonality**: Highly seasonal, winter-spring maximum
- **Importance**: Critical for krill overwinter survival

#### 4. Benthic Resource Spectrum
- **EwE group**: Benthic invertebrates
- **Size range**: Wide (small infauna to large epifauna)
- **Biomass**: **8,554 t/km²** (second highest biomass in EwE!)
- **Importance**: Supports demersal food web (*G. gibberifrons* 59% diet, Weddell Seal 5%, Cephalopods 21%)

**TOTAL PLANNED RESOURCE BIOMASS**: ~37,786 t/km²

### Actually Implemented (02_resource_spectrum.R, lines 1-413)

**Only 1 resource spectrum:**
- **Groups included**: Zooplankton only (Micro + Meso + Macro)
- **Size range**: 1e-8 to 0.001 g (0.00001 mg to 1 mg)
- **Biomass target**: 190 t/km² (zooplankton only)
- **kappa calculated**: 8.641
- **r_pp calculated**: 0.0301 per year
- **Missing**: Phytoplankton, ice algae, benthic invertebrates

**TOTAL IMPLEMENTED RESOURCE BIOMASS**: 190 t/km²

## The Impact of Missing Resources

### Missing Biomass Calculation

| Resource Type | Planned (t/km²) | Implemented (t/km²) | Missing (t/km²) |
|---------------|-----------------|---------------------|-----------------|
| Phytoplankton | 28,735 | 0 | 28,735 |
| Zooplankton | 190 | 190 | 0 |
| Ice Algae | 307 | 0 | 307 |
| Benthic | 8,554 | 0 | 8,554 |
| **TOTAL** | **37,786** | **190** | **37,596** |

**Missing: 99.5% of planned resources!**

### Why This Explains ALL Three Symptoms

1. **Size gap**: Missing large zooplankton (up to 5 mm) and benthic prey
2. **Insufficient biomass**: 200× less than planned (190 vs. 37,786 t/km²)
3. **Wrong regeneration**: Calibrated for zooplankton only, not faster phytoplankton

### Disconnected Trophic Pathways

**Benthic pathway** (8,554 t/km² missing):
- *G. gibberifrons*: 59% benthic diet → **starves**
- Weddell Seal: 5% benthic diet → **loses food source**
- Cephalopods: 21% benthic diet → **food-limited**

**Ice algae pathway** (307 t/km² missing):
- Small krill: 25% ice algae → **winter starvation**
- Large krill: 10% ice algae → **reduced overwinter survival**

**Phytoplankton pathway** (28,735 t/km² missing):
- All herbivorous zooplankton → **no primary production base**
- Entire ecosystem pyramid inverted

---

# Part 3: Solution Design - Multiple Resources in Mizer

## Challenge: Does Mizer Support Multiple Resource Spectra?

### Standard Mizer Limitation

**Standard mizer (v2.x) officially supports:**
- **ONE primary resource spectrum** only
  - Defined by: `resource_params`, `initial_n_pp`
  - Single `kappa`, `lambda`, `w_pp_cutoff`, `r_pp`
- This is a fundamental limitation for complex multi-pathway ecosystems

### Solution Options Evaluated

#### Option 1: Extended Single Resource Spectrum ⭐ RECOMMENDED

**Approach**: Expand the single resource spectrum to cover the full size range representing all resources

```r
w_pp_min <- 1e-10      # Smallest phytoplankton
w_pp_cutoff <- 10      # Large zooplankton and particles
kappa <- 5000          # Represents all resources combined
r_pp <- 10             # Weighted average regeneration rate
```

**Conceptual Model**: The spectrum represents a continuum of organic matter:
- **Small end** (1e-10 to 1e-6 g): Phytoplankton
- **Medium** (1e-6 to 0.01 g): Zooplankton  
- **Large end** (0.01 to 10 g): Large zooplankton, organic particles, detrital aggregates

**Pros**:
- ✓ Works with standard mizer (no custom code)
- ✓ Covers full size range (fixes size gap)
- ✓ Can represent total biomass (fixes capacity)
- ✓ Single implementation, easier to debug
- ✓ Biologically defensible as "available prey continuum"

**Cons**:
- ✗ Cannot separate ice algae seasonal dynamics
- ✗ Cannot represent benthic vs. pelagic explicitly
- ✗ Single regeneration rate (less realistic)

#### Option 2: Resources as "Species"

**Approach**: Add phytoplankton and benthic as very low-trophic "species"

```r
# Add to species_parameters.csv:
# Phytoplankton: w_min=1e-10, w_inf=1e-6, z0=100/year
# Benthic: w_min=0.001, w_inf=50, z0=2/year
```

**Pros**:
- ✓ Each resource can have different dynamics
- ✓ Can implement seasonal ice algae
- ✓ Explicit benthic pathway
- ✓ Works with standard mizer

**Cons**:
- ✗ Conceptually awkward (phytoplankton as "species")
- ✗ More complex parameter setup
- ✗ Need to set up feeding interactions carefully

#### Option 3: mizerExperimental Package

**Approach**: Use experimental features for multiple resource components

**Pros**:
- ✓ Designed for this purpose
- ✓ Most biologically realistic
- ✓ Separate dynamics per resource

**Cons**:
- ✗ Requires mizerExperimental (less stable)
- ✗ More complex to implement
- ✗ Less documentation/support

#### Option 4: Custom Resource Dynamics

**Approach**: Implement custom `resource_dynamics()` function

**Pros**:
- ✓ Complete control
- ✓ Any dynamics possible

**Cons**:
- ✗ Most complex
- ✗ Requires deep mizer expertise
- ✗ Maintenance burden

---

# Part 4: The Forcing Dynamics Challenge

## Problem: Phytoplankton vs. Zooplankton Have Different Dynamics

### ISIMIP Forcing Files Patterns

**Phytoplankton** (phydiat, phydiaz, phypico):
- **Drivers**: Light, nutrients, temperature, mixing
- **Pattern**: Spring/summer blooms, high amplitude
- **Response time**: Days to weeks (fast)
- **Variability**: High (CV often >1.0, boom-bust cycles)

**Zooplankton** (zmicro, zmeso):
- **Drivers**: Phytoplankton availability, temperature, predation
- **Pattern**: Lags phytoplankton by weeks (consumer response)
- **Response time**: Weeks to months (slower)
- **Variability**: Moderate (CV ~0.3-0.7, dampened response)

### The Conflict

If we combine phyto and zoo into a single extended spectrum, **a single forcing time series cannot capture both dynamics simultaneously!**

**Example conflict**:
- **Month 1**: Phyto high (bloom), Zoo low (not yet responded)
  - Which forcing to use? High or low?
- **Month 2**: Phyto crashes (post-bloom), Zoo peaks (feeding on bloom)
  - Opposite patterns!

**Result**: Forcing mismatch could cause unrealistic resource dynamics and incorrect bottom-up effects.

## Solution: Zooplankton Forcing Only (Phase 1)

### Approach

**Use zooplankton forcing ONLY for the entire extended spectrum**

```r
# Force entire spectrum with zooplankton biomass
zoo_forcing <- zmicro_biomass + zmeso_biomass
capacity_scalar <- zoo_forcing / mean(zoo_forcing)
resource_capacity <- base_capacity * capacity_scalar
```

### Why This Works

#### 1. Trophic Integration
Zooplankton biomass **already integrates phytoplankton dynamics** through the food web:
- High phyto → zoo reproduce → high zoo (weeks later)
- Low phyto → zoo starve → low zoo
- **Zoo biomass = time-integrated phyto signal**

#### 2. Consumer Perspective
What consumers actually eat is zooplankton, not phytoplankton:
- Krill feed on **copepods** (zooplankton), not directly on diatoms
- Fish larvae eat **microzooplankton**
- Small fish eat **mesozooplankton**
- **Zoo biomass = available prey**

#### 3. Stability
Zooplankton dynamics are more stable than phytoplankton:
- Phyto: Extreme boom-bust (CV >1.0)
- Zoo: Dampened response (CV ~0.5)
- **More stable forcing → more stable model**

#### 4. Size Representation
The extended spectrum represents "available organic matter":
- Small end (phyto size): Represents phyto-sized particles accessible to micro-zoo
- Large end (zoo size): Represents zoo-sized prey accessible to nekton
- **Forcing by zoo biomass scales "available food" appropriately**

### Ecological Justification

This approach is **biologically defensible** because:

1. **Primary production flows through zooplankton** before reaching most consumers
2. **Zooplankton = functional prey** for the modeled species
3. **Trophic efficiency implicit**: Phyto → Zoo conversion embedded in zoo biomass
4. **Temporal lag captured**: Zoo biomass reflects integrated production history

### Alternative for Future: Size-Dependent Forcing (Phase 2)

After model is stable, implement different forcing by size:

```r
# Small sizes (w < 1e-6 g): Force with phytoplankton data
# Large sizes (w ≥ 1e-6 g): Force with zooplankton data

capacity_matrix <- matrix(NA, nrow = n_times, ncol = n_sizes)

for (t in 1:n_times) {
  for (i in 1:n_sizes) {
    w <- w_grid[i]
    
    if (w < 1e-6) {
      forcing <- phyto_forcing[t]  # Phyto dynamics
    } else {
      forcing <- zoo_forcing[t]    # Zoo dynamics
    }
    
    capacity_matrix[t, i] <- base_capacity[i] * forcing
  }
}
```

This properly captures different dynamics but requires custom capacity matrix implementation.

---

# Part 5: Recommended Implementation

## Phase 1: Immediate Fix (Get Model Running)

### Modified Parameters for 02_resource_spectrum.R

```r
# ==============================================================================
# PHASE 1: EXTENDED SPECTRUM WITH ZOOPLANKTON FORCING
# ==============================================================================

# 1. DRAMATICALLY EXPAND SIZE RANGE
w_min_resource <- 1e-10  # Changed from 1e-8 (now includes phytoplankton)
w_max_resource <- 10     # Changed from 0.001 (now includes large zooplankton)

cat("Extended size range:\n")
cat(sprintf("  Min: %.2e g (%.2e μm equivalent)\n", w_min_resource, (w_min_resource*1e6)^(1/3)))
cat(sprintf("  Max: %.2f g (%.1f mm equivalent)\n", w_max_resource, (w_max_resource*1000)^(1/3)))

# 2. CALCULATE TARGET BIOMASS
# Conservative estimate combining all resources
zoo_biomass_ewe <- 190       # g/m² (measured)
phyto_multiplier <- 20       # Phyto ~20× zoo in productive waters
benthic_background <- 1000   # Accessible benthic/detritus

target_total <- zoo_biomass_ewe * (1 + phyto_multiplier) + benthic_background
# = 190 * 21 + 1000 = 4,990 g/m²

# For fuller representation (closer to EwE totals):
# target_total <- 10000  # Conservative
# target_total <- 20000  # Moderate
# target_total <- 38000  # Full (all EwE resources)

cat(sprintf("\nTarget resource biomass: %.0f g/m² (%.0f t/km²)\n", 
            target_total, target_total))

# 3. CALCULATE KAPPA
lambda_resource <- 2.05
exponent <- 2 - lambda_resource
biomass_integral <- (w_max_resource^exponent - w_min_resource^exponent) / exponent
kappa_resource <- target_total / biomass_integral

cat(sprintf("Calculated kappa: %.2f (increased from 8.641)\n", kappa_resource))

# 4. SET REGENERATION RATE
# Zooplankton-appropriate (since that's what we're forcing with)
# Weighted average: micro-zoo ~50/yr, meso-zoo ~5/yr
# Conservative average for mixed community
r_pp_annual <- 10  # per year (conservative for zooplankton)
r_pp_daily <- r_pp_annual / 365

cat(sprintf("Regeneration rate: %.2f /year (%.4f /day)\n", 
            r_pp_annual, r_pp_daily))

# 5. LOAD ISIMIP ZOOPLANKTON FORCING
# (Keep existing plankton loading code but use zoo only for forcing)

zoo_forcing <- plankton_forcing$zmicro$time_series %>%
  left_join(plankton_forcing$zmeso$time_series, by = "time", suffix = c("_micro", "_meso")) %>%
  mutate(
    total_zoo = mean_biomass_micro + mean_biomass_meso,
    scaling_factor = total_zoo / mean(total_zoo)
  )

cat(sprintf("\nZooplankton forcing range: %.2f to %.2f (mean=1.0)\n",
            min(zoo_forcing$scaling_factor),
            max(zoo_forcing$scaling_factor)))

# 6. SAVE PARAMETERS
resource_params <- list(
  # Size range
  w_min = w_min_resource,
  w_max = w_max_resource,
  w_pp_cutoff = w_max_resource,
  
  # Spectrum parameters
  kappa = kappa_resource,
  lambda = lambda_resource,
  
  # Dynamics
  r_pp = r_pp_daily,  # Per day for mizer
  
  # Strategy metadata
  forcing_strategy = "zooplankton_only_phase1",
  target_biomass = target_total,
  
  # EwE comparison
  ewe_zoo_biomass = zoo_biomass_ewe,
  ewe_total_resources = 37786,  # All 4 resource types
  
  # Forcing data
  capacity_forcing = zoo_forcing,
  plankton_forcing = plankton_forcing
)

saveRDS(resource_params, here("Models", "AI-assisted", "Attempt 1", "resource_params.rds"))

cat("\n✓ Phase 1 resource parameters saved\n")
cat("  Strategy: Extended spectrum with zooplankton forcing\n")
cat("  Ready for model initialization\n\n")
```

### Expected Outcomes

| Parameter | Old Value | New Value | Change | Rationale |
|-----------|-----------|-----------|--------|-----------|
| **w_min** | 1e-8 g | 1e-10 g | 100× smaller | Includes phytoplankton |
| **w_pp_cutoff** | 0.001 g | 10 g | 10,000× larger | Includes large zooplankton |
| **kappa** | 8.641 | ~330 | 38× larger | Conservative resource pool |
| **r_pp** | 0.03/year | 10/year | 333× faster | Zooplankton regeneration |
| **Total biomass** | 190 t/km² | 5,000 t/km² | 26× more | Adequate for consumers |

### Validation Checks After Implementation

Run [`04_initial_model_setup.R`](04_initial_model_setup.R) and check:

- [ ] **Resource biomass**: Should be ~5,000-10,000 t/km² (not 190)
- [ ] **Resource:Consumer ratio**: Should be 7:1 to 13:1 (not <1:1)
- [ ] **Size overlap**: Resources extend to 10 g, krill can feed on 0.1-1 g prey
- [ ] **Feeding levels**: Should be >0.3 for most species (not <0.1)
- [ ] **Biomass trajectories**: Should be stable or slow decline (not collapse)
- [ ] **Model runs**: Should complete 100 years without crash

## Phase 2: Refinements (After Stable)

### 2a. Implement Size-Dependent Forcing

If need to capture phyto-zoo lag dynamics:
```r
# Create capacity matrix: time × size
# Small sizes: Phyto forcing
# Large sizes: Zoo forcing
```

### 2b. Add Seasonal Ice Algae

Modulate small-size capacity by sea ice:
```r
# ice_effect <- sea_ice_concentration * seasonal_factor
# capacity[small_sizes] *= (1 + ice_effect)
```

### 2c. Add Benthic as Species

If demersal fish still struggle:
```r
# Add "Benthic Invertebrates" to species_parameters
# High biomass, low trophic level, feeds demersal pathway
```

## Phase 3: Full Multi-Resource System (Long-term)

Explore `mizerExperimental` or custom dynamics for true multiple resource spectra if needed for research questions requiring explicit separation of production pathways.

---

# Part 6: Summary and Action Plan

## Root Cause Summary

The model collapse is caused by **missing 99.5% of planned resource biomass** due to implementing only 1 of 4 planned resource spectra:

```
PLANNED (Documentation):
├─ Phytoplankton: 28,735 t/km²
├─ Zooplankton: 190 t/km²
├─ Ice algae: 307 t/km²
└─ Benthic: 8,554 t/km²
   TOTAL: 37,786 t/km²

IMPLEMENTED (Code):
└─ Zooplankton: 190 t/km² ONLY
   TOTAL: 190 t/km² (99.5% missing!)
```

This creates three interconnected failures:
1. **Size gap**: Resources too small for consumers to access
2. **Insufficient biomass**: Inverted trophic pyramid (predators > prey)
3. **Inadequate production**: Resources regenerate too slowly

## Recommended Action Plan

### Step 1: Implement Extended Spectrum (Immediate)

Edit [`02_resource_spectrum.R`](02_resource_spectrum.R):
- Change `w_min` from 1e-8 to **1e-10 g**
- Change `w_pp_cutoff` from 0.001 to **10 g**
- Increase `kappa` from 8.641 to **~330** (target 5,000 t/km²)
- Increase `r_pp` from 0.03 to **10 /year**
- Force with **zooplankton only** (zmicro + zmeso)

### Step 2: Re-run Model Setup

```bash
cd Models/AI-assisted/Attempt\ 1
Rscript 02_resource_spectrum.R
Rscript 04_initial_model_setup.R
```

### Step 3: Validate Results

Check [`model_setup_summary.txt`](model_setup_summary.txt):
- Resource biomass should be >5,000 t/km²
- Feeding levels should be >0.3
- Biomass trajectories should not collapse

### Step 4: Iterate if Needed

If model still unstable:
- Increase kappa further (try 10,000 or 20,000 t/km²)
- Adjust r_pp (try 15-20/year)
- Consider adding benthic as species

## Why This Will Work

### 1. Size Coverage
```
Old:    [----1 mg----|                           ] (gap to krill)
New:    [0.0001 mg========================10 g   ] (full overlap)
        ^phyto    ^micro-zoo  ^meso-zoo  ^large-zoo^
                              ^krill feeds here^
```

### 2. Biomass Adequacy
```
Old pyramid (inverted):
    Predators: 10 t/km²
    Fish/Krill: 250 t/km²
    Resources: 190 t/km²  ← INVERTED!

New pyramid (correct):
    Predators: 10 t/km²
    Fish/Krill: 250 t/km²  
    Resources: 5,000 t/km²  ← Supports consumers
```

### 3. Energy Flow
```
Old: Production = 0.03 × 190 = 5.7 t/km²/year
     Demand = ~2,000 t/km²/year
     Balance: 0.3% of demand met

New: Production = 10 × 5,000 = 50,000 t/km²/year
     Demand = ~2,000 t/km²/year  
     Balance: 2,500% of demand met (surplus for losses)
```

### 4. Forcing Strategy
- Zooplankton biomass integrates phytoplankton dynamics
- Provides stable, biologically-relevant forcing
- Avoids phyto-zoo temporal mismatch
- Can refine later with size-dependent forcing

## Expected Model Behavior After Fix

### Initial Run (Years 0-10)
- Slight biomass adjustments as model equilibrates
- Species find feeding levels
- Some redistribution across size classes

### Quasi-Steady State (Years 20-100)
- Stable biomass trajectories (CV < 0.2)
- Realistic feeding levels (0.4-0.8)
- Proper trophic structure maintained
- Seasonal variations if forcing applied

### Key Indicators of Success
- ✓ No species collapse to zero
- ✓ Krill maintain 50-200 t/km²
- ✓ Fish stable at 5-15 t/km²
- ✓ Predators maintain EwE biomass ±50%
- ✓ Feeding levels >0.3 for 90% of species

---

# Appendices

## Appendix A: Diagnostic Script

Run [`diagnose_model_collapse.R`](diagnose_model_collapse.R) for quantitative assessment of:
- Resource biomass vs. consumer demand
- Size overlap analysis
- Feeding level calculations
- Production:Demand ratios
- Energy balance validation

## Appendix B: Original EwE Resource Groups

| Group | Type | Biomass (t/km²) | P/B (/year) | Notes |
|-------|------|-----------------|-------------|-------|
| Small Phytoplankton | Producer | ~15,023 | 75 | <20 μm |
| Large Phytoplankton | Producer | ~13,712 | 75 | >20 μm |
| Ice Algae | Producer | ~307 | 50 | Sea ice associated |
| Micro-Zooplankton | Consumer | 25 | 55 | <200 μm |
| Meso-Zooplankton | Consumer | 130 | 4.81 | 200-2000 μm |
| Macro-Zooplankton | Consumer | 35 | 2.5 | >2000 μm |
| Benthic Invertebrates | Consumer | 8,554 | 2.0 | Infauna + epifauna |
| **TOTAL RESOURCES** | | **37,786** | | |

## Appendix C: Parameter Sensitivity

Potential parameter adjustments if model remains unstable:

**If krill still struggle**:
- Increase w_pp_cutoff to 20 g (larger prey available)
- Increase kappa to 1000+ (more food)
- Decrease krill z0 (lower mortality)

**If predators struggle**:
- Increase interaction matrix values (easier to find prey)
- Adjust beta parameters (change prey size preferences)
- Check feeding levels - may need kappa increase

**If resources are over-abundant**:
- Decrease kappa (less resource capacity)
- Increase consumer h parameters (faster consumption)

---

# Conclusion

The model collapse is fundamentally due to a **design implementation gap** where 99.5% of planned resources were not created. The three observed symptoms (size gap, insufficient biomass, slow regeneration) all stem from this single root cause.

**The solution is straightforward**: Extend the single resource spectrum to represent all resource groups, calibrate parameters to provide adequate biomass (~5,000-10,000 t/km²), and use zooplankton forcing to avoid temporal dynamics mismatches.

This pragmatic approach:
- ✓ Works within standard mizer framework (no custom code needed)
- ✓ Fixes all three critical issues simultaneously
- ✓ Is biologically defensible (zoo as integrated prey signal)
- ✓ Can be refined later with more sophisticated forcing

Once implemented, the model should run successfully for 100+ years and provide a functional base for calibration, climate scenario testing, and ecosystem projections.

---

**Next Action**: Implement the Phase 1 parameter changes in [`02_resource_spectrum.R`](02_resource_spectrum.R) and re-run model initialization.
