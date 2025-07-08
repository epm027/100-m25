test = list(
  name = "q4",
  cases = list(
    ottr::TestCase$new(
      name = "q4",
      hidden = TRUE,
      code = {
        testthat::expect_true(
          prod(dim(samp_biased) == c(600, 4)) == 1
        )
        testthat::expect_true(
          samp_biased[1, 1] == "Male"
        )
        testthat::expect_true(
          samp_biased[1, 3] == 11.1891
        )
      }
    )
  )
)