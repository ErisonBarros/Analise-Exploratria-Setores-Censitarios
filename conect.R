db_connect <- function(){
  DBI::dbConnect(odbc::odbc(),
                 Driver       = "PostgreSQL",
                 servername   = "your_server",
                 database     = "dev",
                 UID          = keyringr::get_kc_account('redshift'),
                 PWD          = keyringr::decrypt_kc_pw('redshift'),
                 Port         = 5439)