test = list(
  name = "q4b",
  cases = list(
    ottr::TestCase$new(
      name = "q3b",
      hidden = TRUE,
      code = {
        testthat::expect_true(
          num_stage_dir_sep_line == 89
        )
      }
    )
  )
)