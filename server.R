 library(shiny)
 library(UsingR)
 library(ggplot2)
 
 data(hall.fame)
 
 shinyServer(function(input, output, session){
     
     baseballData <- reactive({
         hall.fame[, c(input$var1, input$var2)]
     })
     
     
     output$plot <- renderPlot({
         p <- ggplot(baseballData(), aes_string(x=input$var1, y = input$var2))+
             geom_point()+
             geom_smooth()
         
         print(p)
     })
     
     })