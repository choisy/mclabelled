getlabel <- function(df) {
  sapply(df, function(x) attributes(x)$label)
}

make_white_space <- function(length) {
  paste0(paste(rep(" ", length), collapse = ""), " : ")
}

showlabel <- function(x) {
  var_name <- names(x)
  nc <- nchar(var_name)
  ws <- sapply(max(nc) - nc, make_white_space)
  cat(paste(apply(cbind(var_name, ws, x), 1, paste, collapse = ""), collapse = "\n"))
}

varlab <- function(df) {
  showlabel(getlabel(df))
}
