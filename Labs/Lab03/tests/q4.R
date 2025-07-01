test = list(
  name = "q4",
  cases = list(
    ottr::TestCase$new(
      name = "q4",
      hidden = TRUE,
      code = {
        testthat::expect_true(
          round(prop_missing, 6) == 0.018349
        )
      }
    )
  )
)