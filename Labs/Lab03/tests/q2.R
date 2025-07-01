test = list(
  name = "q2",
  cases = list(
    ottr::TestCase$new(
      name = "q2",
      hidden = TRUE,
      code = {
        testthat::expect_true(
          prod(dim(votes) == c(20724, 6)) == 1
        )
        testthat::expect_true(
          votes[7, 4] == 0
        )
        testthat::expect_true(
          prod(unique(votes$Vote) == c(0, 1)) == 1
        )
      }
    )
  )
)