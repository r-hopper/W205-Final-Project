##Test file cleaning and plots before implementing in global.R

#Load required libraries
install.packages("shiny")
library(shiny)

install.packages("ggplot2")
library(ggplot2)

install.packages("dplyr")
library(dplyr)

#Load data
flights_test = read.csv("flights_test.csv", na.strings= c("", " "))

#Change column names to lowercase
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
summary(as.factor(flights_test$months_long))
summary(as.factor(flights_test$month))

#Set long day names
flights_test$days_long <- ifelse(flights_test$dayofweek == '1', "Monday", 
                                   ifelse(flights_test$dayofweek == '2', "Tuesday",
                                          ifelse(flights_test$dayofweek == '3', "Wednesday", 
                                                 ifelse(flights_test$dayofweek == '4', "Thursday",
                                                        ifelse(flights_test$dayofweek == '5', "Friday",
                                                               ifelse(flights_test$dayofweek == '6', "Saturday",
                                                                      ifelse(flights_test$dayofweek == '7', "Sunday", "")))))))
#Set route
flights_test$route = paste(flights_test$origin,"->",flights_test$dest)
summary(as.factor(flights_test$route))


#Testing plot


subset_delay = filter(flights_test, 
                      origin=='LAX', 
                      dest=='SFO',
                      route == 'LAX -> SFO',
                      months_long=='May')          

medians = summarise(group_by(subset_delay, route), median(subset_delay$depdelayminutes, na.rm = T))
medians_sorted = sort(unlist(medians[2]))
delayTitle = paste("Median Departure Delay From", subset_delay$origin, "to", subset_delay$dest)

# make plot
p = ggplot(subset_delay, aes(x = reorder(route, depdelayminutes, na.rm = TRUE, FUN = median), y = depdelayminutes))
p + geom_boxplot(middle = medians_sorted, aes(fill = route)) +
  scale_fill_brewer(palette = "Set2", name = "Routes") +
  ylim(-50, 50) +
  xlab('') +
  ylab('Departure Delay (minutes)') +
  ggtitle(delayTitle) +
  theme_bw() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1),
        text = element_text(size = 16)) +
  theme(legend.position="none")
