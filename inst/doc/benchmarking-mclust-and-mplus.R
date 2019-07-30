## ----setup, include = FALSE----------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>", 
  eval = FALSE
)

## ------------------------------------------------------------------------
#  library(tidyLPA)
#  library(dplyr)
#  
#  iris %>%
#    select(Sepal.Length, Sepal.Width, Petal.Length, Petal.Width) %>%
#    estimate_profiles(n_profiles = 2) %>%
#    get_fit() %>%
#    as.data.frame()

## ------------------------------------------------------------------------
#  iris %>%
#    select(Sepal.Length, Sepal.Width, Petal.Length, Petal.Width) %>%
#    estimate_profiles(n_profiles = 2, package = "mplus") %>%
#    get_fit() %>%
#    as.data.frame()

## ------------------------------------------------------------------------
#  library(tidyLPA)
#  library(dplyr)
#  
#  iris %>%
#    select(Sepal.Length, Sepal.Width, Petal.Length, Petal.Width) %>%
#    estimate_profiles(n_profiles = 2:4, models = c(1, 2, 3, 6)) %>%
#    get_fit() %>%
#    as.data.frame()

## ------------------------------------------------------------------------
#  iris %>%
#    select(Sepal.Length, Sepal.Width, Petal.Length, Petal.Width) %>%
#    estimate_profiles(n_profiles = 2:4, models = c(1, 2, 3, 6),
#                      package = "mplus") %>%
#    get_fit() %>%
#    as.data.frame()

