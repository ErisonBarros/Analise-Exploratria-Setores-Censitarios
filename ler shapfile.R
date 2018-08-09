library(rgdal)
library(maptools)
library(rgeos)
library(ggplot2)
ogrListLayers('Downloads/i3geomap_imoveiscertificados_privado_pe.shp')
mg_mapa <- readOGR('Downloads/i3geomap_imoveiscertificados_privado_pe.shp',
                   layer = '31MUE250GC_SIR_simplificado')
mg_mapa$Mun.Trab <- substr(mg_mapa$CD_GEOCMU, 1, 6)
REM_RAIS_MG_2015 <- read_delim('dados/REM_RAIS_MG_2015.csv',
                               delim = ";",
                               locale = locale(encoding = "ISO-8859-1"),
                               col_types = 'cd')
colnames(REM_RAIS_MG_2015)[1] <- "Mun.Trab"
summary(REM_RAIS_MG_2015$mediana)
##REM_RAIS_MG_2015 <- REM_RAIS_MG_2015 %>%
##  mutate(mediana.original = mediana,