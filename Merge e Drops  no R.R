library("foreign")

#insira o nome do arquivo a ser aberto
dbf_name = "B:\DATASET_TESE\Setores Censitários\PE_20150527\PE\Base informaçoes setores2010 universo PE\
CSV>"

#abra o arquivo e salve-o no objeto dbf_file
dbf_file <- read.dbf(dbf_name)

#nome o csv com as variáveis que serão concatenadas
csv_name <- "/Users/luizhenriquemormille/Documents/IBGE/Datafiles/clusterized/SP_sc_clusters.csv"

#abra o csv e salve-o no objeto csv_file
csv_file <- read.csv(csv_name, sep=";", encoding = 'latin-1')

#merge the dbf_file with the csv_file
merged_dbf <- merge(x = dbf_file, y = csv_file, by = "CD_GEOCODI", all = TRUE)


#drop undesired columns
drops <- c('X', 'Cod_setor', 'CD_GEOCODB', 'NM_BAIRRO', 'NM_SUBDIST')
merged_dbf = merged_dbf[ , !(names(merged_dbf) %in% drops)]

#save de new dbf file
write.dbf(merged_dbf,"/Users/luizhenriquemormille/Documents/IBGE/Shapefiles/SP/SP_CLUSTER/CIDADE_SP.dbf")