#' Gets the format attributes of the variables of a list or data frame
#'
#' @param df a list or data frame
#'
#' @export
#'
#' @author Marc Choisy
#'
get_format <- function(df) {
  grep("format",
       unique(unlist(lapply(df, function(x) names(attributes(x))))),
       value = TRUE)
}
