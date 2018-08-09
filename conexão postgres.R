# install.packages("RPostgreSQL")
require("RPostgreSQL")

# create a connection
# save the password that we can "hide" it as best as we can by collapsing it
pw <- {  "new_user_password"}

# loads the PostgreSQL driver

drv <- dbDriver("PostgreSQL")
# creates a connection to the postgres database
# note that "con" will be used later in each connection to the database
con <- dbConnect(drv, dbname = "postgres",
                 host = "localhost", port = 5432,
                 user = "postgres", password = 36361081)
rm(pw) # removes the password

# check for the cartable
dbExistsTable(con, "cartable")
# TRUE
# query the data from postgreSQL 
df_postgres <- dbGetQuery(con)
#(con, "SELECT * FROM table")

