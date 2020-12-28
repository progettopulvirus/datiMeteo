# Pacchetto datiMeteo

I dati meteo di ERA5 per progetto PULVIRUS sono disponibili come pacchetto R `datiMeteo`. Il pacchetto contiene i valori di direzione e velocità del vento ricalcolatimediante il pacchetto `Rsenal`.

## Istallazione

Scaricare il pacchetto `remotes`

`
install.packages("remotes")
`

Quindi dallaconsole di R digitare:

`
remotes::install_github("pulvirus/datiMeteo")
`

Una volta installato potete caricare il pacchetto `datiMeteo`:

`
library("datiMeteo")
`

Il pacchetto contiene un `tibble` di nome `meteo` con i dati meteo di ERA5:

`
meteo
`

Digitando:

`
?meteo
`
potete avereuna descrizione dei dati disponibili.

Per avere informazioni su cosa sia un `tibble` in R [consultare questa pagina](https://tibble.tidyverse.org/)


