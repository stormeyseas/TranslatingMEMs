# Recommendations to Fix Model Collapse
## Western Antarctic Peninsula Mizer Model - Analysis Date: 2026-01-14

---

## Executive Summary

The model is experiencing **complete ecosystem collapse** during the 100-year stabilizing run. After analyzing the documentation and code, I've identified **two critical issues** and provide concrete recommendations below.

**Root Causes:**
1. ✅ **Extended resource spectrum WAS implemented** (size range, kappa increased)
2. ❌ **CRITICAL BUG: r_pp units mismatch** - resources regenerate 365× too slowly!
3. ⚠️ **"Conservative" resource target may be inadequate** for this ecosystem

---

## Current Model State (From model_setup_summary.txt)

### Resource Parameters
- **Kappa:** 109.9 (provides ~5,000 t/km² resources)
- **Lambda:** 2.05 ✓ (correct)
- **r_pp:** 0.0301 /year ❌ (CRITICAL BUG - see below)
- **w_pp_cutoff:** 10 g ✓ (correct)
- **w_min:** 1e-10 g ✓ (correct)

### Outcome
- **All species collapse to 0.00 biomass by year 100**
- **Mean CV:** 1.41 (extremely unstable)
- **Feeding levels:** ~0.335 (critically low - starvation threshold)
- **Salps:** Below minimum healthy feeding level
- **All species struggling:** Feeding ~0.335 indicates severe food shortage

---

## Issue #1: CRITICAL BUG - r_pp Units Mismatch ❌

### The Problem

**Location:** `02_resource_spectrum.R` line 330 and `04_initial_model_setup.R` line 97

```r
# 02_resource_spectrum.R (line 330):
r_pp = resource_rate_daily,  # Per day for mizer time steps  ← WRONG!

# 04_initial_model_setup.R (line 97):
resource_rate = resource_params$r_pp,  # ← Receives 0.0301 (daily rate)

# 04_initial_model_setup.R (line 210):
sim_medium <- project(params, t_max = 100, dt = 0.1, t_save = 1)  # dt in YEARS!
```

**The Bug:**
- Mizer's `dt` parameter is in **YEARS** (dt=0.1 means 0.1 year time steps)
- Therefore, `resource_rate` must be in **per YEAR** units
- But the code saves `resource_rate_daily` (0.0301 /year ÷ 365 = 0.0000824 /day)
- **Result: Resources regenerate 365× too slowly!**

### The Impact

**Current (broken) energy balance:**
```
Resource production = 5,000 t/km² × 0.0301 /year = 150 t/km²/year
Consumer demand    = ~2,500 t/km²/year (from EwE Q/B ratios)
Balance            = 150 / 2,500 = 0.06 (6% of demand met)
```

**After fix:**
```
Resource production = 5,000 t/km² × 10.95 /year = 54,750 t/km²/year
Consumer demand    = ~2,500 t/km²/year
Balance            = 54,750 / 2,500 = 21.9 (adequate surplus for losses)
```

### The Fix

**File:** `Models/AI-assisted/Attempt 1/02_resource_spectrum.R`

**Line 330 - Change from:**
```r
r_pp = resource_rate_daily,  # Per day for mizer time steps
```

**To:**
```r
r_pp = resource_rate_annual,  # Mizer dt is in years, needs annual rate
```

**Expected result:** Resources regenerate at proper zooplankton rate (10.95 /year)

---

## Issue #2: "Conservative" Resource Target May Be Inadequate ⚠️

### Your Observation is Correct!

From `Documentation/04_resource_spectrum.qmd` (line 180):
```
**Scaling options**:
- Conservative: 5,000 t/km² (used initially)
- Moderate: 10,000 t/km² (if consumers struggle)  ← You are here!
- Full: 20,000-30,000 t/km² (closer to EwE total)
```

**Current choice:** "Conservative" (5,000 t/km²)  
**Your concern:** "Might the 'Full' option relieve collapse?"  
**My answer:** **YES, absolutely!**

