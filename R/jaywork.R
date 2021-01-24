#' @noRd
make_dir <- function() {

  fs::dir_create(
    c("analysis", "doc", "src", "data", "output/tables", "output/figures", "ext")
  )

}

#' @noRd
make_analysis_rmd <- function(file_name) {

  rmarkdown::draft(
    fs::path("analysis", file_name),
    template = system.file("rmarkdown", "templates", "analysis_temp",
                           package = "jaysroutine"),
    edit = FALSE
  )

}


#' Jay's Routine for Data Analysis
#'
#' @param file_name File name that ends with .Rmd
#'
#' @export
#'
#' @examples
#' \dontrun{
#'   jaywork("analysis.Rmd")
#' }
jaywork <- function(file_name) {

  make_dir()
  make_analysis_rmd(file_name)
  usethis::edit_file(fs::path("analysis", file_name))

}
