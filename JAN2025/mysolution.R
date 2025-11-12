library(stringr)
library(lubridate)
library(tibble)

setwd("C:/Users/oier.z/Desktop/R/2025Jan")

csv <- read.csv("COVIDLockdowns.csv")

#EXERCISE1
cat("\nEXERCISE 1\n")
cat("----------\n")
tib <- as_tibble(csv)
print(tib[nrow(tib),])

#EXERCISE2
cat("\nEXERCISE 2\n")
cat("----------\n")
tib$Month <- ordered(tib$Month)
print(tib)

nueva_fila <- list(25,"febrero",2020,"Bahrain",NA,"Full")
#levels(tib$Month) <- union(levels(tib$Month), "febrero")
tib$Month <- ordered(tib$Month, levels = c(levels(tib$Month), "febrero"))

tib <- rbind(tib, nueva_fila)
print(tib[nrow(tib), ])
levels(tib$Month)
print(tib)

#EXERCISE3
cat("\nEXERCISE 3\n")
cat("----------\n")
tib <- tib[!is.na(tib$Type),]
print(tib)
levels(tib$Month) <- union(levels(tib$Month), c("enero", "febrero", "marzo", "abril", "mayo", "junio", "julio", "agosto", "septiembre", "octubre", "noviembre", "diciembre"))            
table(tib$Month)

#EXERCISE4
cat("\nEXERCISE 4\n")
cat("----------\n")
tib$Date <- make_date(tib$Year, tib$Month, tib$Day)
tib$Date <- ymd(tib$Date)
print(tib)

tib <- rbind(tib, c(NA,NA,NA,NA,NA,NA,NA))

#EXERCISE5 AND 6
cat("\nEXERCISE 5 AND 6\n")
cat("----------\n")
summarize_rows <- function(tibb){
  if(!("Date" %in% colnames(tibb)) | !("Country.Region" %in% colnames(tibb)) | !("Province" %in% colnames(tibb)) | !("Type" %in% colnames(tibb))){
    stop("Wrong tibble")
  }
  f_tibb <<- tibb[tibb$Type %in% c("Full", "Partial"),]
  result <- ifelse(f_tibb$Type == "Full", paste0(f_tibb$Country.Region, " reported a lockdown on ", f_tibb$Date), 
                   ifelse(f_tibb$Type == "Partial", paste0(f_tibb$Country.Region, " reported a curfew on ", f_tibb$Date), ""))
                   
  return(result)
}

print(summarize_rows(tib))
print(nrow(tib))
#tib <- tib[-nrow(tib),]
#print(tib[nrow(tib),])
print(nrow(tib))


