library(DBI)
library(RMySQL)
library(pitchRx)
library(dplyr)

cat("R program running")
<<<<<<< HEAD
=======

names(s <- Sys.getenv())
#print(Sys.getenv("mlb_db_hostname"))

my_db <- dbConnect(MySQL(), user=Sys.getenv("mlb_db_username"), password=Sys.getenv("mlb_db_password"), dbname="service_instance_db", host=Sys.getenv("mlb_db_hostname"))

scrape(start = "2018-04-02", end = "2018-04-04", suffix = "inning/inning_all.xml", connect = my_db)

<<<<<<< HEAD
head(dat1605)
tail(dat1605)
>>>>>>> 0edbdf55b0252d031d3fe349f293b8e458cc4dbe
=======
>>>>>>> c1ab8fce3323f3eb033caaaf41e1dd52b04f5bfb
