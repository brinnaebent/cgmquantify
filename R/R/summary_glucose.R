#' Compute Glucose Summary Statistics
#'
#' This function computes the mean, median, minimum, maximum,
#' first quartile, and the third quartile of an indidividual's
#' overall glucose levels
#' @param df Data frame read through readfile
#' @return A dataframe containing the mean, median, minimum,
#' maximum, quartile1, and quartile3 of glucose levels
#' @export
#' @importFrom stats median
#' @importFrom stats quantile
summary_glucose <- function(df) {
  meanG = mean(df$glucose)
  medianG = median(df$glucose)
  minG = min(df$glucose)
  maxG = max(df$glucose)
  Q1G = quantile(df$glucose, 0.25)
  Q3G = quantile(df$glucose, 0.75)

  return(data.frame(meanG,
                    medianG,
                    minG,
                    maxG,
                    Q1G,
                    Q3G))

}
