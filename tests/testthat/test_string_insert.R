context("Insert a string to another string")

test_that("string_insert inserts a string to another string", {
  a <- "apple pear "
  b <- "banana "
  c <- "banana apple pear "
  d <- "apple banana pear "
  e <- "apple pear banana "

  expect_identical(string_insert(a, b, as.integer(0)), c)
  expect_identical(string_insert(a, b, as.integer(6)), d)
  expect_identical(string_insert(a, b, as.integer(11)), e)

  expect_error(string_insert(a, 1, as.integer(0)), "The class of `a` and `b` must be character")
  expect_error(string_insert(c("apple", "pear"), b, as.integer(0)), "`a` and `b` must be a single string")
  expect_error(string_insert(a, b, 0), "`pos` must be a nonnegative integer")
  expect_error(string_insert(a, b, as.integer(-3)), "`pos` must be a nonnegative integer")
  expect_error(string_insert(a, b, as.integer(12)), "`pos` must be less than or equal to the number of characters in `a`")
})

