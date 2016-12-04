context("Cut a substring from a string")

test_that("string_cut cuts a substring from a string", {
  a <- "apple banana pear "
  c <- "banana pear "
  d <- "apple pear "
  e <- "apple banana "

  expect_identical(string_cut(a, as.integer(1), as.integer(6)), c)
  expect_identical(string_cut(a, as.integer(7), as.integer(13)), d)
  expect_identical(string_cut(a, as.integer(14), as.integer(18)), e)

  expect_error(string_cut(12345, as.integer(1), as.integer(6)), "The class of `a` must be character")
  expect_error(string_cut(c("apple", "pear"), as.integer(1), as.integer(6)), "`a` must be a single string")
  expect_error(string_cut(a, 1, as.integer(6)), "`startPos` must be a positive integer")
  expect_error(string_cut(a, as.integer(0), as.integer(6)), "`startPos` must be a positive integer")
  expect_error(string_cut(a, as.integer(19), as.integer(21)), "`startPos` must be less than or equal to the number of characters in `a`")
  expect_error(string_cut(a, as.integer(1), 6), "`endPos` must be a positive integer")
  expect_error(string_cut(a, as.integer(1), as.integer(20)), "`endPos` must be less than or equal to the number of characters in `a`")
  expect_error(string_cut(a, as.integer(6), as.integer(1)), "`startPos` must be less than or equal to `endPos`")
})
