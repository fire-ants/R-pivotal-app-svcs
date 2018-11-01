library(pitchRx)

print("Hello, this is r running in the container.")
cat("R program running")

dat1605 <- scrape(start = "2016-05-01", end = "2016-05-30", suffix = "inning/inning_all.xml")

head(dat1605)
tail(dat1605)