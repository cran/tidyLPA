## ---- echo = FALSE-------------------------------------------------------
knitr::opts_chunk$set(
collapse = TRUE,
comment = "#>"
)

## ---- eval = FALSE-------------------------------------------------------
#  install.packages("tidyLPA")

## ----gh-installation, eval = FALSE---------------------------------------
#  install.packages("devtools")
#  devtools::install_github("data-edu/tidyLPA")

## ---- message = F--------------------------------------------------------
library(tidyLPA)
library(tidyverse)

## ------------------------------------------------------------------------
pisaUSA15[1:100, ] %>%
    select(broad_interest, enjoyment, self_efficacy) %>%
    single_imputation() %>%
    estimate_profiles(3)

## ---- eval = FALSE-------------------------------------------------------
#  pisaUSA15[1:100, ] %>%
#      select(broad_interest, enjoyment, self_efficacy) %>%
#      single_imputation() %>%
#      estimate_profiles(3, package = "MplusAutomation")

## ---- eval = TRUE--------------------------------------------------------
pisaUSA15[1:100, ] %>%
    select(broad_interest, enjoyment, self_efficacy) %>%
    single_imputation() %>%
    scale() %>%
    estimate_profiles(3) %>% 
    plot_profiles()

## ---- eval = TRUE--------------------------------------------------------
pisaUSA15[1:100, ] %>%
    select(broad_interest, enjoyment, self_efficacy) %>%
    single_imputation() %>%
    estimate_profiles(1:3, 
                      variances = c("equal", "varying"),
                      covariances = c("zero", "varying")) %>%
    compare_solutions(statistics = c("AIC", "BIC"))

## ---- eval = TRUE--------------------------------------------------------
pisaUSA15[1:100, ] %>%
    select(broad_interest, enjoyment, self_efficacy) %>%
    estimate_profiles(3, 
                      variances = "varying",
                      covariances = "varying")

## ---- eval = TRUE--------------------------------------------------------
m3 <- pisaUSA15[1:100, ] %>%
    select(broad_interest, enjoyment, self_efficacy) %>%
    estimate_profiles(3)

get_estimates(m3)

## ---- eval = TRUE--------------------------------------------------------
pisaUSA15[1:100, ] %>%
    select(broad_interest, enjoyment, self_efficacy) %>%
    scale() %>%
    estimate_profiles(4) %>%
    plot_profiles()

pisaUSA15[1:100, ] %>%
    select(broad_interest, enjoyment, self_efficacy) %>%
    poms() %>%
    estimate_profiles(4) %>%
    plot_profiles()

## ---- eval = TRUE--------------------------------------------------------
get_data(m3)

## ------------------------------------------------------------------------
m4 <- pisaUSA15[1:100, ] %>%
    select(broad_interest, enjoyment, self_efficacy) %>%
    single_imputation() %>% 
    estimate_profiles(c(3, 4))

get_data(m4)

## ------------------------------------------------------------------------
get_fit(m4)

