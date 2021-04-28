dependencies <- c("assertr", "bookdown", "citr", "dplyr", "devtools",  "readr", 
                  "ggplot2", "ggthemes", "gitcreds", "here", "rticles", "knitr", 
                  "reprex", "rmarkdown", "testthat", "tibble", "usethis")

# install CRAN dependencies
install.packages(dependencies)

# install github dependencies
devtools::install_github("benmarwick/rrtools")
devtools::install_github("karthik/holepunch")

# install tinytex
tinytex::install_tinytex()
