## ---- echo = FALSE-------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ---- echo = F-----------------------------------------------------------
library(tibble)

iris_log_lik_2_profiles <- tribble(
    ~model, ~mplus, ~mclust,
    1, 488.915, 488.915,
    2, 296.448, 296.448,
    3, 386.185, 386.185,
    5, 214.355, 214.355
)

iris_log_lik_3_profiles <- tribble(
    ~model, ~mplus, ~mclust,
    1, 361.426, 361.429,
    2, 256.354, 256.355,
    3, 307.178, 307.181,
    6, 180.185, 180.186
)

geyser_log_lik_2_profiles <- tribble(
    ~model, ~mplus, ~mclust,
    1, 1157.68, 1157.68,
    2, 1140.187, 1140.187,
    3, 1147.806, 1147.806,
    6, 1130.264, 1130.264
)

## ------------------------------------------------------------------------
iris_log_lik_2_profiles
iris_log_lik_3_profiles
geyser_log_lik_2_profiles

## ---- eval = F-----------------------------------------------------------
#  install.packages("tidyLPA")

## ---- eval = F-----------------------------------------------------------
#  install.packages("devtools")
#  devtools::install_github("jrosen48/tidyLPA")

## ------------------------------------------------------------------------
library(tidyLPA)
d <- pisaUSA15[1:100, ]

## ---- warning = F, message = F-------------------------------------------
compare_solutions(d, broad_interest, enjoyment, self_efficacy)

## ------------------------------------------------------------------------
m3 <- estimate_profiles(d, 
                        broad_interest, enjoyment, self_efficacy,
                        model = 1,
                        n_profiles = 4)

## ------------------------------------------------------------------------
plot_profiles(m3)

## ------------------------------------------------------------------------
plot_profiles(m3, to_center = TRUE, to_scale = TRUE)

## ------------------------------------------------------------------------
estimate_profiles(d,
                  broad_interest, enjoyment, self_efficacy,
                  model = 1,
                  n_profiles = 4)

## ------------------------------------------------------------------------
m3_mclust <- estimate_profiles(d, 
                               broad_interest, enjoyment, self_efficacy, 
                               model = 1, 
                               n_profiles = 4, 
                               to_return = "mclust")

## ------------------------------------------------------------------------
m3_mclust$parameters

## ------------------------------------------------------------------------
m3_processed_raw <- estimate_profiles(d, 
                                      broad_interest, enjoyment, self_efficacy, 
                                      model = 1, 
                                      n_profiles = 4, 
                                      center_raw_data = TRUE, 
                                      scale_raw_data = TRUE)

## ------------------------------------------------------------------------
estimate_profiles(d, 
                  broad_interest, enjoyment, self_efficacy, 
                  model = 1, 
                  n_profiles = 4, 
                  return_orig_df = TRUE)

## ---- eval = F-----------------------------------------------------------
#  compare_solutions_mplus(d, broad_interest, enjoyment, self_efficacy)

## ---- eval = F-----------------------------------------------------------
#  m1 <- estimate_profiles_mplus(d,
#                                broad_interest, enjoyment, self_efficacy,
#                                model = 1,
#                                n_profiles = 3)

## ---- eval = F-----------------------------------------------------------
#  plot_profiles_mplus(m1, to_center = TRUE, to_scale = TRUE)

## ---- eval = F-----------------------------------------------------------
#  bootstrap_lrt(d, broad_interest, enjoyment, self_efficacy, model = 3)

## ---- eval = F-----------------------------------------------------------
#  estimate_profiles(d,
#                    broad_interest, enjoyment, self_efficacy,
#                    model = 1,
#                    n_profiles = 4,
#                    prior_control = TRUE)

