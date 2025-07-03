# AI-Assisted Marine Ecosystem Modelling Protocol for Participants

## Purpose

This experiment explores how AI tools can support marine ecosystem modelling workflows, including model development, conversion, and simulation. Participants will help assess the effectiveness of AI in producing reliable, comparable outputs across different model types and regions.

---

## Participation Overview

You are invited to:

- Contribute a model for a region of your choice or use a predefined region (e.g., West Antarctic Peninsula from Dahood et al.)
- Run simulations and provide diagnostic outputs
- Help evaluate model performance and uncertainty

---

## Model Types

Participants may use any of the following model frameworks (if your preferred model isn’t listed, please contact scott.spillias@csiro.au and/or kieran.murphy@utas.edu.au to discuss):

- Rpath
- mizer
- OSMOSE
- Atlantis

---

## Folder Setup

Please organize your project folder as follows:

```
/YourRegionName/ 
│ 
├── /Inputs/ 
│   ├── Environmental drivers (ISIMIP3a format) 
│   ├── Species/functional group data 
│   └── Fishing effort data 
│ 
├── /Models/ 
│   ├── Human-developed/ 
│   └── AI-assisted/ 
│ 
├── /Diagnostics/ 
│   └── Validation plots, skill metrics 
│ 
└── /Documentation/ 
    └── Model description, assumptions, notes 
 
``` 
---

## Simulation Protocol

- Follow the FishMIP protocol, https://fishmip.org/protocols.html, for input formatting and simulation periods.
- Use ISIMIP3a drivers for consistency across experiments: https://github.com/Fish-MIP/FishMIP2.0_ISIMIP3a
- Submit both human-developed and AI-assisted model outputs if possible.

---

## Validation & Benchmarking

- Use the provided diagnostic plot templates to validate model outputs.
- Help assess model skill and structural uncertainty.

---

## Provide a Reflection on the Process

- Which tasks did the AI excel at?
- Which tasks did it attempt and fail at?
- Where did you have to step in?
- Did the AI refuse or resist any tasks due to its confidence in its own abilities?

## Additional Information and References

## FishMIP Protocol Links:

1. **FishMIP Official Protocols Page**: https://fishmip.org/protocols.html
   - Main source for simulation protocols and formatting requirements

2. **FishMIP ISIMIP3a Protocol (GitHub)**: https://github.com/Fish-MIP/FishMIP2.0_ISIMIP3a
   - Contains the description of the FishMIP 3a Protocol with detailed specifications for input formatting and simulation periods

3. **FishMIP Track A ISIMIP3a Protocol**: https://github.com/Fish-MIP/FishMIP2.0_TrackA_ISIMIP3a
   - Alternative track protocol specifications

4. **FishMIP ISIMIP3a Simulations Page**: https://fishmip.org/simulations/isimip3a.html
   - Information about simulation requirements and deadlines

## ISIMIP3a Drivers Links:

1. **ISIMIP3a Protocol Main Page**: https://protocol.isimip.org/
   - ISIMIP3a is dedicated to model evaluation or impact attribution with simulations forced by observed climate and direct human forcing

2. **ISIMIP Data Repository**: https://data.isimip.org/
   - Climate and climate-related forcing data for the ISIMIP2a, ISIMIP2b, ISIMIP3a, and ISIMIP3b simulation rounds

3. **ISIMIP3a Scenario Setup Paper**: https://gmd.copernicus.org/articles/17/1/2024/
   - Comprehensive documentation of ISIMIP3a forcing data and scenario setup

4. **ISIMIP Input Data Information**: https://www.isimip.org/gettingstarted/input-data-bias-adjustment/details/26/
   - Details about historical observed climate data used in ISIMIP3a

5. **ISIMIP3a Counterfactual Climate Data**: https://www.isimip.org/gettingstarted/isimip3-counterfactual-climate-forcing-data/
   - Information about counterfactual climate forcing data for attribution studies

