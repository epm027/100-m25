test = list(
  name = "q3",
  cases = list(
    ottr::TestCase$new(
      name = "q3",
      hidden = TRUE,
      code = {
        testthat::expect_true(
          prod(dim(votes_mod) == c(436, 52)) == 1
        )
        testthat::expect_true(
          votes_mod[3, 5] == 0
        )
        testthat::expect_true(
          names(votes_mod)[36] == "H. R. 764"
        )
      }
    )
  )
)