output_dir <- fs::path_abs(config::get("output_dir"))
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
                      params = list(course_title = config::get("course_title"),
                                    date = config::get("course_dates"),
                                    location = config::get("location"),
                                    book_url = config::get("book_url"),
                                    hackpad_url = config::get("hackpad_url"),
                                    bitly_url= config::get("bitly_url")))
}
    
    fs::dir_create(fs::path(output_dir, 'slides'))
    cat("folder created successfully: '", fs::path(output_dir, 'slides'), "' \n\n")
    fs::dir_create(fs::path(output_dir, 'slides', 'libs'))
    cat("folder created successfully: '", fs::path_abs(fs::path(output_dir, 'slides', 'libs')), "' \n\n")
    
    cat("Copying files \n\n")
    fs::dir_copy(fs::path("slides", "assets"), 
                 fs::path(output_dir, "slides", "assets"),
                 overwrite = TRUE)
    fs::dir_copy(fs::path("files_to_copy"), 
                 fs::path(output_dir),
                 overwrite = TRUE)
    cat("Files copied \n\n")
    # render slides
    cat("rendering slides \n\n")
    slide_paths <- fs::dir_ls("slides", regex = ".Rmd")
    purrr::map(slide_paths, ~render_slides(.x, output_dir))
