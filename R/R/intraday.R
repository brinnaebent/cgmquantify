#' Compute Intraday Coefficient of Variation
#'
#' This function computes the intraday coefficient of variation
#' summary statistics: mean, median, standard deviation of all days in data
#'
#' @param df Data frame read through readfile
#' @return A data frame containing the mean, median, and standard deviation
#' of the intraday coefficients of variation.
#' @export
intradaycv <- function(df) {
  intradaycv = vector()
  for (i in unique(df$Date)) {
    intradaycv <- append(intradaycv, ((interdaycv(subset(df, df$Date == i)))))
  }

  intradaycv_mean = mean(intradaycv)
  intradaycv_median = median(intradaycv)
  intradaycv_sd = sd(intradaycv)

  return(data.frame(intradaycv_mean, intradaycv_median, intradaycv_sd))
}

#' Compute Intraday Standard Deviation
#'
#' This function computes the intraday standard deviation summary statistics:
#' mean, median, standard deviation of all days in data
#'
#' @param df Data frame read through readfile
#' @return A data frame containing the mean, median, and standard deviation
#' of the intraday standard deviations.
#' @export
#' @import stats
intradaysd <- function(df) {
  intradaysd = vector()
  for (i in unique(df$Date)) {
    intradaysd <- append(intradaysd, sd(subset(df, df$Date == as.Date(i))$glucose))
  }
  intradaysd_mean = mean(intradaysd)
  intradaysd_median = median(intradaysd)
  intradaysd_sd = sd(intradaysd)

  return(data.frame(intradaysd_mean, intradaysd_median, intradaysd_sd))
}


