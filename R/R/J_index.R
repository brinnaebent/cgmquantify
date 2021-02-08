#' Compute J-index
#'
#' This function computes J-index, a glycemic variability metrix
#'
#' @param df Data frame read through readfile
#' @return A numeric value representing J-index
#' @export
#' @import stats
J_index <- function(df) {
  J = 0.001*((mean(df$glucose) + sd(df$glucose))^2)
  return(J)
}
