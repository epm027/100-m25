test = list(
  name = "q1",
  cases = list(
    ottr::TestCase$new(
      name = "q2",
      hidden = TRUE,
      code = {
        testthat::expect_true(
          prod(dim(cats) == c(285547, 8)) == 1
        )
        testthat::expect_true(
          names(cats)[1] == "Cat.ID"
        )
        testthat::expect_true(
          names(cats)[3] == "Epilepsy"
        )
        testthat::expect_true(
          cats[1, 2] == "Non-case"
        )
      }
    )
  )
)