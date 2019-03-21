## ------------------------------------------------------------------------
library(tidyLPA)
library(dplyr)

pisaUSA15[1:100, ] %>%
    select(broad_interest, enjoyment, self_efficacy) %>%
    single_imputation() %>%
    estimate_profiles(3)

## ---- eval = FALSE-------------------------------------------------------
#  pisaUSA15[1:100, ] %>%
#      select(broad_interest, enjoyment, self_efficacy) %>%
#      single_imputation() %>%
#      estimate_profiles(3, package = "MplusAutomation")

## ---- eval = FALSE-------------------------------------------------------
#  pisaUSA15[1:100, ] %>%
#      select(broad_interest, enjoyment, self_efficacy) %>%
#      single_imputation() %>%
#      scale() %>%
#      estimate_profiles(3, package = "MplusAutomation") %>%
#      plot_profiles()

## ---- eval = FALSE-------------------------------------------------------
#  pisaUSA15[1:100, ] %>%
#      select(broad_interest, enjoyment, self_efficacy) %>%
#      single_imputation() %>%
#      estimate_profiles(1:3,
#                        variances = c("equal", "varying"),
#                        covariances = c("zero", "varying")) %>%
#      compare_solutions(statistics = c("AIC", "BIC"))

