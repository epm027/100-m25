test = list(
  name = "q7",
  cases = list(
    ottr::TestCase$new(
      name = "q7",
      hidden = TRUE,
      code = {
        testthat::expect_true(
          names(median_ages_no_na)[1] == "Breed_Name"
        )
        testthat::expect_true(
          !is.na(median_ages_no_na[6,2])
        )
        testthat::expect_true(
          prod(dim(median_ages_no_na) == c(803, 2)) == 1
        )
      }
    )
  )
)