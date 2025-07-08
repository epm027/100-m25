test = list(
  name = "q2",
  cases = list(
    ottr::TestCase$new(
      name = "q2",
      hidden = TRUE,
      code = {
        testthat::expect_true(
          prod(dim(sample2) == c(600, 3)) == 1
        )
        testthat::expect_true(
          sample2[1, 1] == "Female"
        )
        testthat::expect_true(
          sample2[1, 3] == 10.9086
        )
      }
    )
  )
)