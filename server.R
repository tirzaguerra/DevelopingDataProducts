library(shiny)
library(datasets)
data(women)

modfit <- lm(weight ~ height, data = women)
predictWeight <- function(newvalue)
        predict(modfit, data.frame(height = newvalue))

shinyServer(
        function(input, output) {
                output$inputValue <- renderPrint({input$height})
                output$prediction <- renderPrint({
                        round((predictWeight(input$height))[[1]])
                })
        }
)
