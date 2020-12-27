## code to prepare `meteo` dataset goes here
readr::read_delim("datiMeteo_nuovoVento.csv",delim=";",col_names = TRUE)->meteo
usethis::use_data(meteo, overwrite = TRUE)
