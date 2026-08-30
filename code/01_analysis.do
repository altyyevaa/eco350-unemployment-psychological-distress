version 17.0
clear all
set more off
capture log close

* Run this file from the repository root.
capture mkdir "output"
log using "output/analysis.log", replace text

use "data/Final_Project_Dataset.dta", clear

* Variables used in the reported specifications.
local outcome depfreq_ord
local labor unemployed employed
local education hseduc mediumeduc higheduc
local race male black native asian mult_race
local economic povlev
local household partnered nevermarried age hhkids1 hhkids2 hhkids3plus

* Mean-center the income-to-poverty ratio and construct the interaction.
quietly summarize povlev
capture drop povlev_c
generate double povlev_c = povlev - r(mean)

capture drop unempXpovlev_c
generate double unempXpovlev_c = unemployed * povlev_c

* Descriptive statistics and pairwise correlations.
summarize `outcome' `labor' `education' `race' `economic' `household'
pwcorr `labor' `education' `race' `economic' `household', sig

* Model 1: labor-market, education, race, and income controls.
regress `outcome' `labor' `education' `race' `economic'
estimates store M1

* Model 2: add relationship status, age, and household composition.
regress `outcome' `labor' `education' `race' `economic' `household'
estimates store M2

* Joint-significance tests reported in the paper.
test hseduc mediumeduc higheduc
test black native asian mult_race

* Model 3: add a quadratic age term.
capture drop agesq
generate double agesq = age^2
regress `outcome' `labor' `education' `race' `economic' `household' agesq
estimates store M3

* Model 4: add unemployment by centered income-to-poverty interaction.
regress `outcome' `labor' `education' `race' `economic' `household' agesq unempXpovlev_c
estimates store M4

* Compare the nested specifications.
estimates table M1 M2 M3 M4, b(%9.3f) se stats(N r2 r2_a)

* Heteroskedasticity diagnostic and robust final specification.
estat imtest, white
regress `outcome' `labor' `education' `race' `economic' `household' agesq unempXpovlev_c, robust
estimates store M4_robust

log close
