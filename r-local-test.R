################################
#install.packages("git2r")
################################


library(devtools)
install_github("cpsievert/pitchRx")

library("pitchRx")
dat180402 <- scrape(start = "2018-04-02", end = "2018-04-04", suffix = "inning/inning_all.xml")



list <- list(dat180402$atbat$date)


maxdate <- dat180402$atbat$date[which.max(dat180402$atbat$date)]


Today <- Sys.Date()

sql_command <- paste("UPDATE pg_settings SET setting =", Sys.Date(), "WHERE name = 'latest_date'")

 WHERE name = 'latest_date'"
dbGetQuery(con, sql_command)



UPDATE pg_settings SET setting = reset_val WHERE name = 'latest_date';




http://www.postgresqltutorial.com/postgresql-update/



# specifies the details of the table
sql_command <- "CREATE TABLE cartable
(
  carname character varying NOT NULL,
  mpg numeric(3,1),
  cyl numeric(1,0),
  disp numeric(4,1),  
  hp numeric(3,0),
  drat numeric(3,2),
  wt numeric(4,3),
  qsec numeric(4,2),
  vs numeric(1,0),
  am numeric(1,0),
  gear numeric(1,0),
  carb numeric(1,0),
  CONSTRAINT cartable_pkey PRIMARY KEY (carname)
)
WITH (
OIDS=FALSE
);
ALTER TABLE cartable
OWNER TO openpg;
COMMENT ON COLUMN cartable.disp IS '
';"
# sends the command and creates the table
dbGetQuery(con, sql_command)