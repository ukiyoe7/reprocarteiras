## VIEW CLIENTES

library(DBI)
library(dplyr)
library(readr)

con2 <- dbConnect(odbc::odbc(), "reproreplica")


cli <- dbGetQuery(con2, statement = read_file('CLIENTES.sql'))

View(cli)
