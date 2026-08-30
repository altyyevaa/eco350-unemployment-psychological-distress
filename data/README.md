# Data and reproducibility

| Resource | Contents |
|---|---|
| [`summary_statistics.csv`](summary_statistics.csv) | Aggregate descriptive statistics for the 29,318-person analytical sample |
| [`variable_dictionary.csv`](variable_dictionary.csv) | Definitions, coding, and reference groups for the constructed variables |
| [`01_analysis.do`](../code/01_analysis.do) | Stata code for the reported models, diagnostics, and robust inference |
| [Final paper](https://drive.google.com/file/d/1_vCNyI2O_FXc6LCuoC10HDf2oefpaGbJ/view?usp=drive_link) | Complete methodology, results, limitations, and references |
| [IPUMS NHIS data portal](https://nhis.ipums.org/nhis/) | Official access point for the licensed 2024 NHIS microdata |

## Analytical file

The analysis script expects the following file:

```text
data/Final_Project_Dataset.dta
```

The analytical file contains respondent-level microdata obtained through IPUMS NHIS and therefore requires licensed access. The public materials above document the complete variable structure, reported descriptive statistics, and analytical workflow.

## Reproduce the analysis

1. [Open the IPUMS NHIS data portal](https://nhis.ipums.org/nhis/).
2. Sign in or register for research access.
3. Obtain the appropriate 2024 NHIS extract and comply with the applicable data-use agreement.
4. Reconstruct the analytical variables described in the paper.
5. Save the cleaned file as `data/Final_Project_Dataset.dta` before running `code/01_analysis.do`.

The analytical sample used in the paper contains 29,318 U.S. adults.

## Citation

Blewett, L. A., et al. (2025). *IPUMS Health Surveys: National Health Interview Survey, Version 8.1* [Data set]. IPUMS. https://doi.org/10.18128/D071.V8.1

## Redistribution policy

See the [IPUMS NHIS Terms of Use](https://nhis.ipums.org/nhis/terms.shtml). Researchers seeking to redistribute an extract should request permission directly from IPUMS.
