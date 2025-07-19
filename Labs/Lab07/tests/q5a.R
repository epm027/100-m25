test = list(
  name = "q5a",
  cases = list(
    ottr::TestCase$new(
      name = "q5a",
      hidden = TRUE,
      code = {
        testthat::expect_true(
          round(pred_ppm1, 3) == 6.07
        )
      }
    )
  )
)