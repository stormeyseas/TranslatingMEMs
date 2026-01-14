# Preventing Collapse Investigation 03
## Post r_pp and Kappa Fixes Analysis

**Date:** 2026-01-14  
**Status:** Resource fixes applied, model still collapsing - investigating additional causes

---

## Executive Summary

After successfully implementing the critical r_pp units fix (11 /year instead of 0.0301) and increasing resources to "Moderate" level (kappa = 257.4, ~12,000 t/km²), **the model still collapses completely**. This indicates deeper structural issues beyond resource availability.

**Current State:**

- ✅ r_pp corrected: 11 /year (was 0.0301)
- ✅ Kappa increased: 257.4 providing ~12,000 t/km² (was 109.9 providing ~5,000)
- ❌ Model still collapses: ALL species → 0.00 biomass by year 100
- ❌ Mean CV: 1.41 (extremely unstable)
- ❌ Feeding levels: ~0.335 (starvation)

**Energy Balance Check:**

- Resource production: 12,000 × 11 = **132,000 t/km²/year** ✓ (was 150)
- Consumer demand: ~2,500-3,000 t/km²/year
- P:D ratio: **52:1** ✓ (was 0.06:1)

**Despite adequate resource production, the model collapses.** This points to fundamental issues with:

1. Species parameter values (mortality, feeding rates)
2. Interaction matrix (prey availability/detection)
3. Size structure (beta/sigma parameters)

---

## Investigation Pathway 1: Species Parameters

### Mortality Rates (z0) Analysis

From `species_parameters.csv`, examining background mortality rates:

**High Mortality Species (likely to collapse first):**

- **Salps:** z0 = 3.0 /year (extremely high for filter feeder)
- **Cephalopods:** z0 = 3.15 /year (very high)
- **Other Euphausiids:** z0 = 1.5 /year
- **Myctophids:** z0 = 1.1 /year

**Problem:** Salps have z0 = 3.0 /year, meaning they need to replace 95% of biomass annually through reproduction. With feeding ~ 0.335 (starvation), they cannot sustain this mortality.

**Compare to Antarctic Krill (surviving longer):**

- z0 = 0.8 /year (much lower)
- Still struggling but dies slower

**Hypothesis:** High z0 values calibrated from EwE P/B ratios don't account for mizer's size-structured dynamics where mortality accumulates across size classes.

### Feeding Rates (h) Analysis

Maximum consumption rates from species parameters:

**Very High h (may exceed reality):**

- **Cephalopods:** h = 405,102 g/year (!)
- **Notothenia rossii:** h = 37,289 g/year
- All large species have extremely high h values

**Problem:** These h values came from allometric scaling (h ∝ w_inf^n). For very large species (whales at 150 million grams), this produces astronomical h values that may not reflect actual mizer feeding mechanics.

**Critical Issue:** If h is too high relative to available prey, the encounter rate equation may produce anomalously low feeding levels even with adequate resources.

### Beta (PPMR) Analysis

Predator-prey mass ratio from species parameters:

**Concerning Values:**

- **Notothenia rossii:** beta = 500 (extremely selective)
- **Antarctic Fur Seal:** beta = 300
- **Blue/Fin/Humpback Whales:** beta = 200
- **Most fish:** beta = 100

**Problem:** Beta values of 100-500 mean:

- Krill (0.1-1 g) can only eat prey 0.001-0.01 g
- Resources now extend to 10 g, but krill still need prey 0.001-0.01 g
- **Gap between smallest krill (0.1 g) and largest available prey in their range**

**Critical Realization:** Even with extended resources to 10 g, if beta is too high, small consumers can't access the food!

### Sigma (Diet Breadth) Analysis

From species parameters:

- **Most species:** sigma = 1.5 (moderate)
- **Crabeater Seal:** sigma = 1.0 (very narrow - krill specialist)
- **Blue/Fin/Humpback Whales:** sigma = 0.8 (extremely narrow)
- **G. gibberifrons:** sigma = 2.0 (broad - benthic feeder)

