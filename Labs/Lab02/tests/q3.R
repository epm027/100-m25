test = list(
  name = "q3",
  cases = list(
    ottr::TestCase$new(
      name = "q3",
      hidden = TRUE,
      code = {
        testthat::expect_true(
          prod(dim(sales_by_product) == c(16, 2)) == 1
        )
        testthat::expect_true(
          prod(names(sales_by_product) == c("ITEM_ID", "NET_REV")) == 1
        )
      }
    )
  )
)