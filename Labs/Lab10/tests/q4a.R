test = list(
  name = "q4a",
  cases = list(
    ottr::TestCase$new(
      name = "q4a",
      hidden = TRUE,
      code = {
        testthat::expect_true(
          names(kmeans_labubu)[8] == "iter"
        )
        testthat::expect_true(
          length(kmeans_labubu$cluster) == 61
        )
      }
    )
  )
)