---
title: "Airport Dashboard"
output:
  flexdashboard::flex_dashboard:
    orientation: columns
    vertical_layout: fill
---
```{r setup, include=FALSE}
list.of.packages <- c("ggplot2", "flexdashboard", "ggmap", "maps", "mapdata", "reshape2", "stringr", "scales", "plotly")
new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[,"Package"])]
if(length(new.packages)) install.packages(new.packages)
library(flexdashboard)
library(ggplot2)
library(ggmap)
library(maps)
library(mapdata)
library(reshape2)
library(stringr)
library(scales)
library(plotly)
```
Volume
=======================================================================
Column {.tabset}
-----------------------------------------------------------------------
### Top 25 US Airports by Departure Volume
```{r}
airports <- read.csv("https://raw.githubusercontent.com/jpatokal/openflights/master/data/airports.dat", header = FALSE)
colnames(airports) <- c("ID", "name", "city", "country", "IATA_FAA", "ICAO", "lat", "long", "altitude", "timezone", "DST")
busydep <- read.csv("https://raw.githubusercontent.com/r-hopper/W205-Final-Project/master/flight_app/final_csv/top25airportsdep.csv")
busyarr <- read.csv("https://raw.githubusercontent.com/r-hopper/W205-Final-Project/master/flight_app/final_csv/top25airportsarr.csv")
years <- c(colnames(busydep)[3: ncol(busydep)])
usairports <- subset(airports, country == "United States")
busydepairports <- merge(busydep, usairports, by.x=c("Origin"), by.y=c("IATA_FAA"))
busydepairports$meanvol <- rowMeans(busydep[, years], na.rm = T)
usmap <- get_map(location = "United States", zoom=4, maptype="terrain",
                 source = "google", color = "color")
airportmapdep <- ggmap(usmap) + geom_point(aes(x = long, y=lat, size=meanvol, color = Origin), data=busydepairports, alpha = 1.0) +
  theme(legend.position = "none", axis.title = element_blank(), axis.text = element_blank(), axis.line = element_blank())
airportmapdep
```
### Top 25 US Airports by Arrival Volume
```{r}
busyarrairports <- merge(busyarr, usairports, by.x=c("Dest"), by.y=c("IATA_FAA"))
years = c(colnames(busyarr)[3: ncol(busyarr)])
busyarrairports$meanvol <- rowMeans(busyarr[, years], na.rm = T)
usmap <- get_map(location = "United States", zoom=4, maptype="terrain",
                 source = "google", color = "color")
airportmaparr <- ggmap(usmap) + geom_point(aes(x = long, y=lat, size=meanvol, color = Dest), data=busyarrairports, alpha = 1.0) +
  theme(legend.position = "none", axis.title = element_blank(), axis.text = element_blank(), axis.line = element_blank())
airportmaparr
```
Column {data-width=500}
-----------------------------------------------------------------------
### Average Annual Departure Volume
```{r}
dep <- busydep[, 2:ncol(busydep)]
deptimeseries1 <- melt(dep, id.vars="Origin", value.name = "value", variable.name = "Year")
deptimeseries1$Year<- substr(deptimeseries1$Year, 2,5)
deptimeseries <- ggplot(data=deptimeseries1, aes(x=Year, y=value, group = Origin, color = Origin)) + geom_line() + geom_point(size=1, shape = 21, fill = "white") + labs(x="Year", y= "Annual Departure Volume") + scale_y_continuous(labels = comma) + theme(axis.text.x=element_text(angle=90, hjust=1))
deptimeseries
ggplotly(deptimeseries)
```
### Average Annual Arrival Volume
```{r}
arr <- busyarr[, 2:ncol(busyarr)]
arrtimeseries1 <- melt(arr, id.vars="Dest", value.name = "value", variable.name = "Year")
arrtimeseries1$Year<- substr(arrtimeseries1$Year, 2,5)
arrtimeseries <- ggplot(data=arrtimeseries1, aes(x=Year, y=value, group = Dest, color = Dest)) + geom_line() + geom_point(size=1, shape = 21, fill = "white") + labs(x="Year", y= "Annual Arrival Volume") + scale_y_continuous(labels = comma) + theme(axis.text.x=element_text(angle=90, hjust=1))
arrtimeseries
ggplotly(arrtimeseries)
```
Delay
=======================================================================
Column {.tabset}
-----------------------------------------------------------------------
### Airports with Most Delays
```{r}
```
### Airports with Most Long Delays (>60min)
```{r}
```
Column {data-width=500}
-----------------------------------------------------------------------
### Most Frequent Cause of Delay
```{r}
```
### Worst Weekday Delays
```{r}
```
Airports chosen by most departure volume
Weather Metrics
=======================================================================
Column
-----------------------------------------------------------------------
### Annual Days with Precipitation
```{r}
precip_days <- read.table("https://raw.githubusercontent.com/r-hopper/W205-Final-Project/master/flight_app/final_csv/Q1_precip_days_ann.tsv", sep = '\t', header = FALSE)
colnames(precip_days) <- c("Origin", "Annual_days")
precip_airports <- merge(precip_days, usairports, by.x=c("Origin"), by.y=c("IATA_FAA"))
airportmap_precip <- ggmap(usmap) + geom_point(aes(x = long, y=lat, size=Annual_days, color = Origin), data=precip_airports, alpha = 1.0) +
  theme(legend.position = "none", axis.title = element_blank(), axis.text = element_blank(), axis.line = element_blank())
airportmap_precip
```
Column {data-width=500}
-----------------------------------------------------------------------
### Likelihood of Weather Delays
```{r}
likelihood_monthly <- read.table("https://raw.githubusercontent.com/r-hopper/W205-Final-Project/master/flight_app/final_csv/Q2_likelihood_month.tsv", sep = '\t', header = FALSE)
colnames(likelihood_monthly) <- c("Origin", "January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December")
likelihood_melt <- melt(likelihood_monthly, id="Origin", value.name = "value", variable.name = "Month")
likelihood <- ggplot(data=likelihood_melt, aes(x=Month, y=value, group = Origin, color = Origin)) + geom_line() + geom_point(size=1, shape = 21, fill = "white") + labs(x="Month", y= "Percentage of Flights Delayed by Weather") + scale_y_continuous(labels = comma) + theme(axis.text.x=element_text(angle=90, hjust=1))
likelihood
ggplotly(likelihood)
```
### Likelihood of Delay due to Depth of Precipitation
```{r}
likelihood_depth <- read.table("https://raw.githubusercontent.com/r-hopper/W205-Final-Project/master/flight_app/final_csv/Q3_lilkelihood_based_on_depth.tsv", sep = '\t', header = FALSE)
colnames(likelihood_depth) <- c("Origin", "0 in", "1/4 in", "1/2 in", "1 in", "1.5 in", "2 in", "3 in", "4 in")
likelihood_depth_melt <- melt(likelihood_depth, id = "Origin", value.name = "likelihood", variable.name = "depth")
likelihood_D <- ggplot(data=likelihood_depth_melt, aes(x=depth, y=likelihood, group = Origin, color = Origin)) + geom_line() + geom_point(size=1, shape = 21, fill = "white") + labs(x="Depth of Rainfall", y= "Likelihood of Delay") + scale_y_continuous(labels = comma) + theme(axis.text.x=element_text(angle=90, hjust=1))
likelihood_D
ggplotly(likelihood_D)
```
