library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Emporium 2014"),
  
  fluidRow(
    
    column(3,
           selectInput("select", label = h3("Primera Categoria", style ="color:#297418;"), 
                       choices =  vec_aux[3:40]), tableOutput("enero")),
    column(3,
           selectInput("select2", label = h3("Segunda Categoria", style = "color:#dd21d5;"), 
                       choices =vec_aux[3:40]), tableOutput("enero2"))
  ),
    
    
  
  titlePanel("Enero"),
  sidebarLayout(
    sidebarPanel( "Resumen Enero",
                  style = "color:#2183dd;",
                  tableOutput("confidenceenero"),
                  tableOutput("liftenero")
    ),
    mainPanel()
  ),
  sidebarLayout(
    sidebarPanel( "Productos más vendidos",
                  textOutput("tablanamecat1enero"),
                  style = "color:#297418;",
                  textOutput("tablaprobcat1enero"),
                  textOutput("tablanamecat2enero"),
                  textOutput("tablaprobcat2enero"),
                  textOutput("tablanamecat3enero"),
                  textOutput("tablaprobcat3enero"),
                  textOutput("tablanamecat4enero"),
                  textOutput("tablaprobcat4enero"),
                  textOutput("tablanamecat5enero"),
                  textOutput("tablaprobcat5enero")
                  ),
    sidebarPanel("Productos más vendidos",
                 textOutput("tabla1namecat1enero"),
                 style = "color:#dd21d5;",
                 textOutput("tabla1probcat1enero"),
                 textOutput("tabla1namecat2enero"),
                 textOutput("tabla1probcat2enero"),
                 textOutput("tabla1namecat3enero"),
                 textOutput("tabla1probcat3enero"),
                 textOutput("tabla1namecat4enero"),
                 textOutput("tabla1probcat4enero"),
                 textOutput("tabla1namecat5enero"),
                 textOutput("tabla1probcat5enero")
                 )
  )

 
))
