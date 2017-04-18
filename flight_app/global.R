library(flexdashboard)
library(ggplot2)
library(ggmap)
library(maps)
library(mapdata)
library(reshape2)
library(stringr)
library(scales)
library(plotly)




airports <- read.csv("https://raw.githubusercontent.com/jpatokal/openflights/master/data/airports.dat", header = FALSE)
colnames(airports) <- c("ID", "name", "city", "country", "IATA_FAA", "ICAO", "lat", "long", "altitude", "timezone", "DST")
flights_test <- read.csv("https://raw.githubusercontent.com/r-hopper/W205-Final-Project/master/flight_app/flights_test.csv")
busydep <- read.csv("https://raw.githubusercontent.com/ysun1020/W205_Final_Project_Temp/Adding-R/CSVs/top25airportsdep.csv")
busyarr <- read.csv("https://raw.githubusercontent.com/ysun1020/W205_Final_Project_Temp/Adding-R/CSVs/top25airportsarr.csv")
years <- c(colnames(busydep)[3: ncol(busydep)])  
usairports <- subset(airports, country == "United States")
busydepairports <- merge(busydep, usairports, by.x=c("Origin"), by.y=c("IATA_FAA"))
busydepairports$meanvol <- rowMeans(busydep[, years], na.rm = T)
usmap <- get_map(location = "United States", zoom=4, maptype="terrain",
                 source = "google", color = "color")


names(flights_test) <- tolower(names(flights_test))

#Set long month names
flights_test$months_long <- ifelse(flights_test$month == '1', "January", 
                                   ifelse(flights_test$month == '2', "February",
                                          ifelse(flights_test$month == '3', "March", 
                                                 ifelse(flights_test$month == '4', "April",
                                                        ifelse(flights_test$month == '5', "May",
                                                               ifelse(flights_test$month == '6', "June",
                                                                      ifelse(flights_test$month == '7', "July",
                                                                             ifelse(flights_test$month == '8', "August",
                                                                                    ifelse(flights_test$month == '9', "September",
                                                                                           ifelse(flights_test$month == '10', "October",
                                                                                                  ifelse(flights_test$month == '11', "November",
                                                                                                         ifelse(flights_test$month == '12', "December", ""))))))))))))
flights_test$months_long <- factor(flights_test$months_long, levels = month.name)

#Set long day names
flights_test$days_long <- ifelse(flights_test$dayofweek == '1', "Monday", 
                                 ifelse(flights_test$dayofweek == '2', "Tuesday",
                                        ifelse(flights_test$dayofweek == '3', "Wednesday", 
                                               ifelse(flights_test$dayofweek == '4', "Thursday",
                                                      ifelse(flights_test$dayofweek == '5', "Friday",
                                                             ifelse(flights_test$dayofweek == '6', "Saturday",
                                                                    ifelse(flights_test$dayofweek == '7', "Sunday", "")))))))
flights_test$days_long <- factor(flights_test$days_long, levels = c("Monday","Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"))

#Set route
flights_test$route = paste(flights_test$origin,"->",flights_test$dest)
