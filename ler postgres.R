# Connecting to RPostgreSQL

drv <- dbDriver('PostgreSQL')  
db <- 'PE'  
host_db <- 'localhost'  
db_port <- '5432'  
db_user <- 'postgres'  
db_password <- 'postgres'

conn <- dbConnect(drv, dbname=db, host=host_db, port=db_port, user=db_user, password=db_password)

# Connecting to RPostgres 
# with the same connection variables without 'drv'

conn <- dbConnect(RPostgres::Postgres(), dbname = db2, host=host_db, port=db_port, user=db_user, password=db_password)  
