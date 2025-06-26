test = list(
  name = "q6",
  cases = list(
    ottr::TestCase$new(
      name = "q6",
      hidden = TRUE,
      code = {
        testthat::expect_true(
          prod(
            names(customers2) == c("CUST_ID", "FIRST_NAME", "LAST_NAME",
                                   "STATE", "BDAY_MONTH")
          ) == 1
        )
        testthat::expect_true(
          typeof(customers2$BDAY_MONTH) == "integer"
        )
        testthat::expect_true(
          prod(
            class(customers2$BDAY_MONTH) == c("ordered", "factor")
          ) == 1
        )
        testthat::expect_true(
          typeof(customers$BDAY_MONTH) == "character"
        )
      }
    )
  )
)