library(shiny)
library(markdown)
library(UsingR)

shinyUI(pageWithSidebar(
     
     headerPanel("Histogram Shape and the Kernel Density Function"),
     sidebarPanel(
          sliderInput('bin', 'Specify the bin width:',value = 5, min = 1, max = 10, step = 1),
          includeMarkdown("instructions.md")
     ),
     mainPanel(
          tabsetPanel(type = "tabs", 
               tabPanel("Histogram", plotOutput('myHist')), 
               tabPanel("Explanation",  includeMarkdown("explaination.md")) 
          )
     )
))

