library(lubridate)
library(tibble)
library(stringr)

df <- read.csv("students.csv")

#Ex1
df <- as_tibble(df)

#Ex2
df$birth_date <- ymd(df$birth_date)
df$grade_date <- ymd(df$grade_date)

#Ex3
age <- difftime(Sys.Date(), df$birth_date)
age <- as.numeric(age) %/% 365
df$age <- age
df

#Ex4
df$birth_month <- month(df$birth_date)
df

#Ex5
df$performance <- factor(ifelse(df$grade < 5, "Low", ifelse(df$grade < 8, "Moderate", "High")))
df

#Ex6
difftime(df$grade_date, df$birth_date)

#Ex7
ts1 <- ts(df$grade, frequency = 12, start = c(2024, 11))
ts1

#Ex8
for(student in rownames(df)){
  if(df[student, "birth_month"] %in% 6:8){
    df[student, "grade"] <- df[student, "grade"] + df[student, "grade"]*0.05
  }
}
df
