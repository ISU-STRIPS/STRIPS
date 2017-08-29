#' Extract data used in PNAS manuscript
#'
#' This function will extract data used in the PNAS manuscript.
#' It pulls data from a number of the dependent packages,
#' summarizes each data set by averaging observations for each year-watershed
#' combination, and returns a data from of the results.
#'
#' @import dplyr
#' @export
#' @examples
#' d <- pnas()
#'
pnas <- function() {


  # Liebman

  # Schulte

  # ONeal

  # I believe the following are not included: Iqbal, Harris, Kolka

  bind_rows(STRIPSHelmers::pnas_data(),
            STRIPSTyndall::pnas_data(),
            STRIPSyield::pnas_data()) %>%
    filter(year > 2007) %>%
    select(  PI, source, year, watershed, response, value) %>%
    group_by(PI, source, year, watershed, response) %>%
    summarize(n = length(!is.na(value)),
              mean_response = mean(value, na.rm=TRUE))

}