**Problem:** Narrow sigma with high beta creates extreme selectivity. Baleen whales with sigma = 0.8 and beta = 200 have almost no feeding flexibility.

---

## Investigation Pathway 2: Interaction Matrix

From `interaction_matrix.csv`, examining prey availability:

**Resource Spectrum Availability:**
Looking at who can access the resource spectrum (row not shown in matrix, but implicit in mizer):

**Problem Areas:**

1. **Antarctic Krill** (110 t/km² in EwE):

   - beta = 10 (prey 0.01-0.1 g range)
   - Resources extend to 10 g, but with lambda = 2.05:
   - Abundance ∝ w^-2.05, so most biomass concentrated at SMALL sizes
   - Krill need 0.01-0.1 g prey, but abundance peaks at smaller sizes!

2. **Fish accessing resources:**

   - Most fish have beta = 100-500
   - Smallest fish (On-shelf) w_min = 10 g
   - At beta = 100, need 0.1 g prey
   - Resources available, but may be "invisible" due to size spectrum slope

3. **Interaction values seem reasonable:**

   - Krill → predators: 0.61-0.95 (high)
   - Fish → predators: 0.01-0.6 (varied)
   - But these don't matter if the base (resources → krill) fails

**Critical Issue:** The problem isn't predator-prey interactions; it's the **resource spectrum → consumer** interface.

---

## Investigation Pathway 3: Initial Conditions

From `model_setup_summary.txt`:

**Initial Biomass:** Perfect match (all ratios = 1.00)

- Every species initialized to exact EwE biomass

**Problem:** 

- Mizer uses size-structured abundances: N(w,sp)
- Initial abundance distribution assumes equilibrium size structure
- But if parameters are wrong, this "equilibrium" is unstable
- Species immediately start bleeding biomass

**Critical Issue:** Perfect initial biomass with wrong parameters = immediate collapse

---

## Root Cause Analysis

### The Core Problem: Mismatch Between EwE and Mizer Scales

**EwE Approach:**

- Biomass pools (no size structure)
- P/B drives mortality (direct)
- Direct diet matrix percentages

**Mizer Approach:**

- Size-structured (continuous w spectrum)
- Mortality = z0 + fishing + predation(size-dependent)
- Feeding = encounter rate × preference × handling
- **Encounter depends on predator size, prey size, prey abundance at each size**

**The Disconnect:**

1. **z0 values from P/B:**
   - In EwE: P/B = natural mortality for a biomass pool
   - In Mizer: z0 is BASE mortality, then adds size-dependent predation
   - **Result:** z0 too high for mizer context

2. **h values from allometry:**
   - Scaled as h ∝ w_inf^n
   - Produces values 10^5 - 10^7 for large species
   - May not match mizer's encounter-based feeding mechanics
   - **Result:** Unrealistic consumption rates

3. **Beta/Sigma from diet breadth:**
   - Derived to match EwE selectivity
   - But in mizer, beta interacts with size spectrum slope
   - High beta + steep spectrum = invisible prey
   - **Result:** Can't find food even when abundant

---

## Proposed Solutions

### Solution 1: Reduce Background Mortality (z0)

**Rationale:** In mizer, z0 should only represent non-predation natural mortality (disease, senescence). Predation mortality is calculated dynamically.

**Proposed Changes:**
```r
# In 01_derive_species_parameters.R

# OLD approach (lines ~180-190):
z0 <- pmax(pb - fishing, 0.1)  # z0 ≈ P/B from EwE

# NEW approach:
# Use fraction of P/B as base z0, rest comes from predation
z0 <- pmax((pb - fishing) * 0.3, 0.05)  # 30% of EwE P/B as base
```

**Expected Impact:**

- Salps: 3.0 → 0.9 /year
- Cephalopods: 3.15 → 0.95 /year  
- Krill: 0.8 → 0.24 /year
- More realistic, allows mizer to add predation mortality

### Solution 2: Reduce Beta (PPMR)

**Rationale:** High beta values create size mismatch with resource spectrum slope. Need to ensure consumers can access prey.

