theme <- bslib::bs_theme(bg = "#6c757d", fg = "white", primary = "orange")

library(ggplot2)

ui <- fluidPage(
  theme = theme,
  titlePanel("A themed plot"),
  plotOutput("plot"),
)

server <- function(input, output, session) {
  thematic::thematic_shiny()
  
  output$plot <- renderPlot({
    ggplot(mtcars, aes(wt, mpg)) +
      geom_point() +
      geom_smooth()
  }, res = 96)
}

shinyApp(ui, server)