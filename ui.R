
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(fluidPage(

  # Application title
  titlePanel("Exponential Sums"),

  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
      sliderInput("m",
                  "Month:",
                  min = 1,
                  max = 12,
                  value = 11)
    ,
    sliderInput("d",
                "Day:",
                min = 1,
                max = 31,
                value = 2)
    ,
    sliderInput("y",
              "Year:",
              min = 1,
              max = 99,
              value = 17)),

    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("distPlot")
    )
  )
))

