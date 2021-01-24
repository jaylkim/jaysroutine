
jaywork <- function() {
  ## Create directories
  fs::dir_create(
    c("analysis", "doc", "src", "data", "output/tables", "output/figures", "ext")
  )

  ## Pop-up an Rmd for analysis
  rmarkdown::draft(
    fs::path("analysis"), template = "jays_analysis_temp", package = "jaysroutine"
  )
}
