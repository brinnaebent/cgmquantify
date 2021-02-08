#' Compute Mean of Glycemic Excursions
#'
#' This function computes the mean of glycemic excursions,
#' glycemic excursions indicated by standard deviation, default = 1
#'
#' @param df Data frame read through readfile
#' @param sd Standard deviation indicating glycemic excursion, default = 1
#' @return A numeric value representing MAGE
#' @export
#' @importFrom stats sd
MGE <- function(df, sd = 1) {
  up = mean(df$glucose) + sd*sd(df$glucose)
  dw = mean(df$glucose) - sd*sd(df$glucose)
  MAGE = mean(subset(df, df$glucose >= up | df$glucose <= dw)$glucose)
  return(MAGE)

}

#' Compute Mean of Normal Glucose
#'
#' This function computes the mean of normal glucose,
#' glycemic excursions indicated by standard deviation, default = 1
#'
#' @param df Data frame read through readfile
#' @return A numeric value representing MGN
#' @export
#' @importFrom stats sd
MGN <- function(df) {
  up = mean(df$glucose) + sd(df$glucose)
  dw = mean(df$glucose) - sd(df$glucose)
  MAGN = mean(subset(df, df$glucose <= up | df$glucose >= dw)$glucose)
  return(MAGN)

}

