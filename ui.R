library(shiny)

shinyUI(
        pageWithSidebar(
                # Application title
                headerPanel("Women Height Prediction"),
                sidebarPanel(
                        numericInput("height", "Height (in)", 60, min = 50, max = 80, step = 2),
                        submitButton("Submit"),
                        p(" "),
                        h4("Instructions: "),
                        p("This is a simple Shiny application for prediction of Women height based on the women dataset (from the datasets library)."),
                        p("A linear model was created with weight as the outcome and height as the predictor."),
                        p("Enter the desired height, and click on Submit to check the predicted value based on the input.")
                ),
                mainPanel(
                        h3("Results of prediction"),
                        h4("Input value:"),
                        verbatimTextOutput("inputValue"),
                        h4("Weight prediction (lbs)"),
                        verbatimTextOutput("prediction")
                )
        )
)