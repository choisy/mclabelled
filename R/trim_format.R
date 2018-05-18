#' Trims the format attributes of the variables of a list or data frame
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
#' iris <- trim_format(iris)
#' str(iris)
#'
#' @export
#'
trim_format <- function(df) {
  formats <- get_format(df)
  if (length(formats) > 0)
    for(i in formats)
      df[] <- lapply(df, function(x) {attributes(x)[[i]] <- NULL; x})
  df
}
