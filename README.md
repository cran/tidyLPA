
<!-- README.md is generated from README.Rmd. Please edit that file -->
tidyLPA
=======

[![Travis build status](https://travis-ci.org/jrosen48/tidyLPA.svg?branch=master)](https://travis-ci.org/jrosen48/tidyLPA)

tidyLPA provides the functionality to carry out Latent Profile Analysis (LPA). LPA is a statistical modeling approach for estimating parameters (i.e., the means, variances, and covariances) distinct profiles of groups of variables. Note that tidyLPA is still at the beta stage! Please report any bugs at <https://github.com/jrosen48/tidyLPA> or send an email to <jrosen@msu.edu>.

Installation
------------

You can install tidyLPA from CRAN with (note: may not yet be available; if this does not work, you can still install tidyLPA with the approach below):

``` r
install.packages("tidyLPA")
```

You can also install the in-development version of tidyLPA from GitHub with:

``` r
install.packages("devtools")
devtools::install_github("jrosen48/tidyLPA")
```

Example
-------

Here is a brief example using the built-in `pisaUSA15` dataset and variables for broad interest, enjoyment, and self-efficacy. See `?estimate_profiles` for more details.

``` r
library(tidyLPA)
#> tidyLPA provides the functionality to carry out Latent Profile Analysis. Note that tidyLPA is still at the beta stage! 
#> Please report any bugs at https://github.com/jrosen48/tidyLPA or send an email to jrosen@msu.edu.
```

``` r
d <- pisaUSA15[1:100, ]

m3 <- estimate_profiles(d, broad_interest, enjoyment, self_efficacy, n_profiles = 3, model = 2)
#> Fit varying means, equal variances and covariances (Model 2) model with 3 profiles.
#> LogLik is 279.692
#> BIC is 636.62
#> Entropy is 0.798

plot_profiles(m3, to_center = TRUE)
```

![](man/figures/README-unnamed-chunk-4-1.png)

To compare a range of profile solutions, use `compare_solutions()`

``` r
compare_solutions(d, broad_interest, enjoyment, self_efficacy)
```

![](man/figures/README-unnamed-chunk-5-1.png)

Learn more
----------

To learn more:

-   Browse the tidyLPA [website](https://jrosen48.github.io/tidyLPA/)

-   *Read the Introduction to tidyLPA* [vignette](https://jrosen48.github.io/tidyLPA/articles/Introduction_to_tidyLPA.html), which has much more information on the models that can be specified with tidyLPA and on additional functionality

Contact
-------

As tidyLPA is at an early stage of its development, issues should be expected. If you have any questions or feedback, please do not hesitate to get in touch:

-   By [email](mailto:jrosen@msu.edu)
-   By [Twitter](http://twitter.com/jrosenberg6432)
-   Through filing an issue on GitHub [here](https://github.com/jrosen48/tidyLPA)

Please note that this project is released with a [Contributor Code of Conduct](CONDUCT.md). By participating in this project you agree to abide by its terms.
