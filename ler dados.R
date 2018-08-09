## Instalação
#install.packages("devtools")
#install.packages("stringi") 
#devtools::install_github("lucasmation/microdadosBrasil")
library('microdadosBrasil')

# Censo Demográfico 2000
#Depois de ter baixado e descompactado os arquivos em seu diretório de trabalho , rode:
d <- read_CENSO('domicilios',2010)
d <- read_CENSO('pessoas',2010)