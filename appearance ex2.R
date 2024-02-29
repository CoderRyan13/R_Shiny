ui <- fluidPage(
  theme = bslib::bs_theme(bootswatch = "darkly"),
  sidebarLayout(
    sidebarPanel(
      textOutput("panel")
    ),
    mainPanel(
      tabsetPanel(
        id = "tabset",
        tabPanel("Import data", 
                 fileInput("file", "Data", buttonLabel = "Upload..."),
                 textInput("delim", "Delimiter (leave blank to guess)", ""),
                 numericInput("skip", "Rows to skip", 0, min = 0),
                 numericInput("rows", "Rows to preview", 10, min = 1)
        ),
        tabPanel("panel2", "Set parameters"),
        tabPanel("panel3", "Visualise results")
      )
    )
  )
)

server <- function(input, output, session) {
  output$panel <- renderText(
    paste("Current Panel: ", input$tabset)
  )
}

shinyApp(ui, server)