dependencies <- c("devtools", "rmarkdown", "knitr", "tidyverse", "bookdown",
                  "DT", "skimr",  "gapminder", "plotly", "here",  "reprex",
                  "usethis", "cowsay", "testthat", "ggthemes", "fs", 
                  "jsonlite", "listviewer",
                  "checkmate", "assertr", "vroom", "data.table", "sloop",
                  "geosphere", "raster", "spData", "tmap", "leaflet", "sf")

# install CRAN dependencies
install.packages(dependencies)

# install github dependencies
devtools::install_github("hadley/emo")
devtools::install_github("benmarwick/rrtools")
devtools::install_github("ropenscilabs/dataspice")
devtools::install_github("karthik/holepunch")

# install tinytex
tinytex::install_tinytex()
