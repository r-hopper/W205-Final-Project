library(shiny)

# show flight delays plot in main panel
#output$delayPlot = renderPlot({
  
  # get delay by route
  #subset_delay = filter(flights_test, 
                       # origin == input$origin_select, 
                      #  dest == input$dest_select,
                       # route == paste(input$origin_select, "_", input$dest_select),
                      #  month == input$month_select, 
                     #   day == input$day_select)          
  
#  medians = group_by(subset_delay, route) %&gt;% summarise(median(depdelayminutes, na.rm = T))
#  medians_sorted = sort(unlist(medians[2]))
#  delayTitle = paste("Median Departure Delay From", input$origin_select, "to", input$dest_select)
  
  # make plot
#  p = ggplot(subset_delay, aes(x = reorder(route, depdelayminutes, na.rm = TRUE, FUN = median), y = depdelayminutes))
#  p + geom_boxplot(middle = medians_sorted, aes(fill = route)) +
#    scale_fill_brewer(palette = "Set2", name = "Routes") +
#    ylim(-50, 50) +
#    xlab('') +
#    ylab('Departure Delay (minutes)') +
#    ggtitle(delayTitle) +
#    theme_bw() +
#    theme(axis.text.x = element_text(angle = 45, hjust = 1),
#          text = element_text(size = 16)) +
#    theme(legend.position="none")
#})



shinyServer(function(input, output) {
  
  output$airportmapdep <- renderPlot({
airportmapdep <- ggmap(usmap) + geom_point(aes(x = long, y=lat, size=meanvol, color = Origin), data=busydepairports, alpha = 1.0) +
  theme(legend.position = "none", axis.title = element_blank(), axis.text = element_blank(), 
        axis.line = element_blank())

})

output$deptimeseries <- renderPlot({
dep <- busydep[, 2:ncol(busydep)]
deptimeseries1 <- melt(dep, id.vars="Origin", value.name = "value", variable.name = "Year")
deptimeseries1$Year<- substr(deptimeseries1$Year, 2,5) 
deptimeseries <- ggplot(data=deptimeseries1, aes(x=Year, y=value, group = Origin, color = Origin)) + 
                            geom_line() + geom_point(size=1, shape = 21, fill = "white") + 
                            labs(x="Year", y= "Annual Departure Volume") + scale_y_continuous(labels = comma) + 
                            theme(axis.text.x=element_text(angle=90, hjust=1))
  })

output$airportmaparr <- renderPlot({
busyarrairports <- merge(busyarr, usairports, by.x=c("Dest"), by.y=c("IATA_FAA"))
years = c(colnames(busyarr)[3: ncol(busyarr)])
busyarrairports$meanvol <- rowMeans(busyarr[, years], na.rm = T)
usmap <- get_map(location = "United States", zoom=4, maptype="terrain",
                 source = "google", color = "color")
airportmaparr <- ggmap(usmap) + geom_point(aes(x = long, y=lat, size=meanvol, color = Dest), data=busyarrairports, alpha = 1.0) +
  theme(legend.position = "none", axis.title = element_blank(), axis.text = element_blank(), 
        axis.line = element_blank())
})

output$arrtimeseries <- renderPlot({
arr <- busyarr[, 2:ncol(busyarr)]
arrtimeseries1 <- melt(arr, id.vars="Dest", value.name = "value", variable.name = "Year")
arrtimeseries1$Year<- substr(arrtimeseries1$Year, 2,5) 
arrtimeseries <- ggplot(data=arrtimeseries1, aes(x=Year, y=value, group = Dest, color = Dest)) + 
  geom_line() + geom_point(size=1, shape = 21, fill = "white") + labs(x="Year", y= "Annual Arrival Volume") + 
  scale_y_continuous(labels = comma) + theme(axis.text.x=element_text(angle=90, hjust=1))
})


})

