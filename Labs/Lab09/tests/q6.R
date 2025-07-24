test = list(
  name = "q6",
  cases = list(
    ottr::TestCase$new(
      name = "q6",
      hidden = TRUE,
      code = {
        testthat::expect_true(
          length(rep_vowel_end) == 10
        )
        testthat::expect_true(
          rep_vowel_end[1] == "Pops: Oh. I see."
        )
      }
    )
  )
)