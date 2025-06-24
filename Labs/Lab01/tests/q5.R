test = list(
  name = "q5",
  cases = list(
    ottr::TestCase$new(
      name = "q5",
      hidden = TRUE,
      code = {
        testthat::expect_true(
          names(median_ages)[1] == "Breed_Name"
        )
        testthat::expect_true(
          prod(dim(median_ages) == c(803, 2)) == 1
        )
        testthat::expect_true(
          median_ages[1, 1] == "*****"
        )
        testthat::expect_true(
          is.na(median_ages[6,2])
        )
      }
    )
  )
)