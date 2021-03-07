library(shiny)
library(shinythemes)

ui = fluidPage(theme = shinytheme("united"),
               titlePanel("CHAPTER 5: Continuous Random Variables and Probability Distributions"),
               
               #withMathJax(),
               #tags$div(HTML("
               #              MathJax.Hub.Config({
               #              tex2jax: {inlineMath: [['$','$'], ['\(','\)']]}
               #              });
               #              ")),
               
               navbarPage("SECTION:",
                          tabPanel("5.1",
                                   fluidRow(column(width = 1),
                                            column(
                                              h4(p("Continuous Random Variables - The Uniform Distribution",
                                                   style = "color:black;text-align:center")),
                                              width = 10,style = "background-color:lavender;border-radius:10px")),
                                   br(),
                                   fluidRow(column(
                                            p("In probability and statistics we define $X$ as a random variable. $x$ is the specific
                                              value of the random variable. We define the", strong("Cumulative distribution function"),
                                              ", $F(x)$ as:"),
                                            
                                            withMathJax(),
                                              p('$$F(x) = P(X \\leq x)$$',style = "color:black;border:1px solid black;background-color:white"),
                                            
                                            p("i.e. $F(x)$ is the probability that $X$ does not exceed the value $x$. We can use the cumulative
                                              distribution function to obtain the probability that a value lies in a particular range. To obtain
                                              this we find the difference between the cumulative probability at the upper end of the range and 
                                              the cumulative probability at the lower end of the range. Thus:"),
                                            
                                              p('$$P(a < X < b) = F(b) - F(a)$$',style = "color:black;border:1px solid black;background-color:white"),
                                            
                                            p("with $a < b$."),
                                            
                                            width = 11
                                            ))))
               )

server = function(input,output) {
  
}

shinyApp(server = server,ui = ui)