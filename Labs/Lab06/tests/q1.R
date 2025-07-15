test = list(
  name = "q1",
  cases = list(
    ottr::TestCase$new(
      name = "q1",
      hidden = TRUE,
      code = {
        testthat::expect_true(
          round(my_t_test(c(-1, 0, 1.5), 0, "lower"), 3) == 0.58
        )
        testthat::expect_true(
          round(my_t_test(c(-1, 0, 1.5), 0, "upper"), 3) == 0.42
        )
        testthat::expect_true(
          round(my_t_test(c(-1, 0, 1.5), 0, "two"), 3) == 0.84
        )
      }
    )
  )
)