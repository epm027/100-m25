test = list(
  name = "q7",
  cases = list(
    ottr::TestCase$new(
      name = "q7",
      hidden = TRUE,
      code = {
        testthat::expect_true(
          prod(month_state_counts[1,] == c("AZ", "Oct", 1)) == 1
        )
        testthat::expect_true(
          prod(dim(month_state_counts) == c(25, 3)) == 1
        )
      }
    )
  )
)