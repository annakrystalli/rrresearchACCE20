## code to prepare `individual` dataset goes here
library(dplyr)
source(here::here("R", "geolocate.R"))

# Read in and compile all individual data
raw_data_path <- here::here("data-raw", "wood-survey-data-master")
individual_path <- fs::path(raw_data_path, "individual")
individual_paths <- fs::dir_ls(individual_path)

# read in all tables into one
individual <- purrr::map_df(individual_paths,
                            ~readr::read_csv(file = .x,
                                             col_types = readr::cols(.default = "c"))) %>%
    readr::type_convert()

individual %>%
    readr::write_csv(path = fs::path(raw_data_path, "vst_individuals.csv"))



# Combine NEON data tables
# read in additonal table
maptag <- readr::read_csv(fs::path(raw_data_path, 
                                   "vst_mappingandtagging.csv")) %>%
    select(-eventID)

perplot <- readr::read_csv(fs::path(raw_data_path, 
                                    "vst_perplotperyear.csv")) %>%
    select(-eventID)


individual %<>%
    left_join(maptag, by = "individualID",
              suffix = c("", "_map")) %>%
    left_join(perplot, by = "plotID",
              suffix = c("", "_ppl")) %>%
    assertr::assert(assertr::not_na, stemDistance, stemAzimuth, pointID,
                    decimalLongitude, decimalLatitude, plotID)

# ---- Geolocate individuals_functions ----
individual <- individual %>%
    dplyr::mutate(stemLat = get_stem_location(decimalLongitude = decimalLongitude,
                                              decimalLatitude = decimalLatitude,
                                              stemAzimuth = stemAzimuth,
                                              stemDistance = stemDistance)$lat,
                  stemLon = get_stem_location(decimalLongitude = decimalLongitude,
                                              decimalLatitude = decimalLatitude,
                                              stemAzimuth = stemAzimuth,
                                              stemDistance = stemDistance)$lon) %>%
    janitor::clean_names()

# create data directory
fs::dir_create(here::here("data"))

# write out analytic file
readr::write_csv(individual, here::here("data", "individual.csv"))