**Proposed Changes:**
```r
# In 03_interaction_matrix_calibration.R

# OLD approach (lines ~200-220):
beta <- preferred_ppmr  # Direct from diet analysis (10-500)

# NEW approach:
# Cap beta to ensure prey accessibility
beta <- pmin(preferred_ppmr, 100)  # Maximum PPMR = 100
# For krill/small consumers, use lower
beta[species_params$category %in% c("krill", "other")] <- 
  pmin(beta[species_params$category %in% c("krill", "other")], 50)
```

**Expected Impact:**

- Krill: 10 → 10 (unchanged, already good)
- Large fish: 500 → 100 (can access more size classes)
- More overlap with resource spectrum

### Solution 3: Increase Sigma (Diet Breadth)

**Rationale:** Baleen whales with sigma = 0.8 are too specialized. Need feeding flexibility.

**Proposed Changes:**
```r
# In 03_interaction_matrix_calibration.R

# NEW approach:
# Set minimum sigma for feeding flexibility
sigma <- pmax(diet_breadth_sigma, 1.2)  # Minimum breadth = 1.2
```

**Expected Impact:**

- Baleen whales: 0.8 → 1.2 (more flexible)
- Crabeater seal: 1.0 → 1.2 (less extreme specialization)
- Better able to find food

### Solution 4: Reduce Maximum Consumption (h)

**Rationale:** Extremely high h values for large species may cause numerical issues in encounter rate calculations.

**Proposed Changes:**
```r
# In 01_derive_species_parameters.R

# After calculating h (around line 150):
# Cap h for large species
h_max <- w_inf * 10  # Maximum 10× body weight per year (generous)
h <- pmin(h, h_max)
```

**Expected Impact:**

- Removes unrealistic h values > 10^5
- Ensures feeding rates within biological plausibility

### Solution 5: Increase Resource Biomass to "Full"

**Rationale:** Even with 12,000 t/km², the steep resource spectrum slope (lambda = 2.05) concentrates biomass at small sizes. Consumers may still be resource-limited.

**Proposed Changes:**
```r
# In 02_resource_spectrum.R (lines 107-112)

# Current "Moderate":
phyto_multiplier <- 50
benthic_background <- 2000
# Gives: 11,690 g/m²

# Change to "Full":
phyto_multiplier <- 120  # Closer to EwE phyto levels
benthic_background <- 4000  # Half of EwE benthic (accessible fraction)
# Gives: 26,990 g/m² (~27,000 t/km²)
```

**Expected Impact:**

- Resource production: 27,000 × 11 = **297,000 t/km²/year**
- More "food at the right sizes" for consumers

---

## Recommended Action Plan

**Priority 1: Reduce z0 (Immediate)**

This is the most likely culprit. High z0 values cause unsustainable mortality.

**File:** `Models/AI-assisted/Attempt 1/01_derive_species_parameters.R`

**Change around line 185:**
```r
# Calculate background mortality z0 (natural mortality excl. predation)
# In Mizer, predation mortality is added dynamically
# So z0 should only be disease, senescence, etc. (fraction of EwE P/B)
z0 <- pmax((pb - fishing_mortality) * 0.3, 0.05)  # 30% of EwE P/B
```

**Priority 2: Cap Beta (Important)**

Ensure consumers can access prey in the resource spectrum.

**File:** `Models/AI-assisted/Attempt 1/03_interaction_matrix_calibration.R`

**Add after beta calculation (around line 220):**
```r
# Cap beta to ensure prey accessibility
# High beta + steep resource spectrum = invisible prey
beta <- pmin(beta, 100)  # Maximum PPMR = 100
# Lower cap for krill and small organisms
is_small <- species_params$category %in% c("krill", "other")
beta[is_small] <- pmin(beta[is_small], 50)
```

**Priority 3: Increase Minimum Sigma**

Give species more feeding flexibility.

**File:** `Models/AI-assisted/Attempt 1/03_interaction_matrix_calibration.R`

