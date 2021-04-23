output_dir <- "_book"
render_slides <- function(input_path, output_dir){
    output_format_obj <- xaringan::moon_reader(
        css = c("default",  "assets/css/little_ak.css", "assets/css/little_ak-fonts.css"),
        lib_dir = fs::path(output_dir, "slides", "libs"),
        seal = FALSE,
        nature = list(beforeInit = "https://platform.twitter.com/widgets.js",
                      highlightStyle= "github",
                      highlightLines= TRUE,
                      countIncrementalSlides = FALSE))
    rmarkdown::render(input = input_path,
                      output_dir = fs::path(output_dir, "slides"),
                      output_format = output_format_obj,
                      params = list(course_title = "Reproducible Research Data and Project Management in R",
                                    date = "Apr-May 2021",
                                    location = "Online",
                                    book_url = "http://annakrystalli.me/rrresearchACCE20/",
                                    hackpad_url = "https://bit.ly/acce20-notepad",
                                    bitly_url= "http://bit.ly/ACCE-book"))
}
    fs::dir_copy(fs::path("slides", "assets"), 
                 fs::path(output_dir, "slides", "assets"),
                 overwrite = TRUE)
    fs::dir_copy(fs::path("files_to_copy"), 
                 fs::path(output_dir),
                 overwrite = TRUE)
    
    # render slides
    slide_paths <- fs::dir_ls("slides", regex = ".Rmd")
    purrr::map(slide_paths, ~render_slides(.x, output_dir))
