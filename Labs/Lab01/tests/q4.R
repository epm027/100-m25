test = list(
  name = "q4",
  cases = list(
    ottr::TestCase$new(
      name = "q4",
      hidden = TRUE,
      code = {
        testthat::expect_true(
          prod(dim(cats_simplified) == c(285547, 6)) == 1
        )
      }
    )
  )
)