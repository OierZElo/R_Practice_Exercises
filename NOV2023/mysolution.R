library(lubridate)
library(stringr)
library(tibble)

setwd("C:/Users/oier.z/Desktop/R/NOV2023")

csv <- read.csv("Data.csv")

tib <- as_tibble(csv)

print(tib)

#EXERCISE 1-1
cat("\nEXERCISE 1-1\n-----------------------\n")
tib$Blood.type <- ordered(tib$Blood.type, levels = c("0-", "0+", "B-", "A-", "B+", "A+", "AB-", "AB+"))
print(tib$Blood.type)

#EXERCISE 1-2
cat("\nEXERCISE 1-2\n-----------------------\n")
print(table(tib$Blood.type))

#EXERCISE 1-3
cat("\nEXERCISE 1-3\n-----------------------\n")
ts1 <- ts(tib$Pulse, frequency = 4, start = c(1969, 2))
ts2 <- ts(tib$Pulse, frequency = 12, start = c(2000, 9))
ts3 <- ts(tib$Pulse, frequency = 24, start = c(1, 13))

print(ts1)
print(ts2)
print(ts3)

#EXERCISE 2
cat("\nEXERCISE 2\n-----------------------\n")

evaluate_health <- function(cholesterol, glucose, blood_pressure, BMI){
  if(!(length(cholesterol) == length(glucose) && 
       length(glucose) == length(blood_pressure) && 
       length(blood_pressure) == length(BMI))){
    stop("All vectors must have the same length")
  }
  
  n <- length(cholesterol)
  results <- c()  # empty vector to store results
  
  # Loop through each person
  for(i in 1:n) {
    # --- Cholesterol classification ---
    chol_status <- if (cholesterol[i] < 200) {
      "Cholesterol level normal."
    } else if (cholesterol[i] < 240) {
      "Cholesterol level high limit."
    } else {
      "Cholesterol level high."
    }
    
    # --- Glucose classification ---
    glucose_status <- if (glucose[i] < 100) {
      "Glucose level normal."
    } else if (glucose[i] < 126) {
      "Glucose level prediabetes."
    } else {
      "Glucose level diabetes."
    }
    
    # --- Blood pressure classification ---
    bp_status <- if (blood_pressure[i] < 120) {
      "Normal blood pressure."
    } else if (blood_pressure[i] < 140) {
      "Prehypertension."
    } else {
      "Hypertension."
    }
    
    # --- BMI classification ---
    bmi_status <- if (BMI[i] < 18.5) {
      "Underweight."
    } else if (BMI[i] < 25) {
      "Normal weight."
    } else if (BMI[i] < 30) {
      "Overweight."
    } else {
      "Obesity."
    }
    
    # Combine results for this person
    result_string <- paste(
      "Person", i, ":", 
      chol_status, glucose_status, bp_status, bmi_status
    )
    
    results <- c(results, result_string)
  }
  
  return(results)
}

cholesterol <- c(180, 210, 190, 220)
glucose <- c(95, 110, 120, 130)
arterial_pressure <- c(118, 130, 140, 150)
imc <- c(22, 25, 29, 31)

print(evaluate_health(cholesterol, glucose, arterial_pressure, imc))

#EXERCISE 3-1
cat("\nEXERCISE 3-1\n-----------------------\n")
tib$Date <- as.Date(dmy_hms(tib$Date))
print(tib)

#EXERCISE 3-2
cat("\nEXERCISE 3-2\n-----------------------\n")
quarters_vector <- quarter(tib$Date)
print(quarters_vector)

#EXERCISE 3-3
cat("\nEXERCISE 3-3\n-----------------------\n")
years <- year(tib$Date)
print(years)

#EXERCISE 3-3
cat("\nEXERCISE 3-3\n-----------------------\n")
tib2 <- tib
tib2$Qtr <- quarters_vector
tib2$year <- years
print(tib2)

#EXERCISE 3-4
cat("\nEXERCISE 3-4\n-----------------------\n")
diff_days <-  as.numeric(max(tib$Date) - min(tib$Date))
print(diff_days %/% 7)

#EXERCISE 4-1
cat("\nEXERCISE 4-1\n-----------------------\n")
child_data1 <- tibble(
  age = c(2, 3, 1),
  weight = c(28.9, 35.8, 8.9),
  height = c(78, 67, 50)
)

child_data2 <- as_tibble(data.frame(
  age = c(2, 3, 1),
  weight = c(28.9, 35.8, 8.9),
  height = c(78, 67, 50)
))

print(child_data1)
print(child_data2)

#EXERCISE 4-2
cat("\nEXERCISE 4-2\n-----------------------\n")
child_data1[3, 2]
child_data1[[2]][3]
child_data1[3, 2][[1]]
child_data1$weight[3]
