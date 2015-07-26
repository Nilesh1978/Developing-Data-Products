# Developing Data Products Project
library(shiny)
fluidPage(
headerPanel("Your BMI"),
sidebarPanel(
textInput(inputId="name", label = "First Name"),
radioButtons('gender', 'Gender', c("Male" = "male", "Female"="female"), selected = "male", inline = TRUE),
sliderInput('age', 'Select your Age',value = 25, min = 20, max = 100, step = 1,),
sliderInput('weight', 'Enter your Weight in Kgs',value = 65, min = 30, max = 200, step = 1,),
sliderInput('height', 'Enter your Height in centimetres',value = 165, min = 40, max = 210, step = 1,),
actionButton("goButton", "Go!")
),


mainPanel(
tabsetPanel(type = "tabs", 
                    tabPanel("Result", 
						
						fluidRow(
								  column(3, align="center",
									uiOutput('gimg'),
									br(),
									textOutput('text3'),
									textOutput('bmi')
								  ),
								  column(10, align="right",
									tags$img(height = 200, width = 200, src = "table.png")
									
								  )
								  
								)),
						
						#uiOutput('gimg',class = 'centerAlign'),
						#tags$img(height = 200, width = 200, src = "table.png",class = 'centerAlign')),
						#br(),
						#p('Output text1'), 
												
						#tags$img(height = 200, width = 200, src = "table.png",class = 'centerAlign')),
                    
                    tabPanel("Chart",tags$img(height = 500, width = 500, src = "bmi_chart.png"))
					))

#column(3,
#uiOutput('gimg')),
#p('Output text1'),
#textOutput('bmi'),
#column(3,
#tags$img(height = 200,
#width = 200,
#src = "bmi_chart.png") )
)
