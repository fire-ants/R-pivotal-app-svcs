library(pitchRx)

print("Hello, this is r running in the container.")
cat("R program running")

dat1605 <- scrape(start = "2018-04-02", end = "2018-04-04", suffix = "inning/inning_all.xml")

head(dat1605)
tail(dat1605)