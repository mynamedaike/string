context("Cut a substring from a string")

test_that("string_cut cuts a substring from a string", {
  a <- "apple banana pear "
  c <- "banana pear "
  d <- "apple pear "
  e <- "apple banana "

  expect_identical(string_cut(a, as.integer(1), as.integer(6)), c)
  expect_identical(string_cut(a, as.integer(7), as.integer(13)), d)
  expect_identical(string_cut(a, as.integer(14), as.integer(18)), e)
})
