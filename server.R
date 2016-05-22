#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(ggplot2)
library(UsingR)

shinyServer(function(input, output) {
        dataset <- fat
        mod_fit <- lm(body.fat ~ BMI, data = dataset)
        slope <- coef(mod_fit)[2]
        intercept <- coef(mod_fit)[1]
        names(intercept) <- "Body Fat %"
        pred <- function(bmi) {intercept + bmi * slope}
        
        output$plot <- renderPlot({
                p <- ggplot(dataset, aes_string(x=input$x, y=input$y)) + geom_point(colour="#000099")
                if (input$jitter)
                        p <- p + geom_jitter()
                if (input$smooth)
                        p <- p + geom_smooth(method = "lm", formula = y ~ x)
                print(p)
        })
        output$weightinput <- renderPrint(input$wt)
        output$heightinput <- renderPrint(input$ht)
        output$bmi <- renderPrint((input$wt*703)/input$ht^2)
        output$bf <- renderPrint(pred((input$wt*703)/input$ht^2))

})

