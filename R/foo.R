#' foo
#'
#'
#' @return "foo"
#' @export
#'
#' @examples
#' foo()
foo <- function() {
  # tickle the "no visible binding" NOTE
  with(iris, 1 + 1)
  "foo"
}
