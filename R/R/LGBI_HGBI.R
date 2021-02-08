LGBI_HBGI <- function(df) {
  f = data.frame(log_glucose = log(df$glucose^1.084) - 5.381)
  f <- mutate(f,
              rl = case_when(
                log_glucose <= 0 ~
                  22.77*(log_glucose^2),
                TRUE ~ 0),
              rh = case_when(
                log_glucose > 0 ~
                  22.77*(log_glucose^2),
                TRUE ~ 0)
  )

  LGBI = mean(f$rl)
  HGBI = mean(f$rh)

  return(data.frame(LGBI, HGBI))

}

#' Compute Low Blood Glucose Index
#'
#' This function computes the low blood glucose index
#'
#' @param df Data frame read through readfile
#' @return A numeric value representing LGBI
#' @export
LGBI <- function(df) {
  f = data.frame(log_glucose = log(df$glucose^1.084) - 5.381)
  f <- mutate(f,
              rl = case_when(
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
#' @return A numeric value representing HGBI
#' @export
HGBI <- function(df) {
  f = data.frame(log_glucose = log(df$glucose^1.084) - 5.381)
  f <- mutate(f,
              rh = case_when(
                log_glucose > 0 ~
                  22.77*(log_glucose^2),
                TRUE ~ 0))

  return(mean(f$rh))

}
