#' Replace a substring between two given positions in a string with another string
#'
#' @param a character
#' @param b character
#' @param startPos integer
#' @param endPos integer
#'
#' @return character
#' @export
#'
#' @examples
#'#' string_replace("apple banana pear", "peach", as.integer(7), as.integer(12))
string_replace <- function(a, b, startPos, endPos) {
  if (class(a) != "character" || class(b) != "character") {
    stop("The class of `a` and `b` must be character")
  }

  if (length(a) != 1 || length(b) != 1) {
    stop("`a` and `b` must be a single string")
  }

  if (class(startPos) != "integer" || startPos < 1) {
    stop("`startPos` must be a positive integer")
  }

  if (startPos > stringr::str_length(a)) {
    stop("startPos must be less than or equal to the number of characters in a")
  }

  if (class(endPos) != "integer" || endPos < 1) {
    stop("`endPos` must be a positive integer")
  }

  if (endPos > stringr::str_length(a)) {
    stop("endPos must be less than or equal to the number of characters in a")
  }

  if (startPos > endPos) {
    stop("startPos must be less than or equal to endPos")
  }

  formerSub <- stringr::str_sub(a, 1, startPos - 1)
  latterSub <- stringr::str_sub(a, endPos + 1, stringr::str_length(a))

  c <- stringr::str_c(formerSub, b, latterSub)

  return(c)
}
