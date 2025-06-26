test = list(
  name = "q2",
  cases = list(
    ottr::TestCase$new(
      name = "q2",
      hidden = TRUE,
      code = {
        testthat::expect_true(
          prod(dim(orders_items) == c(120, 5)) == 1
        )
        testthat::expect_true(
          orders_items[2, 3] == "C25"
        )
        testthat::expect_true(
          prod(names(orders_items) == c("ORDER_NO", "ITEM_ID", "CUST_ID",
                                        "DESCRIP", "PPU")) == 1
        )
      }
    )
  )
)