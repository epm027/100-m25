test = list(
  name = "q5",
  cases = list(
    ottr::TestCase$new(
      name = "q5",
      hidden = TRUE,
      code = {
        testthat::expect_true(
          prod(dim(X) == c(428, 48)) == 1
        )
        testthat::expect_true(
          is.matrix(X)
        )
        testthat::expect_true(
          prod(dim(X1) == c(428, 1)) == 1
        )
        testthat::expect_true(
          round(X1[7, 1],6) == 0.033753
        )
      }
    )
  )
)