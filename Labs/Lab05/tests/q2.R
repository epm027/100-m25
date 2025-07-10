test = list(
  name = "q2",
  cases = list(
    ottr::TestCase$new(
      name = "q2",
      hidden = TRUE,
      code = {
        testthat::expect_true(
          qdist1(0) == 0
        )
        testthat::expect_true(
          qdist1(1) == 2
        )
        testthat::expect_true(
          prod(qdist1(c(0.25, 1)) == c(1, 2)) == 1
        )
      }
    )
  )
)