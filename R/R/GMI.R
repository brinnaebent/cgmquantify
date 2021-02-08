#' Compute Glycemic Management Indicator
#'
#' This function computes the estimated GMI
#'
#' @param df Data frame read through readfile
#' @return A numeric value representing GMI
#' @export

GMI <- function(df) {
  GMI = 3.31 + (0.02392*mean(df$glucose))
  return(GMI)
}

