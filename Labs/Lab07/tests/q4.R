test = list(
  name = "q4",
  cases = list(
    ottr::TestCase$new(
      name = "q4",
      hidden = TRUE,
      code = {
        testthat::expect_true(
          round(beta_est[1], 3) == 0.251
        )
        testthat::expect_true(
          round(beta_est[2], 3) == 1.482
        )
        testthat::expect_true(
          round(beta_est[3], 3) == 1.464
        )
      }
    )
  )
)