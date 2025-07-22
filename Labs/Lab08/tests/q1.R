test = list(
  name = "q1",
  cases = list(
    ottr::TestCase$new(
      name = "q1",
      hidden = TRUE,
      code = {
        testthat::expect_true(
          sum(initial_props) == 1
        )
        testthat::expect_true(
          prod(round(sort(initial_props), 3) == c(0.494, 0.506)) == 1 
        )
      }
    )
  )
)