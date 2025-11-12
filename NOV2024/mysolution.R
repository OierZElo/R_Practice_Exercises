library(lubridate)
library(stringr)
library(tibble)

setwd("C:/Users/oier.z/Desktop/R/2024november")

csv <- read.csv("person_dataset.csv")
print(csv)

#EXERCISE1
cat("\nEXERCISE 1\n")
cat("----------\n")
tib <- as_tibble(csv)
print(tib)

#EXERCISE2
cat("\nEXERCISE 2\n")
cat("----------\n")
tib$Date <- make_date(tib$Year, tib$Month, tib$Day)
print(tib)

#EXERCISE3
cat("\nEXERCISE 3\n")
cat("----------\n")
interval <- interval(min(tib$Date), max(tib$Date))
date <- as.period(interval)
cat("They have passed", date@year, "years,", date@month, "months and ", date@day, "days")

#EXERCISE4
cat("\nEXERCISE 4\n")
cat("----------\n")
tib2 <- tib[tib$Year == 2004, c("Date", "Weight")]
timeserie <- ts(tib2$Weight, frequency = 12, start = 2024)
print(timeserie)

#EXERCISE5 AND 6
cat("\nEXERCISE 5 AND 6\n")
cat("----------\n")
fever_days <- function(tibb){
  if((ncol(tibb) != 2) | !("Date" %in% colnames(tibb)) | !("BodyTemperature" %in% colnames(tibb))){
    stop("Error not correct tibble")
  }
  class <- ifelse(tibb$BodyTemperature >= 37.5, "febrile", "normal")
  result <- paste0(tibb$Date, ": ", class)
  return(result)
}
print(fever_days(tib[,"BodyTemperature"]))
print(fever_days(tib[,c("Date", "BodyTemperature")]))



