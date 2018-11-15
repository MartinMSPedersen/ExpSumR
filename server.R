library(shiny)

shinyServer(function(input, output) {

  output$expPlot <- renderPlot({

    library(numbers)
    library(ggplot2)
    
    lcm <- function(a,b,c) {
      return(LCM(LCM(a,b),c))
      
    }
    
    m <- input$m
    d <- input$d
    y <- input$y
    
    v <- 0
    N <- lcm(m,d,y)
    
    vs <- vector("complex",(N+1))
    
    for (n in 0:(min(1200,N))) {
      v <- v + exp(2i*pi*(n/m + n*n/d + n*n*n/y))
      vs[[n+1]] <- v
    }
    
    d <- data.frame(x = Re(vs), y = Im(vs))
    
    g <- ggplot(d) 
    g <- g + aes(x = x, y = y)
    g <- g + geom_path()
    g <- g + theme_void()
    g
  })

})
