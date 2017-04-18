library(shiny)

shinyUI(pageWithSidebar(
  headerPanel('Flight Data'),
  
  # make sidebar with user inputs
  sidebarPanel(
    selectInput('origin_select', 
                label = 'Origin', 
                choices = sort(flights_test$origin), 
                selected = 'SFO'),
    
    selectInput('dest_select', 
                label = 'Destination',
                choices = sort(flights_test$dest),
                selected = 'LAX'),
    
    selectInput('month_select', 
                label = 'Month', 
                choices = flights_test$months_long, 
                selected = 'January'),
    
    selectInput('day_select', 
                label = 'Day of Week', 
                choices = flights_test$days_long, 
                selected = 'Monday')
  ),
  
  # output plots to main panel with tabs to select type
  mainPanel(
    tabsetPanel(type = 'tabs',
                tabPanel('Departures', plotOutput('airportmapdep'), plotOutput('deptimeseries')),
                tabPanel('Arrivals', plotOutput('airportmaparr'), plotOutput('arrtimeseries'))
                #tabPanel('Precipitation', plotOutput('typePlot'))
    )
    
    # show map in main panel
    #plotOutput('mapPlot')
  )
))
