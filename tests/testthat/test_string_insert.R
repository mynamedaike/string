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
})
