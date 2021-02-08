#' Compute Time Inside Range
#'
#' This function computes the time inside range (range in standard
#' deviations from mean, default = 1).
#'
#' @param df Data frame read through readfile
#' @param sd Standard deviation indicating glycemic excursions,
#' default = 1
#' @param sr Sampling rate inverse in minutes of the CGM
#' (default is the Dexcom -> 5 minutes)
#' @return A numeric value representing TIR
#' @export
#' @import stats
TIR <- function(df, sd = 1, sr = 5) {
  up = mean(df$glucose) + sd*sd(df$glucose)
  dw = mean(df$glucose) - sd*sd(df$glucose)
  TIR = nrow(subset(df, df$glucose <= up & df$glucose >= dw)) * sr
  return(TIR)
}

