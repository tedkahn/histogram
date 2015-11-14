library(shiny)
library(ggplot2)
library(Cairo)   # For nicer ggplot2 output when deployed on Linux
library(UsingR)
library(ggthemes)

source('helper.R')
shinyServer(
     function(input, output) {
          output$myHist <- renderPlot({
               xLabel= 'Daily minimum temperature in Woodstock Vermont 1980-1985.'
               bin <- input$bin
               ggplot(myData, aes(x= myData$X.coldvermont., ..density..)) + 
                    geom_histogram(binwidth= bin, color= 'black', fill= 'lightblue') + 
                    geom_density(fill= NA, color= 'red', size= 1.25) +
                    labs(x= xLabel) +
                    theme_classic()
                    })
     }
)
