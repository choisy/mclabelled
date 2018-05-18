#' Gets the format attributes of the variables of a list or data frame
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
#' get_format(iris)
#'
#' @export
#'
get_format <- function(df) {
  grep("format",
       unique(unlist(lapply(df, function(x) names(attributes(x))))),
       value = TRUE)
}
