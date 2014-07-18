library(shiny)
shinyUI(pageWithSidebar(
  #PregnancyChance
  headerPanel("Estimate chance of getting pregnant"),
  sidebarPanel(
    h3('Fill in the formula:'),
    selectInput('sex', 'Enter your sex:',
        choices = c("Female","Male", "Unknown")),
    selectInput('protection', 'Do you protect yourself:',
                choices = c("Yes","No")),
    numericInput("times", "How often do you have sex a week? Enter a number between 0 and 7:", 0, min = 0, max = 7, step = 1),
    dateInput("date",  "Date:"),
    submitButton('Submit')
    ),
  mainPanel(
    h4('Your sex is:'),
       verbatimTextOutput("oid1"),
    h4('Protection:'),
       verbatimTextOutput("oid2"),
    h4('Times you have sex (per week):'),
       verbatimTextOutput("oid3"),
    h2('And your chance (in percent) of getting pregnant is:'),
        verbatimTextOutput("prediction"),
    h6('Date of estimate:'),
    verbatimTextOutput("odate"),
    h6('-----------------------------'),
    h5('Estimate is based on many years of experiments and well known facts. The estimate is "an average" estimate and
       under the assumption that "all other things beeing equal"
       ')
    
       
    )
  ))