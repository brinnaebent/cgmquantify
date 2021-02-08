#' Compute Low Blood Glucose Index
#'
#' This function computes the low blood glucose index
#'
#' @param df Data frame read through readfile
#' @return A data frame containing both the LBGI and HBGI values
#' @export
LBGI_HBGI <- function(df) {
  f = data.frame(log_glucose = log(df$glucose^1.084) - 5.381)
  f <- dplyr::mutate(f,
              rl = dplyr::case_when(
                log_glucose <= 0 ~
                  22.77*(log_glucose^2),
                TRUE ~ 0),
              rh = dplyr::case_when(
                log_glucose > 0 ~
                  22.77*(log_glucose^2),
                TRUE ~ 0)
  )

  LBGI = mean(f$rl)
  HBGI = mean(f$rh)

  return(data.frame(LBGI, HBGI))

}

#' Compute Low Blood Glucose Index
#'
#' This function computes the low blood glucose index
#'
#' @param df Data frame read through readfile
#' @return A numeric value representing LBGI
#' @export
LBGI <- function(df) {
  f = data.frame(log_glucose = (log(df$glucose)^1.084) - 5.381)
  f <- dplyr::mutate(f,
              rl = dplyr::case_when(
                log_glucose <= 0 ~
                  22.77*(log_glucose^2),
                TRUE ~ 0))

  return(mean(f$rl))

}

#' Compute High Blood Glucose Index
#'
#' This function computes the high blood glucose index
#'
#' @param df Data frame read through readfile
#' @return A numeric value representing HBGI
#' @export
HBGI <- function(df) {
  f = data.frame(log_glucose = (log(df$glucose)^1.084) - 5.381)
  f <- dplyr::mutate(f,
              rh = dplyr::case_when(
                log_glucose > 0 ~
                  22.77*(log_glucose^2),
                TRUE ~ 0))

  return(mean(f$rh))

}
