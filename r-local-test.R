install.packages("pitchRx")


library("pitchRx")
dat160501 <- scrape(start = "2016-05-01", end = "2016-05-01", suffix = "inning/inning_all.xml")



install.packages("devtools")
library("devtools")
install_github("cpsievert/pitchRx")

library("pitchRx")
dat170701 <- scrape(start = "2017-07-01", end = "2017-07-01", suffix = "inning/inning_all.xml")

dat180402 <- scrape(start = "2018-04-02", end = "2018-04-02", suffix = "inning/inning_all.xml")


ip <- as.data.frame(installed.packages()[,c(1,3:4)])
rownames(ip) <- NULL
ip <- ip[is.na(ip$Priority),1:2,drop=FALSE]
print(ip, row.names=FALSE)