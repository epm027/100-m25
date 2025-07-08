test = list(
  name = "q5",
  cases = list(
    ottr::TestCase$new(
      name = "q5",
      hidden = TRUE,
      code = {
        testthat::expect_true(
          round(ipw_avg, 2) == 9.97
        )
      }
    )
  )
)