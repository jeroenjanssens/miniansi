test_that("a polygon with only horizontal edges doesn't fail", {
  # A box with zero height, as ggplot2 draws for a box plot of one value
  xs <- c(1, 10, 10, 1)
  ys <- c(5, 5, 5, 5)
  expect_null(miniansi:::fill_polygon(NULL, xs, ys, "*"))

  mat <- miniansi:::fill_polygon(NULL, xs, ys, "*", debug = TRUE)
  expect_true(all(mat[5, 1:10] == "*"))
})

test_that("a polygon with height is still filled", {
  mat <- miniansi:::fill_polygon(NULL, c(2, 8, 8, 2), c(2, 2, 6, 6), "*", debug = TRUE)
  expect_true(all(mat[2:6, 2:8] == "*"))
})
