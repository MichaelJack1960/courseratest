library(shiny)


  


pregnancyChance <- function(sex,times, protection){
  if ((sex == "Female") && (protection == "No")){
    result <-  (times * .05 * 100)}
  else { result <- 'No chance'}
  return(result)
}




shinyServer(
  function(input, output){
    
  output$oid1 <- renderPrint({input$sex})
  output$oid2 <- renderPrint({input$protection})
  output$oid3 <- renderPrint({input$times})
  output$odate <- renderPrint({input$date})
  output$prediction <- renderPrint({pregnancyChance(input$sex, input$times ,input$protection)})
  
  }
  
  )
