test = list(
  name = "q1",
  cases = list(
    ottr::TestCase$new(
      name = "q1",
      hidden = TRUE,
      code = {
        testthat::expect_true(
          typeof(full_mod) == "list" 
        )
        testthat::expect_true(
          round(full_mod$coefficients[1], 3) == 0.251 
        )
        testthat::expect_true(
          names(full_mod)[6] == "assign"
        )
      }
    )
  )
)