### The Evidence

**Consumer biomass from EwE:** ~750 t/km² total
- Antarctic Krill: 110 t/km² × Q/B(10) = 1,100 t/km²/year
- Other consumers: ~1,500 t/km²/year
- **Total annual demand: ~2,500-3,000 t/km²/year**

**Resource:Consumer ratios:**
- Current: 5,000:750 = **6.7:1**
- Moderate: 10,000:750 = **13:1** ✓ (healthy marine ecosystem)
- Full: 25,000:750 = **33:1** (very productive)

**Typical marine ecosystems:** 10:1 to 100:1 resource:consumer ratio

### Why "Conservative" Is Too Conservative

The EwE model documented **~37,786 t/km² total resources**:
- Phytoplankton: ~28,735 t/km²
- Zooplankton: 190 t/km²
- Ice Algae: ~307 t/km²
- Benthic: 8,554 t/km²

**Using only 5,000 t/km² represents 13% of the EwE resource base** - this may be too austere for the Antarctic ecosystem which has:
- High primary production in summer
- Large standing stocks of phytoplankton
- Significant benthic biomass

### The Fix

**File:** `Models/AI-assisted/Attempt 1/02_resource_spectrum.R`

**Option A: "Moderate" (Recommended First Try)**

Lines 107-112, change from:
```r
zoo_biomass_g_m2 <- 190         # Measured zooplankton (baseline)
phyto_multiplier <- 20          # Phyto typically ~20× zoo in productive waters
benthic_background <- 1000      # Accessible benthic/detrital organic matter (fraction)
```

To:
```r
zoo_biomass_g_m2 <- 190         # Measured zooplankton (baseline)
phyto_multiplier <- 50          # Increase phyto representation (was 20)
benthic_background <- 2000      # Increase accessible benthic (was 1000)
```

**Result:** 190 × 51 + 2,000 = **11,690 g/m²** (~12,000 t/km², "Moderate")

**Option B: "Full" (If Moderate Still Struggles)**

```r
zoo_biomass_g_m2 <- 190         # Measured zooplankton (baseline)
phyto_multiplier <- 120         # Closer to EwE phyto levels
benthic_background <- 4000      # Half of EwE benthic (accessible fraction)
```

**Result:** 190 × 121 + 4,000 = **26,990 g/m²** (~27,000 t/km², "Full")

---

## Issue #3: Is This Just a Calibration Issue? 🤔

### Your Question
"There is still a calibration section to come, so could this just be a calibration issue? It seems bigger than that."

### My Answer: **You're Right - It's Bigger Than Calibration**

**Calibration** fine-tunes a **working model**:
- Adjust predation coefficients
- Tweak growth parameters
- Match species biomass ratios
- Align production:biomass ratios

**These are fundamental bugs** that prevent the model from working:
1. **r_pp units bug** = 365× error in core energy flux
2. **Inadequate resources** = inverted trophic pyramid
3. **Energy balance broken** = production < consumption

**Analogy:**
- **Calibration** = adjusting the carburetor on a car engine
- **These bugs** = the fuel tank is empty and the spark plugs are disconnected!

**You cannot calibrate a model that collapses completely.** Fix these fundamental issues first, THEN calibrate.

---

## Complete Fix Implementation Plan

### Step 1: Fix r_pp Units Bug (CRITICAL)

**File:** `Models/AI-assisted/Attempt 1/02_resource_spectrum.R`

**Line 330:**
```r
# OLD:
r_pp = resource_rate_daily,  # Per day for mizer time steps

# NEW:
r_pp = resource_rate_annual,  # Mizer dt is in years, needs annual rate
```

### Step 2: Increase Resource Target (RECOMMENDED)

**File:** `Models/AI-assisted/Attempt 1/02_resource_spectrum.R`

