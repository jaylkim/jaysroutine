
make_dir <- function() {

  fs::dir_create(
    c("analysis", "doc", "src", "data", "output/tables", "output/figures", "ext")
  )

}
jaywork <- function() {

  rmarkdown::draft(
    fs::path("analysis"), template = "analysis_temp", package = "jaysroutine"
  )
}
