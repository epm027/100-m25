test = list(
  name = "q1",
  cases = list(
    ottr::TestCase$new(
      name = "q1",
      hidden = TRUE,
      code = {
        testthat::expect_true(
          pdist1(0) == 0
        )
        testthat::expect_true(
          pdist1(1) == 0.25
        )
        testthat::expect_true(
          prod(pdist1(c(0.5, 2)) == c(0.0625, 1.0000)) == 1
        )
      }
    )
  )
)