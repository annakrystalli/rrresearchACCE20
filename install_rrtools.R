# install rrtools
install.packages("devtools")
devtools::install_github("benmarwick/rrtools")

# install github dependencies
dependencies <- c("dplyr", "ggplot2", "ggthemes", "gitcreds", "rticles", "Cairo")

# install CRAN dependencies
install.packages(dependencies)

#install github dependencies
devtools::install_github("crsh/citr")

# install tinytex
tinytex::install_tinytex()
