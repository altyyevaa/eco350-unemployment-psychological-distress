# Unemployment and Psychological Distress

Econometrics course project analyzing the association between employment status and depressive-symptom frequency among U.S. adults using the 2024 National Health Interview Survey (NHIS).

**Repository maintainer:** Aziza Altyyeva  
**Authors:** Aziza Altyyeva, Arya Soomro, and Ameer Abedy  
**Course:** ECO 350: Econometrics I, Berea College  
**Date:** Fall 2025

## Project overview

The study uses a cross-sectional sample of 29,318 adults from the 2024 IPUMS NHIS. Four nested OLS specifications examine how unemployment is associated with depression frequency after accounting for employment, education, race, income relative to the poverty line, relationship status, age, and household composition. The final specification adds a quadratic age term and an interaction between unemployment and mean-centered income-to-poverty ratio.

The analysis found that unemployment was associated with more frequent depressive symptoms in the preferred model (coefficient = 0.156; robust p < 0.05). A White test rejected homoskedasticity (chi-squared(175) = 1679.17; p < 0.001), so the final inference uses heteroskedasticity-robust standard errors. Because the data are cross-sectional, these estimates are interpreted as associations rather than causal effects.

## Repository structure

```text
.
|-- README.md
|-- code/
|   `-- 01_analysis.do
|-- data/
|   `-- README.md
`-- output/
    `-- README.md
```

## Running the analysis

1. Obtain the appropriate 2024 NHIS extract through [IPUMS Health Surveys](https://healthsurveys.ipums.org/).
2. Place the team-cleaned file at `data/Final_Project_Dataset.dta`.
3. Open Stata from the repository root.
4. Run `do code/01_analysis.do`.

The script reproduces the descriptive statistics, correlation checks, four nested OLS specifications, joint-significance tests, White test, and robust final model reported in the paper.

## Data availability

The repository intentionally excludes respondent-level `.dta` files. Researchers should obtain the source data through IPUMS and comply with the applicable data-use terms. The data source used in the paper is:

> Blewett, L. A., et al. (2025). *IPUMS Health Surveys: National Health Interview Survey, Version 8.1* [Data set]. IPUMS. https://doi.org/10.18128/D071.V8.1

## Paper

[Read the final paper](https://drive.google.com/file/d/1_vCNyI2O_FXc6LCuoC10HDf2oefpaGbJ/view?usp=drive_link).

## Reproducibility note

The original interactive Stata sessions were preserved as `.smcl` logs rather than as a single source `.do` file. `code/01_analysis.do` reconstructs and organizes the final analytical workflow recorded in those logs. The cleaned dataset and original logs are not included in this repository.
