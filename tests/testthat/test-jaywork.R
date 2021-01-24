test_that("Does the Rmd file exist?", {
  skip_on_cran()
  dir <- tempfile()
  dir.create(dir)
  oldwd <- setwd(dir)
  on.exit(setwd(oldwd), add = TRUE)

  jaywork("analysis.Rmd")
  expect_true(fs::file_exists(fs::path("analysis", "analysis.Rmd")))
})
