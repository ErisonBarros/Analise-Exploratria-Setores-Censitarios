fd <- paste("ftp://geoftp.ibge.gov.br/mapas/",
            "malhas_digitais/setor_urbano_2000/PE/20150527/", sep="")
for (e in c("DBF", "SHP", "PRJ", "SHX"))
  download.file(paste(fd, "20150527.", e, sep=""),
                paste("../../maps/20150527.", tolower(e), sep=""))