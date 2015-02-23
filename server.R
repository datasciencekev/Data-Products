library(shiny)
data(mtcars)

model <- lm(mpg~wt, data = mtcars)

shinyServer(
  function(input, output) {
    output$weightOut <- renderText(input$weight)
    output$mpgOut <- renderText(predict(model, data.frame(wt=input$weight/1000)))
    }
)