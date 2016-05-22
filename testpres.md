Course Preject Presentation
========================================================
author: Fan Wang
date: Sun May 22 02:45:46 2016
autosize: true

Introduction
========================================================

### This presentation is the second part of the course project for Coursera Developing data product course. 
### The purpose of this presentation is to pitch the shiny app created in the first part of the project. 
### I am using RStudio to create the presentation. It is also published to Rpubs.

About the Shiny App
========================================================
### A simple shiny application has been created and deployed to shiny server. 
### Link to the app: https://fanwang.shinyapps.io/bodyfat/ 
### R codes are available on Github at: https://github.com/wanggith/Developing-Data-Product-Shiny
### You can use this app to:
- Explore the body fat dataset collected from 252 males in the age range of 22 thru 81. 
- Choose the variable (age, weight, height ..) for the x-axis and y-axis to be included in the plot. 
- Input your weight and height. This application will calculate your BMI using formula {(weight * 703) / height ^ 2}. It also outputs your predicted body fat based on the slope and intercept values from the liner regression model.

Body Fat Dataset
========================================================
### The data used in this application come from UsingR package. 
### It consists 252 observations on the following 19 variables:

```r
library(UsingR)
dim(fat)
```

```
[1] 252  19
```

```r
names(fat)
```

```
 [1] "case"          "body.fat"      "body.fat.siri" "density"      
 [5] "age"           "weight"        "height"        "BMI"          
 [9] "ffweight"      "neck"          "chest"         "abdomen"      
[13] "hip"           "thigh"         "knee"          "ankle"        
[17] "bicep"         "forearm"       "wrist"        
```
Note that we have removed the first variable "case" when creating the plot.

Slide With Plot
========================================================

![plot of chunk unnamed-chunk-2](testpres-figure/unnamed-chunk-2-1.png)
