test = list(
  name = "q4b",
  cases = list(
    ottr::TestCase$new(
      name = "q4b",
      hidden = TRUE,
      code = {
        testthat::expect_true(
          num_stage_dir == 93
        )
      }
    )
  )
)