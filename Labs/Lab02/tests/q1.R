test = list(
  name = "q1",
  cases = list(
    ottr::TestCase$new(
      name = "q1",
      hidden = TRUE,
      code = {
        testthat::expect_true(
          prod(dim(orders) == c(120, 3)) == 1
        )
        testthat::expect_true(
          prod(dim(inventory) == c(16, 3)) == 1
        )
        testthat::expect_true(
          prod(dim(customers) == c(34, 5)) == 1
        )
        testthat::expect_true(
          inventory[1, 2] == "Taro; No Topping"
        )
        testthat::expect_true(
          customers[1, 2] == "John"
        )
      }
    )
  )
)