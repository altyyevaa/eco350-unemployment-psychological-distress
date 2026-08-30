# Data access

## Required analytical file

The analysis script expects the following file:

```text
data/Final_Project_Dataset.dta
```

The file is not distributed through this public repository because it contains respondent-level microdata obtained through IPUMS NHIS. The IPUMS NHIS terms require permission for redistribution.

## Obtain the source data

1. [Open the IPUMS NHIS data portal](https://nhis.ipums.org/nhis/).
2. Sign in or register for research access.
3. Obtain the appropriate 2024 NHIS extract and comply with the applicable data-use agreement.
4. Reconstruct the analytical variables described in the paper.
5. Save the cleaned file as `data/Final_Project_Dataset.dta` before running `code/01_analysis.do`.

The analytical sample used in the paper contains 29,318 U.S. adults. See [`variable_dictionary.csv`](variable_dictionary.csv) for the constructed variables and [`summary_statistics.csv`](summary_statistics.csv) for the aggregate descriptive statistics reported in the paper.

## Citation

Blewett, L. A., et al. (2025). *IPUMS Health Surveys: National Health Interview Survey, Version 8.1* [Data set]. IPUMS. https://doi.org/10.18128/D071.V8.1

## Redistribution policy

See the [IPUMS NHIS Terms of Use](https://nhis.ipums.org/nhis/terms.shtml). Researchers seeking to redistribute an extract should request permission directly from IPUMS.
