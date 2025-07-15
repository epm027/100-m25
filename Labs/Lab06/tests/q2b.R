test = list(
  name = "q2b",
  cases = list(
    ottr::TestCase$new(
      name = "q2b",
      hidden = TRUE,
      code = {
        testthat::expect_true(
          abs(num_false_rej - 50) < 30
        )
      }
    )
  )
)