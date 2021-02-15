## code to prepare `meteo` dataset goes here
readr::read_delim("datiMeteo_nuovoVento.csv",delim=";",col_names = TRUE)->meteo

usethis::use_data(meteo_standardizzati, overwrite = TRUE)


meteo %>%
  dplyr::select(-station_code,-station_eu_code,-date)->temp

purrr::map_dfc(temp,.f=~(.x-mean(.x,na.rm=TRUE))/sd(.x,na.rm = TRUE) )->ntemp

dplyr::bind_cols(meteo[,c("station_code","station_eu_code","date")],ntemp)->meteo_standardizzati



usethis::use_data(meteo_standardizzati, overwrite = TRUE)