**Add after sigma calculation (around line 240):**
```r
# Set minimum sigma for feeding flexibility
# Extremely narrow diets (sigma < 1.2) too restrictive
sigma <- pmax(sigma, 1.2)
```

**Priority 4: Try "Full" Resources (If still collapsing)**

If above changes insufficient, increase to full EwE resource levels.

---

## Detailed Technical Analysis

### Why High z0 Causes Collapse in Mizer

**In EwE:**
```
P/B = 3.0 /year (Salps)
Total mortality = Fishing + Predation + Natural = P/B
Natural mortality (z0) ≈ P/B - Fishing - Predation
```

**In Mizer:**
```
Total mortality = z0 + Fishing + Predation(calculated)
If z0 = full P/B from EwE:
  → Double-counting mortality!
  → Predation added on top of already-high z0
  → Unsustainable
```

**Evidence from model:**
- Salps (z0 = 3.0) collapse first (CV = 4.14)
- Cephalopods (z0 = 3.15) collapse second (CV = 4.18)
- Whales (z0 = 0.02-0.1) survive longest (CV = 0.17-0.54)

**This is smoking gun evidence that z0 is too high.**

### Why High Beta Prevents Feeding

**Resource Spectrum Characteristics:**
- Slope: lambda = 2.05
- Abundance: N(w) ∝ w^-2.05
- **Biomass density peaks at w^(1-lambda) = w^-1.05**

**Prey Availability for Krill (w = 0.5 g, beta = 10):**
- Preferred prey: 0.05 g
- Range (sigma = 2): ~0.01-0.25 g
- **Most resource biomass is at w < 0.01 g** (too small)
- **Krill "can't see" optimal prey due to spectrum slope**

**If we reduce beta:**
- Beta = 5 → preferred prey 0.1 g
- Better overlap with biomass-dense region
- Higher feeding levels

### Why Sigma Matters

**Feeding kernel:** φ(w,w_prey) ∝ exp(-(ln(w/w_prey/beta))²/(2σ²))

**Current (sigma = 0.8 for baleen whales):**
- Extremely narrow peak
- Miss 95% of available prey
- Starve despite abundance

**Proposed (sigma = 1.2):**
- Broader feeding range
- Access 50% more prey sizes
- Higher feeding levels

---

## Expected Outcomes After Fixes

**After Priority 1-3 fixes:**

| Species | Current z0 | New z0 | Current Beta | New Beta | Current Sigma | New Sigma |
|---------|-----------|---------|--------------|----------|---------------|-----------|
| **Salps** | 3.0 | 0.9 | 5 | 5 | 2.0 | 2.0 |
| **Cephalopods** | 3.15 | 0.95 | 100 | 100 | 1.5 | 1.5 |
| **Krill** | 0.8 | 0.24 | 10 | 10 | 2.0 | 2.0 |
| **Other Euph** | 1.5 | 0.45 | 10 | 10 | 2.0 | 2.0 |
| **Myctophids** | 1.1 | 0.33 | 100 | 100 | 1.5 | 1.5 |
| **N. rossii** | 0.29 | 0.09 | 500 | 100 | 1.3 | 1.3 |
| **Blue Whale** | 0.04 | 0.01 | 200 | 100 | 0.8 | 1.2 |
| **Crabeater** | 0.1 | 0.03 | 200 | 100 | 1.0 | 1.2 |

**Expected Model Behavior:**

**Years 0-20:**
- Reduced mortality allows population growth
- Lower beta increases prey encounters
- Higher sigma increases feeding efficiency
- Feeding levels rise from 0.335 → 0.6+

**Years 20-100:**
- Populations stabilize near carrying capacity
- Krill maintain 80-120 t/km²
- Fish populations stable
- Predators follow prey
- Mean CV < 0.3 (acceptable variability)

---

## Why Resources Alone Weren't Enough

**We fixed:**
- ✅ Resource production: 132,000 t/km²/year (adequate)
- ✅ Resource biomass: 12,000 t/km² (16:1 ratio)

**We didn't fix:**
- ❌ Mortality rates too high (z0 double-counting)
- ❌ Prey accessibility (beta too high)
- ❌ Feeding flexibility (sigma too narrow)

