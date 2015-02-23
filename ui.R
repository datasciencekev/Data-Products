library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("MPG Predictor"),
  sidebarPanel(
    numericInput('weight', 'Car Weight (lbs)',value = 2500, min = 1500, max = 6000, step = 1)
    
  ),
  mainPanel(
    h5('You Entered'),
    textOutput('weightOut'),
    h5('Approximate MPG'),
    textOutput('mpgOut'),
    h5('Instructions'),
    p('Enter a vechicle weight in pounds, and the application will predict it\'s fuel economy in MPG, based on a linear model from the mtcars data set.'),
    p(' '),
    p('\"Simplicity is the ultimate sophistication.\" - Leonardo da Vinci'),
    p(' ')
    
    )
))