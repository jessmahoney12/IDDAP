library(shiny)
library(ggplot2)
library(dplyr)
library(readr)


#UI - interface of the app - layout and appearance
ui <- fluidPage(
  titlePanel("IDDAP"),
  sidebarLayout(sidebarPanel, mainPanel, position = c("left", "right"),
                fluid = TRUE)
  
  sidebarPanel(..., width = 4)
  
  mainPanel(..., width = 8)f),
    sidebarLayout(
      sidebarPanel(
        selectInput("var1", 
                  label = "gender",
                  choices = c('no selection', 'male', 'female')),
        selectInput("var2", 
                  label = "age",
                  choices = c('country', 'year', 'lifeExp','pop')),
        selectInput("var3", 
                  label = "sort by",
                  choices= c('follow up duration', 'antibiotic used', 'readmissions')),
    ),
    mainPanel(
              selectInput("var1", 
                          label = "gender",
                          choices = c('no selection', 'male', 'female')),
    )
  )
)
  
  # server- contains instructions needed for app
  server <- function(input, output) {
    output$plot1 <- renderPlot({
      # ggplot(alldat, aes_string(input$var1, input$var2, color = input$var3)) + geom_line()+ 
        theme(axis.text.x = element_text(angle = 45, hjust=1), 
              legend.position= 'none')
    })
  }
  
  #shinyapp - building the app
  shinyApp(ui = ui, server= server)
  