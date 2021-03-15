rm(list=objects())
library("tidyverse")
library("lubridate")
## code to prepare `meteo` dataset goes here
readr::read_delim("datiMeteo_nuovoVento.csv",delim=";",col_names = TRUE)->meteo

usethis::use_data(meteo, overwrite = TRUE)


meteo %>%
  mutate(across(c(starts_with("t"),starts_with("p"),starts_with("w"),sp,rh,dtr,nirradiance,u10m,v10m,altitude,altitudedem),scale))->meteo_standardizzati

usethis::use_data(meteo_standardizzati, overwrite = TRUE)


