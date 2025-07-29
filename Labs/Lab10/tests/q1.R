test = list(
  name = "q1",
  cases = list(
    ottr::TestCase$new(
      name = "q1",
      hidden = TRUE,
      code = {
        testthat::expect_true(
          nrow(labubu_num) == 61
        )
        testthat::expect_true(
          round(labubu_num[1, 1], 2) == 16.99
        )
      }
    )
  )
)