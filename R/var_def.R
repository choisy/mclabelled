#' Returns the definitions of the variables
#'
#' @param df a list or data frame
#'
#' @author Marc Choisy
#'
#' @examples
#' ## retrieving the format of an Stata version of the iris data set:
#' library(haven)
#' path <- system.file("examples", "iris.dta", package = "haven")
#' iris <- read_dta(path)
#' str(iris)
#' var_def(iris)
#' var_def(iris, sepallength)
#' var_def(iris, sepallength, petallength)
#' var_def(iris[c("sepallength", "petallength")])
#' var_def(iris[, c("sepallength", "petallength")])
#' all_about_length <- grep("length", names(iris), value = TRUE)
#' var_def(iris[all_about_length])
#'
#' @export
#'
var_def <- function(data, ...) {
  dots <- substitute(list(...))[-1]
  vars <- sapply(dots, deparse)
  if (length(vars) > 0) varlab(data[vars])
  else varlab(data)
}
