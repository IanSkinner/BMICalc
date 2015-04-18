BMI <- function(height, weight) { weight / height^2}

BMI_Category <-function(bmivalue) {  
  
  ifelse(bmivalue<15,'Very severely underweight',
         ifelse(bmivalue<16.0,'Severely underweight' ,
                ifelse( bmivalue<18.5,'Underweight' ,
                        ifelse(bmivalue<25,'Normal (healthy weight)',
                               ifelse(bmivalue<30,'Overweight' ,
                                      ifelse(bmivalue<35,'Obese Class I (Moderately obese)' ,
                                             ifelse(bmivalue<40,'Obese Class II (Severely obese)',
  'Obese Class III (Very severely obese)' ))))))) 
  
}
  

shinyServer(
  function(input,output){
    output$inputHeight <- renderPrint({input$height})
    output$inputWeight <- renderPrint({input$weight})
    output$BMI <- renderPrint({BMI(input$height,input$weight)})
    output$BMI_Category <- renderPrint({BMI_Category(BMI(input$height,input$weight))})
  }
  )