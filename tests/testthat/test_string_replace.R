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

  expect_error(string_replace(a, 2, as.integer(1), as.integer(5)), "The class of `a` and `b` must be character")
  expect_error(string_replace(c("apple ", "pear "), b, as.integer(1), as.integer(5)), "`a` and `b` must be a single string")
  expect_error(string_replace(a, b, 1, as.integer(5)), "`startPos` must be a positive integer")
  expect_error(string_replace(a, b, as.integer(0), as.integer(5)), "`startPos` must be a positive integer")
  expect_error(string_replace(a, b, as.integer(19), as.integer(20)), "`startPos` must be less than or equal to the number of characters in `a`")
  expect_error(string_replace(a, b, as.integer(1), 5), "`endPos` must be a positive integer")
  expect_error(string_replace(a, b, as.integer(1), as.integer(20)), "`endPos` must be less than or equal to the number of characters in `a`")
  expect_error(string_replace(a, b, as.integer(5), as.integer(1)), "`startPos` must be less than or equal to `endPos`")
})
