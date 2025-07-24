test = list(
  name = "q7",
  cases = list(
    ottr::TestCase$new(
      name = "q7",
      hidden = TRUE,
      code = {
        testthat::expect_true(
          num_end_non_vowel == 117
        )
      }
    )
  )
)