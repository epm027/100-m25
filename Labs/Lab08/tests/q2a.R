test = list(
  name = "q2a",
  cases = list(
    ottr::TestCase$new(
      name = "q2a",
      hidden = TRUE,
      code = {
        testthat::expect_true(
          typeof(logistic_ecc_only) == "list"
        )
        testthat::expect_true(
          "glm" %in% class(logistic_ecc_only)
        )
        testthat::expect_true(
          prod(logistic_ecc_only$coefficients %>% round(3) == c(-31.265, 39.176 )) == 1
        )
      }
    )
  )
)