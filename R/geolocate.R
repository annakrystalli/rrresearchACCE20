# Function
get_stem_location <- function(decimalLongitude, decimalLatitude,
                              stemAzimuth, stemDistance) {
    # check inputs are correct type (numeric)
    checkmate::assert_numeric(decimalLatitude)
    checkmate::assert_numeric(decimalLongitude)
    checkmate::assert_numeric(stemAzimuth)
    checkmate::assert_numeric(stemDistance)
    
    
    out <- geosphere::destPoint(p = cbind(decimalLongitude, decimalLatitude),
                                b = stemAzimuth, d = stemDistance) %>%
        tibble::as_tibble()
    
    # check output for NAs
    checkmate::assert_false(any(is.na(out)))
    
    return(out)
}
