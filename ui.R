###########################################################################################
# Name:        Abiyu Giday                                                                # 
# Date:        April 23, 2016                                                             #
# What:        Switft key like word prediction app for a Capstone project - JHU/Coursera  #
# Description: ui.R is a user interface for shiny that builds the user interface          #
#              including search space, search button and tabs for application guide, how  #
#              documentations.                                                            # 
#                                                                                         #
##########################################################################################
library(shiny)
library(shinythemes)

shinyUI(
     fluidPage(theme=shinytheme("united"),
          # Global style setting #
          style = "padding-top: 10px; padding-bottom: 50px; font-family: times new roman;",
          
          navbarPage(
            
            title = "Statstical English Word Predictor App",
            position = "static-top",
            
            #Menu 1#
            #titlePanel("Statstical Word Predictor App"), 
              # icon = icon("map-marker"),
            
        sidebarLayout(
             sidebarPanel(
                 textInput(inputId = "text", label = "Enter sentence:", value = ""),
                     submitButton(text = "submit") 
      
                        ),
    mainPanel(
      h3("The predicted word..."),
      textOutput('text')
    )   
  )
 ),



# Menu 2 #
tabPanel("App Documentation",
         #icon = icon("life-saver"),
         navlistPanel(
           #"User Guide",
          tabPanel("How to",
                   h1("Basic Usage"),
                   p("The use of capital, small or the combination English letters is permitted - example Car or CAr or caR - will all result a search for 'car'"),
                   p("Using a blank space before and or after the word matter. Look at the examples below. For best practice type the word followed by space then click on 'submit' button."),
                   p("The user can just type the word or use a regular expression for more precise search of the word as used in naturally spoken English. Here are some examples:"),
                   br(),
                   p("1. 'car '    -  the word 'car ' followed by pace returns 'and' - 'the' - 'with'"),
                   br(),
                   p("2. 'car'     -  the word 'car' without space before  and after will return 'and' - 'care' - 'the'"),
                   br(),
                   p("3. '^fox '   -  the word following 'fox', when 'fox' is the start of a sentence"),
                   br(),
                   p("4. ' dog '   -  the word 'dog' in between spaces ' dog ' predict words when 'dog is in the middle of a sentence."),
                   br(),
                   p("5. 'the car '-  the words result in a word that follows the two words.") 
                   
           ), 
           tabPanel("Application guide",
                   h1("Application usage rules."),
                   p("The English word predictor app uses statistic to predict a word/sentence usage in conversational English today.For example the words 'I love' are likely to be followed with a 'you' than the word 'tree', the app uses statistics to rate the most frequent usage of a  words and predict the following word."),
                   p("The App displays 3 potentially words following the one that is typed in the search space."),
                   p("Spaces between words matter, entering 'car' or ' car' and ' car ' could result in different predicted words, because database is built on words as used in naturally spoken english."),
                   p("This app uses trigram (three words), bigram(two words) and unigram(one word) to build the database, thus the user is limited to searching using 1 or 2"),
                   p("The user can only search for words with more than 2 characters. ex: to, of, it  or numbers will return in Not Available(NA)."),
                   p("The use of capital letter or small letter or the combination is permitted - example Fox or fOx or foX - will result search for fox.")
           ),
           tabPanel("About",
                    h1("About the Application"),
                    p("This app is developed for a Capstone project in a Data Science specialization for John Hopkins University Bloomberg School of Public Health - on Coursera."),
                    p("The app is developed with shiny an R package for web frame work and R statistical programming language." ),
                    p("April 23, 2016"),
                    p("[contact](http://abiyu.github.io)"),
                    p("Icons from http://fontawesome.io/icons/")
                    
           )
         )
      )
     )
)

