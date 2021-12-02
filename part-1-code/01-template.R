library(shiny)
ui <- fluidPage()

server <- function(input, output) {}

shinyApp(ui = ui, server = server)



###---Tutorial Example 


ui<-fluidPage()
my_server<-function(input, output){}

shinyApp(ui=ui, server=server)


#Save objects to dsplay to output$ e.g.

# Use render*() function which creates the *type* of output
server<-function(input, output){
  output$hist<-renderPlot({
    my_title<-"100 random normal values"
    hist(rnorm(100),main=my_title)
  })
}

# Use input values with input$


###--- Shiny App

# Use render*() function which creates the *type* of output
server<-function(input, output){
  output$hist<-renderPlot({
    my_title<-"100 random normal values"
    hist(rnorm(100),main=my_title)})
}