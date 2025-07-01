test = list(
  name = "q1",
  cases = list(
    ottr::TestCase$new(
      name = "q1",
      hidden = TRUE,
      code = {
        testthat::expect_true(
          prod(dim(votes) == c(20724, 6)) == 1
        )
        testthat::expect_true(
          votes[2, 4] == "Yea"
        )
        testthat::expect_true(
          typeof(votes$Vote) == "character"
        )
      }
    )
  )
)