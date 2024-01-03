#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

# Define server logic required to draw a histogram
function(input, output, session) {
  
  output$distPlot <- renderPlot({
    
    derby |>
      filter(condition == input$condition) |>
      ggplot(aes(x = speed)) + 
      geom_histogram(bins = input$bins) +
      labs(x = 'Speed',
           title = 'Histogram of speed of kentucky derby winners')
  })
}
