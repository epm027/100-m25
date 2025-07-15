test = list(
  name = "q2a",
  cases = list(
    ottr::TestCase$new(
      name = "q2a",
      hidden = TRUE,
      code = {
        testthat::expect_true(
          abs(mean(p_vals) - 0.5) < 10e-2
        )
      }
    )
  )
)