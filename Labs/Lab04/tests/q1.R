test = list(
  name = "q1",
  cases = list(
    ottr::TestCase$new(
      name = "q1",
      hidden = TRUE,
      code = {
        testthat::expect_true(
          prod(dim(sample1) == c(600, 3)) == 1
        )
        testthat::expect_true(
          sample1[1, 1] == "Male"
        )
        testthat::expect_true(
          sample1[1, 3] == 9.6301
        )
      }
    )
  )
)