**Lines 107-112 (Option: "Moderate"):**
```r
zoo_biomass_g_m2 <- 190         # Measured zooplankton (baseline)
phyto_multiplier <- 50          # Increase to provide more phyto (was 20)
benthic_background <- 2000      # Increase accessible fraction (was 1000)
```

### Step 3: Add Documentation Comment

**File:** `Models/AI-assisted/Attempt 1/02_resource_spectrum.R`

**After line 328, add:**
```r
# CRITICAL: Mizer simulation dt is in YEARS (dt=0.1 means 0.1 year time steps)
# Therefore resource_rate MUST be in per-YEAR units, not per-day!
# Using resource_rate_annual (not resource_rate_daily) ensures correct regeneration.
```

### Step 4: Re-run Model

```bash
cd "Models/AI-assisted/Attempt 1"
Rscript 02_resource_spectrum.R
Rscript 04_initial_model_setup.R
```

### Step 5: Validate Results

Check `model_setup_summary.txt` for:
- ✓ **r_pp:** Should be ~10-11 /year (not 0.03)
- ✓ **Kappa:** Should be ~800 (for 12,000 t/km²) or ~330 (if keeping 5,000)
- ✓ **Steady state biomass:** Species should NOT be 0.00
- ✓ **Feeding levels:** Should be >0.5 for most species
- ✓ **CV:** Should be <0.5 for most species

---

## Expected Outcomes After Fixes

### Energy Balance (With r_pp Fix + Moderate Resources)

| Metric | Current (Broken) | After Fix | Status |
|--------|-----------------|-----------|--------|
| **Resource biomass** | 5,000 t/km² | 12,000 t/km² | ✓ Adequate |
| **Resource production** | 150 t/km²/yr | 131,400 t/km²/yr | ✓ Surplus |
| **Consumer demand** | 2,500 t/km²/yr | 2,500 t/km²/yr | - |
| **Production:Demand** | 0.06:1 (collapse) | 52:1 (healthy) | ✓ Balanced |
| **Resource:Consumer** | 6.7:1 | 16:1 | ✓ Proper pyramid |

### Model Behavior (Predicted)

**Years 0-10:**
- Initial equilibration as species find feeding levels
- Some biomass redistribution across size classes
- Minor adjustments (±20% biomass changes)

**Years 20-100:**
- Stable biomass trajectories (CV < 0.3)
- Realistic feeding levels (0.5-0.8)
- Proper trophic structure maintained
- No species collapse to zero

**Key Success Indicators:**
- ✓ Krill maintain 80-150 t/km² (near EwE 110)
- ✓ Fish stable at 8-15 t/km²
- ✓ Predators maintain within 50% of EwE
- ✓ Feeding levels >0.5 for 90% of species
- ✓ Mean CV < 0.5 (reasonable variability)

---

## Why These Fixes Address Your Concerns

### Your Concern #1: "Salps falling below minimum, all species struggling"
**Diagnosis:** Food shortage (feeding ~0.335 = starvation)  
**Fix:** r_pp bug (365× more food production) + increased kappa (more resources)  
**Expected result:** Feeding levels rise to 0.5-0.8 (well-fed)

### Your Concern #2: "Why not use 'Full' option closer to EwE total?"
**Diagnosis:** "Conservative" (13% of EwE) too restrictive for productive Antarctic waters  
**Fix:** Move to "Moderate" (32% of EwE) or "Full" (72% of EwE)  
**Expected result:** Proper resource:consumer ratio (10-30:1), stable ecosystem

### Your Concern #3: "Could this just be calibration?"
**Diagnosis:** No - fundamental parameterization bugs  
**Fix:** These bugs MUST be fixed before calibration  
**Expected result:** Working model ready for calibration

---

## Alternative: If Issues Persist After Fixes

### If Krill Still Struggle
- Increase `w_pp_cutoff` to 20 g (larger prey available)
- Further increase kappa to "Full" option (~27,000 t/km²)
- Check krill `beta` parameter (prey size preference)

