#' Plot Glucose Data
#'
#' This function plots glycemic excursions over the
#' time period in which data was collected.
#'
#' @param df Data frame read through readfile
#' @export
plot_glucose <- function(df) {
  ggplot2::ggplot(df) +
    ggplot2::geom_point(data = df, ggplot2::aes(x = df$time_of_day, y = df$glucose),
               col = "orange", cex = 0.5) +
    ggplot2::geom_line(data = df, ggplot2::aes(x = df$time_of_day, y = df$glucose),
              col = "orange") +
    ggplot2::facet_grid(df$Date ~ ., scale = "fixed") +
    ggplot2::theme_bw() +
    ggplot2::ylab("Glucose Level") +
    ggplot2::xlab("Time of Day") +
    ggplot2::labs(title = "CGM data for Participant #1")
}
