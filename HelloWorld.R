library(DBI)
library(RMySQL)
library(pitchRx)
library(dplyr)

cat("R program running")

names(s <- Sys.getenv())
#print(Sys.getenv("mlb_db_hostname"))

my_db <- dbConnect(MySQL(), user=Sys.getenv("mlb_db_username"), password=Sys.getenv("mlb_db_password"), dbname="service_instance_db", host=Sys.getenv("mlb_db_hostname"))

scrape(start = "2018-04-02", end = "2018-04-04", suffix = "inning/inning_all.xml", connect = my_db)

