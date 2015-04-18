library(shiny) 
shinyUI(pageWithSidebar( 
    headerPanel("BMI (Body Mass Index) Calculator"), 
    
  sidebarPanel( 
    sliderInput('height', 'Enter your height in metres',value = 1.8, min = .5, max = 2.5, step = 0.01,),
    sliderInput('weight', 'Enter your weight in kilograms',value = 100, min = 25, max = 200, step = 1,) ,
    submitButton('Submit'),
    h5("This application will calculate Body Mass Index for the user based on entering Height (metres) and
weight (kg) through the slider controls above."),
    h5("Once the Submit button is hit the BMI calculation and relevant categorisation will be output to the right.")
    
    ), 
  
  mainPanel( 
    h5('The formula for calculating BMI is as follows:'),
    withMathJax(),
    h1('$$BMI = \\frac{weight(kg)}{height(m)^2}$$'),
    h3('Current Settings:'),
    h4('     Height ='),
    verbatimTextOutput("inputHeight"),
    h4('     Weight ='),
    verbatimTextOutput("inputWeight"),
    h3('Your BMI is:'),
    verbatimTextOutput("BMI"),
    h4('Your BMI Category is:'),
    verbatimTextOutput("BMI_Category"),
    h5("For further information", a("Click Here", href="http://en.wikipedia.org/wiki/Body_mass_index"))
    
  ) 
)) 
