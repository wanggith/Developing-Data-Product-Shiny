#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(ggplot2)
library(UsingR)
dataset <- fat

shinyUI(pageWithSidebar(
        
        headerPanel('Predict Your Body Fat'),

        sidebarPanel(
                h3('Plot the sample data'),
                selectInput('x', 'X', names(dataset)[-1], names(dataset)[6]),
                selectInput('y', 'Y', names(dataset)[-1], names(dataset)[2]),
                checkboxInput('jitter', 'Jitter'),
                checkboxInput('smooth', 'Smooth'),
                h3("Now, let's predict your body fat"),
                numericInput('wt', 'Enter the weight in lbs', 120, min = 50, max = 400, step = 1),
                numericInput('ht', 'Enter the height in inches', 70, min = 20, max = 100, step = 0.5)
        ),

        mainPanel(
                h3('Introductory of This Shiny App'),
                p('This application is based on the UsingR body fat data set, which contains many physical measurements of 252 males. More detailed information about this data set are available at:'),
                a('http://127.0.0.1:22444/library/UsingR/html/fat.html'),
                h3('How to use this app'),
                p('On the left sidebar panel, you can choose variables for the x-axis and y-axis. You can also include jitter and smooth feature in the plot. To predict a percent body fat, you need to enter weight in pounds and height in inches. The BMI value and percent body fat will show on the right main panel'),
                plotOutput('plot'),
                h3('Results of prediction'),
                h4('You have entered weight'),
                verbatimTextOutput('weightinput'),
                h4('You have entered height'),
                verbatimTextOutput('heightinput'),
                h4('which resulted in a BMI (body mass index)'),
                verbatimTextOutput('bmi'),
                h4('Prediction of your percent body fat'),
                verbatimTextOutput('bf')
        )
))
