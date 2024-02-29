library(shiny)
library(semantic.dashboard)
library(DT)

ui <- dashboardPage(
  dashboardHeader(title = "Exercise 1"),
  dashboardSidebar(),
  dashboardBody(
    textInput("name", "What's your name?"),
    textOutput("greeting")
  ),
)

server <- function(input, output) {
  output$greeting <- renderText({
    paste0("Hello ", input$name)
  })
}

shinyApp(ui, server)