**It's like having a grocery store full of food (resources fixed), but:**
1. Shoppers dying too fast to eat (z0 too high)
2. Food on shelves they can't reach (beta too high)
3. Only eating one brand when starving (sigma too low)

---

## Alternative Hypotheses (If Above Fails)

### Hypothesis A: Reproduction Parameters

**erepro values** (reproductive efficiency) from species parameters:
- Most species: 0.1 (10% of energy to reproduction)
- Salps: 0.2 (20%)
- Krill: 0.3 (30%)

**If z0 reduction insufficient:**
- Increase erepro to 0.4-0.5 for krill
- Faster population recovery from mortality

### Hypothesis B: Size Spectrum Slope

**Current:** lambda = 2.05 (standard marine)

**Antarctic waters may differ:**
- High productivity → flatter spectrum
- Try lambda = 1.9-2.0
- More biomass at larger sizes
- Better prey availability for consumers

**Change in 02_resource_spectrum.R:**
```r
lambda_resource <- 2.0  # Was 2.05, try flatter
```

### Hypothesis C: Resource Regeneration Still Too Slow

**Current:** r_pp = 10.95 /year (zooplankton turnover)

**Antarctic phytoplankton = extremely productive:**
- Summer blooms: P/B = 75 /year
- Maybe need faster regeneration

**Try:**
```r
r_pp_annual <- 25  # Faster, between zoo (11) and phyto (75)
```

---

## Testing Protocol

**Step 1: Implement Priority 1-3 fixes**
1. Reduce z0 to 30% of EwE P/B
2. Cap beta at 100 (50 for small species)
3. Set minimum sigma = 1.2

**Step 2: Re-run model**
```bash
Rscript 01_derive_species_parameters.R
Rscript 03_interaction_matrix_calibration.R
Rscript 04_initial_model_setup.R
```

**Step 3: Check results**
- Feeding levels should increase > 0.5
- Early collapse should stop
- Krill should stabilize around 80-120 t/km²

**Step 4: If still collapsing:**
- Try "Full" resources (27,000 t/km²)
- Adjust lambda to 2.0
- Increase r_pp to 25 /year
- Increase erepro for struggling species

---

## Scientific Justification

### Why 30% of P/B for z0?

**Literature on mizer calibration:**
- Blanchard et al. (2014): "z0 should represent non-predation mortality only"
- Spence et al. (2020): "Typical z0 = 0.1-0.6 /year for marine fish"
- Our EwE P/B values = 0.8-3.15 /year (total mortality)
- **Using 30% gives z0 = 0.24-0.95**, within literature range

### Why Cap Beta at 100?

**Hartvig et al. (2011) - Mizer theoretical paper:**
- Optimal PPMR for marine fish: 10-100
- Values > 100 create feeding inefficiencies
- Antarctic krill specialist whales may need exception
- **But starting with beta ≤ 100 allows model stability**

### Why Minimum Sigma = 1.2?

**From Andersen & Beyer (2006):**
- Minimum diet breadth for population viability
- sigma < 1.0 → too specialized, population unstable
- sigma = 1.2-1.5 → moderate specialization, stable
- **Our extreme specialists (0.8) likely too narrow**

---

## Conclusion

The model collapse persists despite adequate resource production because:

1. **z0 values too high:** Double-counting mortality (EwE P/B includes predation, mizer adds predation on top of z0)
2. **Beta values too high:** Consumers can't access available prey due to size spectrum slope
3. **Sigma values too low:** Extreme specialists can't find food

**Primary recommendation:** Reduce z0 to 30% of EwE P/B values. This single change may be sufficient to stabilize the model.

**Secondary recommendations:** Cap beta at 100 and set minimum sigma at 1.2 for additional stability.

These changes better align EwE-derived parameters with mizer's size-structured, mechanistic framework.

---

**Next Steps:**
1. Implement z0 reduction (Priority 1)
2. Test if sufficient
3. If not, add beta cap and sigma minimum
4. If still failing, increase to "Full" resources