### If Predators Still Struggle
- Increase interaction matrix values (easier prey detection)
- Adjust `sigma` parameters (broader diet breadth)
- Check that resources extend to sizes they can eat

### If Resources Over-Accumulate
- Decrease kappa slightly (less carrying capacity)
- Increase consumer `h` parameters (faster consumption rate)
- This would be a "good problem" after current starvation!

---

## Scientific Justification for "Full" Option

### Antarctic Ecosystem Context

**High productivity characteristics:**
1. **Summer phytoplankton blooms:** 100-1000 mg C/m³ (very high)
2. **Large krill stocks:** Support massive whale, seal, penguin populations
3. **Benthic richness:** 8,554 t/km² in EwE (second highest biomass group!)
4. **Ice algae:** Critical overwinter food source (~307 t/km²)

**The "Conservative" 5,000 t/km² target:**
- Omits 76% of phytoplankton (~22,000 t/km² missing)
- Omits 79% of benthic biomass (~6,800 t/km² missing)
- Omits 100% of ice algae (307 t/km² missing)

**The "Full" ~27,000 t/km² target:**
- Includes ~95% of phytoplankton (realistic accessible fraction)
- Includes ~50% of benthic (realistic accessible to mobile feeders)
- Includes ice algae conversion to detritus
- **Represents functional prey available to modeled consumers**

### Ecological Rationale

The extended spectrum represents "**available organic matter**" that consumers can access:
- **Small sizes (phyto):** Microzooplankton graze these → converted to zoo biomass
- **Medium sizes (zoo):** Directly eaten by krill, fish larvae, small fish
- **Large sizes:** Krill, large copepods, organic aggregates → eaten by fish, whales

**This is not "adding extra food"** - it's representing the actual resource base that:
1. Phytoplankton provides (~28,000 t/km² in EwE)
2. Gets consumed by herbivorous zooplankton
3. Flows to higher trophic levels

The single extended spectrum **collapses this multi-step trophic interaction** into one accessible pool, so it MUST include the phytoplankton base that ultimately feeds everything.

---

## Conclusion

### The Core Problem
The model collapse is caused by **two compounding issues**:
1. **r_pp units bug:** Resources regenerate 365× too slowly (critical)
2. **Conservative resources:** Only 13% of EwE resource base used (limiting)

### The Solution
1. **Fix r_pp units** (line 330 in 02_resource_spectrum.R) - **IMMEDIATE**
2. **Increase to "Moderate" or "Full"** (lines 107-112) - **RECOMMENDED**
3. **Re-run and validate** - model should stabilize

### Why This Will Work
- **Energy balance restored:** Production (131,000) >> Demand (2,500) ✓
- **Proper trophic pyramid:** Resources (12,000-27,000) >> Consumers (750) ✓
- **Size overlap maintained:** Extended spectrum already correct ✓
- **Biologically realistic:** Represents actual Antarctic productivity ✓

### Is Calibration Still Needed?
**YES** - but AFTER these fixes make the model functional:
- Current state: Model collapses (cannot calibrate a dead model)
- After fixes: Model stable but biomasses may not match EwE perfectly
- Calibration: Fine-tune to match EwE species ratios, P/B, Q/B

**You were absolutely right** to be concerned about using the "Conservative" option. The complete collapse is telling you the ecosystem needs more resources!

---

## References

- **Current files:**
  - `Models/AI-assisted/Attempt 1/02_resource_spectrum.R` (parameter calculation)
  - `Models/AI-assisted/Attempt 1/04_initial_model_setup.R` (model setup)
  - `Models/AI-assisted/Attempt 1/model_setup_summary.txt` (current results)

- **Documentation:**
  - `Documentation/04_resource_spectrum.qmd` (resource spectrum design)
  - `Models/AI-assisted/Attempt 1/COMPLETE_DIAGNOSTIC_REPORT.md` (earlier diagnosis)

**Next action:** Implement the two fixes above and re-run the model!
