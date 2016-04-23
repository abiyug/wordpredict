###########################################################################################
# Name:        Abiyu Giday                                                                # 
# Date:        April 23, 2016                                                             #
# What:        Switft key like word prediction app for a Capstone project - JHU/Coursera  #
# Description: Server.R file that queires data.rds database and retruns 3 words           #
#              following the one enetered by user.                                        #
###########################################################################################
library(shiny)
library(stringr)
library(dplyr)

df <- readRDS("data/data.rds")        
df1 <- tbl_df(df)

shinyServer(
    function(input, output) {
   
           output$text <- renderText({head(df1$words[grep(tolower(input$text), df1$words)], 3) %>% word(3, -1)}) 
                                 }
    
             )
