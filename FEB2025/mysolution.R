library(lubridate)
library(tibble)
library(stringr)

setwd("C:/Users/oier.z/Desktop/R/extraordinary_solved")
getwd()

#EXERCISE 1
cat("\nExercise 1\n")
cat("----------\n")
weather <- as_tibble(read.csv("weather.csv"))
print(weather)

#EXERCISE 2
cat("\nExercise 2\n")
cat("----------\n")
weather$Date <- dmy(weather$Date)
weather
interval <- interval(min(weather$Date), max(weather$Date))
date <- as.period(interval)
cat("the difference of", date@year, "years", date@month, "months and", date@day, "days\n")

#EXERCISE 3
cat("\nExercise 3\n")
cat("----------\n")
mean_winds <- c()
for(i in 1:12){
  mean_winds <- c(mean_winds, mean(weather$Wind.Speed[month(weather$Date) == i]))
}

mean_winds_ts <- ts(round(mean_winds, digits = 4), frequency = 12, start = 2024)
print(mean_winds_ts)

#EXERCISE 4
cat("\nExercise 4\n")
cat("----------\n")
weather$classification <- ifelse(weather$Wind.Speed >= 50, "stormy", 
       ifelse(weather$Wind.Speed < 20, "calm", "windy"))
print(weather[1:6,])

#EXERCISE 5
cat("\nExercise 5\n")
cat("----------\n")
weather$classification <- ordered(weather$classification, levels = c("calm", "windy", "stormy"))
print(weather$classification[1:70])

#EXERCISE 6
cat("\nExercise 6\n")
cat("----------\n")

summarize_data <- function(tib){
  cat("Mean temperature: ", round(mean(tib$Temperature), digits = 2), "\n")
  cat("Mean wind speed: ", round(mean(tib$Wind.Speed), digits = 2), "\n")
  cat("Mean air pressure: ", round(mean(tib$Air.Pressure), digits = 2), "\n")
  print(table(tib$classification))
}
summarize_data(weather)




