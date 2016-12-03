string_insert <- function(a, b, pos) {
  if (class(a) != "character" || class(b) != "character") {
    stop("The class of `a` and `b` must be character")
  }

  if (length(a) != 1 || length(b) != 1) {
    stop("`a` and `b` must be a single string")
  }

  if (class(pos) != "integer" || pos < 0) {
    stop("`pos` must be positive integer")
  }

  if (pos > stringr::str_length(a)) {
    stop("pos must be less than or equal to the number of characters in a")
  }

  formerSub <- stringr::str_sub(a, 1, pos)
  latterSub <- stringr::str_sub(a, pos + 1, stringr::str_length(a))

  c <- stringr::str_c(formerSub, b, latterSub)

  return(c)
}