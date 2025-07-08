test = list(
  name = "q3",
  cases = list(
    ottr::TestCase$new(
      name = "q3",
      hidden = TRUE,
      code = {
        testthat::expect_true(
          prod(dim(sample3) == c(600, 3)) == 1
        )
        testthat::expect_true(
          sample3[1, 1] == "Female"
        )
        testthat::expect_true(
          sample3[1, 3] == 10.1684
        )
      }
    )
  )
)