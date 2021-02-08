#' Read in Data Frame
#'
#' This function reads in a .csv with variable names
#' Timestamp..YYYY.MM.DDThh.mm.ss and Glucose.Value..mg.dL
#'
#' @param filename .csv file of data frame to be read
#' @return transformed data frame for further analysis
#' @importFrom utils read.csv
#' @importFrom magrittr %>%
#' @export

readfile <- function(filename) {
  df_CGM = read.csv(filename,
                     header = TRUE, stringsAsFactors = FALSE)
  df_CGM = data.frame(df_CGM$Timestamp..YYYY.MM.DDThh.mm.ss.,
                       df_CGM$Glucose.Value..mg.dL.)
  names(df_CGM) = c("Time", "glucose")
  df_CGM$Time = as.POSIXct(df_CGM$Time, format = "%Y-%m-%dT%H:%M:%OS", origin = "1970-01-01")
  df_CGM = df_CGM %>%
    dplyr::mutate(Date = as.Date(df_CGM$Time)) %>%
    dplyr::mutate(time_of_day = hms::as_hms(df_CGM$Time)) %>%
    dplyr::mutate(type_of_event = ifelse(df_CGM$glucose > 180, 1,
                                  ifelse(df_CGM$glucose < 70, -1, 0))) # threshold and label is for hyper-/hypoglycemia identification
  df_CGM = utils::tail(df_CGM, -11)
  return(df_CGM)
}
