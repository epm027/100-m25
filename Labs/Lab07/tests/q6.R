test = list(
  name = "q6",
  cases = list(
    ottr::TestCase$new(
      name = "q6",
      hidden = TRUE,
      code = {
        testthat::expect_true(
          prod(dim(Sigma1) == c(4, 4)) == 1
        )
      }
    )
  )
)