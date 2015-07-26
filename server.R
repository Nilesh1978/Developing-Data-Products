# Developing Data Products Project
library(shiny)

server = function(input, output, session) ({
    output$gimg <- renderUI({
	if (input$gender== "male") 
	{
		img(src = "male.png", height = (as.integer(input$height)*10/7), width = (as.integer(input$weight)*10/7))
	}
	else
	{
		img(src = "female.png", height = as.integer(input$height), width = as.integer(input$weight))
	}
		
    })
	x <- reactive({round(as.numeric(input$weight/(input$height/100)^2),0)})
	
	output$bmi <- renderText({x()})
			
	output$text3 <- renderText({
			str1 <- paste("Hi")
			str2 <- paste(input$name)
			str3 <- paste("Your BMI is")	
			input$goButton
			HTML(isolate(paste(str1, str2,str3)))
	
	})
	
  })
 
