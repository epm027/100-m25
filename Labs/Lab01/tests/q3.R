test = list(
  name = "q3",
  cases = list(
    ottr::TestCase$new(
      name = "q3",
      hidden = TRUE,
      code = {
        testthat::expect_true(
          prod(dim(dmh_sorted_by_age) == c(3567, 8)) == 1
        )
        testthat::expect_true(
          dmh_sorted_by_age[1, 1] == 160828
        )
      }
    )
  )
)