#' Extract data used in PNAS manuscript
#'
#' This function will extract data used in the PNAS manuscript.
#' It pulls data from a number of the dependent packages,
#' summarizes each data set by averaging observations for each year-watershed
#' combination, and returns a data from of the results.
#'
#' @import dplyr
#' @importFrom tidyr gather
#' @importFrom plyr revalue
#' @importFrom vegan diversity
#' @examples
#' d <- pnas()
#'
pnas <- function() {
  # Helmers
  ground_water <- STRIPSHelmers::groundwater %>%
    filter(pos == 'foot') %>%
    select(year,
           month,
           watershed,
           no3mgladj,
           po4mgladj) %>%
    tidyr::gather(response, value, -year, -month, -watershed) %>%
    mutate(Rpackage = "STRIPSHelmers", data = "groundwater")

  surface_water <- STRIPSHelmers::surfacewater %>%
    select(year,
           watershed,
           runoff_mm, sed_kgha, tn_kgha, tp_kgha, no3_kgha) %>%
    tidyr::gather(response, value, -year, -watershed) %>%
    mutate(Rpackage = "STRIPSHelmers", data = "surfacewater")



  # yield
  yield <- STRIPSyield::yield %>%
    left_join(yield_conversion, by="crop") %>%
    left_join(STRIPSMeta::watersheds, by="watershed") %>%
    mutate(crop_prop = 1-prairie_pct/100) %>%
    mutate(value = crop_prop * dryyield_buac * Mgha_per_buac,
           Rpackage = "STRIPSyield", data = "yield")


  # Liebman

  # Schulte

  # ONeal

  # Tyndall

  # I believe the following are not included: Iqbal, Harris, Kolka

  bind_rows(ground_water,
            surface_water,
            yield) %>%
    filter(year > 2007) %>%
    select(  year, watershed, Rpackage, data, response, value) %>%
    group_by(year, watershed, Rpackage, data, response) %>%
    summarize(n = length(!is.na(value)),
              mean_response = mean(value, na.rm=TRUE))

}
