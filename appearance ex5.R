ui <- fluidPage(
  theme = bslib::bs_theme(bootswatch = "darkly"),
  sidebarLayout(
    sidebarPanel(
      textInput("txt", "Text input:", placeholder="text here"),
      sliderInput("slider", "Slider input:", 1, 100, 30)
    ),
    mainPanel(
      h1(paste0("Theme: darkly")),
      h2("Header 2"),
      textOutput("textValue"),
      textOutput("sliderValue")
    )
  )
)

server <- function(input, output, session) {
  output$textValue <- renderText({
    paste("Text value is ", input$txt)
  })
  output$sliderValue <- renderText({
    paste("Slider value is ", input$slider) 
  })
}

shinyApp(ui, server)