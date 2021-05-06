dependencies <- c("assertr", "checkmate", "cowsay", "data.table", 
                  "dataspice", "devtools", "DT", "fs", "gapminder", "geosphere", 
                  "ggthemes", "gitcreds", "glue", "here", "janitor", "jsonlite", 
                  "knitr", "leaflet", "listviewer", "magrittr", "plotly", "raster", 
                  "reprex", "rmarkdown", "sf", "skimr", "sloop", 
                  "spData", "stringr", "testthat", "tidyr", "tidyverse", "tmap", 
                  "usethis", "vroom")

# install CRAN dependencies
install.packages(dependencies)

# install github dependencies
devtools::install_github("hadley/emo")

