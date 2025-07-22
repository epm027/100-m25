test = list(
  name = "q4",
  cases = list(
    ottr::TestCase$new(
      name = "q4",
      hidden = TRUE,
      code = {
        testthat::expect_true(
          round(fpr1, 3) == 0.23
        )
        testthat::expect_true(
          round(tnr1, 3) == 0.77
        )
        testthat::expect_true(
          round(fnr1, 3) == 0.201
        )
        testthat::expect_true(
          round(tpr1, 3) == 0.799
        )
      }
    )
  )
)