context("Replace a substring in a string with another string")

test_that("string_replace replaces a substring in a string with another string", {
  a <- "apple banana pear "
  b <- "orange"
  c <- "orange banana pear "
  d <- "apple orange pear "
  e <- "apple banana orange "

  expect_identical(string_replace(a, b, as.integer(1), as.integer(5)), c)
  expect_identical(string_replace(a, b, as.integer(7), as.integer(12)), d)
  expect_identical(string_replace(a, b, as.integer(14), as.integer(17)), e)
})
