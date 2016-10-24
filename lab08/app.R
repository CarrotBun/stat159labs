#You will plot scatter plots of sales vs different advertising 
#channels. The plot displayed will be configured by 
#the selection of items in a dropdown. 

#To elaborate, Your ShinyDoc will have a dropdown 
#with a list of 3 options - TV, Radio and newspaper as 
#an input element. Your output will be a scatter plot 
#between sales and the input option chosen from the dropdown.

library(shiny)
data = read.csv("Advertising.csv")

ui <- fluidPage(
  headerPanel('Choose an advertising budget.'),
  sidebarLayout(
    sidebarPanel(
      selectInput('xcol', 'Advertising Channel', choices = c("TV", "Radio", "Newspaper"))),
    mainPanel(
      plotOutput('sales_plot')
    )
  )
)


server <- function(input, output) {
  selectedData <- reactive({
    data[ ,c(input$xcol, "Sales")]
  })
  
  output$sales_plot <- renderPlot({
    plot(selectedData(),
         col = blues9,
         pch = 20, cex = 2,
         main = "Relationship to Sales")
  }, height = 500, width = 600)
  
}

shinyApp(ui = ui, server = server)