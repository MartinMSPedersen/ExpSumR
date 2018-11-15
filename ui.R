library(shiny)

shinyUI(fluidPage(
  titlePanel("Exponential Sums"),
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
    mainPanel(
      plotOutput("expPlot")
    )
  )
))

