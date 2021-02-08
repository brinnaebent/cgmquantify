#' Compute Estimated A1c
#'
#' This function computes the estimated A1c, according to
#' the American Diabetes Association calculator
#'
#' @param df Data frame read through readfile
#' @return A numeric value representing eA1c
#' @export

eA1c <- function(df) {
  eA1c = (46.7 + mean(df$glucose))/28.7
  return(eA1c)
}


