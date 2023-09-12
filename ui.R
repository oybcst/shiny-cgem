library(shinydashboard)
library(leaflet)
library(RColorBrewer)
library(viridis)

dashboardPage(
  
  dashboardHeader(
    title = "CGEM-SCHISM Box Model"
  ),   

  #----Sidebar  
  dashboardSidebar(
    sidebarMenu(
      menuItem("CGEM variables",tabName = "cgem"),
      menuItem("Phytoplankton", tabName = "phyto"),
      menuItem("Stoichiometry",tabName = "stoich"),
      menuItem("Hydro",tabName = "hydro"),
      menuItem("Rates",tabName = "rates")
    )
  ),
  #----end Sidebar
  
  #--Dashboard  
  dashboardBody(
    #Makes the map and plot take 80% or 50% vertical height of browser window
    #tags$style(type = "text/css", "#map {height: calc(90vh) !important;}"),
    #tags$style(type = "text/css", "#map {timeplot: calc(50vh) !important;}"),
    
    #--Start all TabItem(s)
    tabItems(
      
      #--First tabItem is the map and plot
      tabItem(tabName="phyto",
              fluidRow(
                #1 columns
                column(width=12,box(width=NULL,solidHeader=TRUE,status="primary",plotOutput("A")))
                ),
              
              fluidRow(
                #2 columns
                h3("Light limitation factors, Growth and respiration"),
                column(width=6,box(width=NULL,solidHeader=TRUE,status="primary",plotOutput("lightlims"))),
                column(width=6,box(width=NULL,solidHeader=TRUE,status="primary",plotOutput("growresp")))
              ),
    
              fluidRow(
                #1 columns
                h3("Irradiance (PAR) at depth"),
                column(width=12,box(width=NULL,solidHeader=TRUE,status="primary",plotOutput("PAR")))
              ) 
              
      ),

            tabItem(tabName="cgem",
              
              fluidRow(
                #3 columns
                column(width=4,box(width=NULL,solidHeader=TRUE,status="primary",plotOutput("A1"))),
                column(width=4,box(width=NULL,solidHeader=TRUE,status="primary",plotOutput("Qn1"))),
                column(width=4,box(width=NULL,solidHeader=TRUE,status="primary",plotOutput("Qp1"))),
              ),
               fluidRow(
                 #2 columns
                 column(width=6,box(width=NULL,solidHeader=TRUE,status="primary",plotOutput("Z1"))),
                 column(width=6,box(width=NULL,solidHeader=TRUE,status="primary",plotOutput("Z2")))
               ),
              fluidRow(
                #4 columns
                column(width=3,box(width=NULL,solidHeader=TRUE,status="primary",plotOutput("NO3"))),
                column(width=3,box(width=NULL,solidHeader=TRUE,status="primary",plotOutput("NH4"))),
                column(width=3,box(width=NULL,solidHeader=TRUE,status="primary",plotOutput("PO4"))),
                column(width=3,box(width=NULL,solidHeader=TRUE,status="primary",plotOutput("Si")))
              ),
              fluidRow(
                #3 columns
                 column(width=4,box(width=NULL,solidHeader=TRUE,status="primary",plotOutput("O2"))),
                 column(width=4,box(width=NULL,solidHeader=TRUE,status="primary",plotOutput("DIC"))),
                 column(width=4,box(width=NULL,solidHeader=TRUE,status="primary",plotOutput("ALK")))
               )
              
              ),
      tabItem(tabName="stoich",
              fluidRow(
                #2 columns
                column(width=6,box(width=NULL,solidHeader=TRUE,status="primary",plotOutput("OM1A"))),
                column(width=6,box(width=NULL,solidHeader=TRUE,status="primary",plotOutput("OM2A")))
              ),
              fluidRow(
                 #4 columns
                 column(width=3,box(width=NULL,solidHeader=TRUE,status="primary",plotOutput("sx1A"))),
                 column(width=3,box(width=NULL,solidHeader=TRUE,status="primary",plotOutput("sy1A"))),
                 column(width=3,box(width=NULL,solidHeader=TRUE,status="primary",plotOutput("sx2A"))),
                 column(width=3,box(width=NULL,solidHeader=TRUE,status="primary",plotOutput("sy2A")))
               ),              
              fluidRow(
                 #2 columns
                 column(width=6,box(width=NULL,solidHeader=TRUE,status="primary",plotOutput("OM1Z"))),
                 column(width=6,box(width=NULL,solidHeader=TRUE,status="primary",plotOutput("OM2Z")))
               ),
               fluidRow(
                 #4 columns
                 column(width=3,box(width=NULL,solidHeader=TRUE,status="primary",plotOutput("sx1Z"))),
                 column(width=3,box(width=NULL,solidHeader=TRUE,status="primary",plotOutput("sy1Z"))),
                 column(width=3,box(width=NULL,solidHeader=TRUE,status="primary",plotOutput("sx2Z"))),
                 column(width=3,box(width=NULL,solidHeader=TRUE,status="primary",plotOutput("sy2Z")))
               )
      ), #End stoich tab
      tabItem(tabName="hydro",
              fluidRow(
                #1 columns
                column(width=6,box(width=NULL,solidHeader=TRUE,status="primary",plotOutput("S"))),
                column(width=6,box(width=NULL,solidHeader=TRUE,status="primary",plotOutput("T")))
              )
      ), #End hydro tab 
      
      tabItem(tabName="rates",
              
              fluidRow(
                #3 columns
                h3("Rates: Total(black), A(red), Z(blue), R(green), BC(yellow)"),
                column(width=3,box(width=NULL,solidHeader=TRUE,status="primary",plotOutput("RO2"))),
                column(width=3,box(width=NULL,solidHeader=TRUE,status="primary",plotOutput("RNO3"))),
                column(width=3,box(width=NULL,solidHeader=TRUE,status="primary",plotOutput("RNH4"))),
                column(width=3,box(width=NULL,solidHeader=TRUE,status="primary",plotOutput("RN2")))
              ),
              fluidRow(
                #4 columns
                column(width=3,box(width=NULL,solidHeader=TRUE,status="primary",plotOutput("RPO4"))),
                column(width=3,box(width=NULL,solidHeader=TRUE,status="primary",plotOutput("RDIC"))),
                column(width=3,box(width=NULL,solidHeader=TRUE,status="primary",plotOutput("RSi"))),
                column(width=3,box(width=NULL,solidHeader=TRUE,status="primary",plotOutput("RALK")))
              )
      )            
      
            
    ) #--End tab items   
    
  )#-- End dashboard Body
)#-- End dashboard Page

