 shinyUI(pageWithSidebar(
     headerPanel("Relationship between stats of Hall of Fame caliber baseball players"),
     sidebarPanel(
         h4("Select varaibles to plot:"),
         selectInput("var1", "X Variable:",
                            c( "Games Played" = "games",
                               "Home Runs" = "HR", 
                               "Strikeouts" = "SO",
                               "Hits" = "hits",
                               "Seasons" = "seasons",
                               "Batting Average" = "BA")),
         selectInput("var2", "Y Variable:",
                     c( "Games Played" = "games",
                        "Home Runs" = "HR", 
                        "Strikeouts" = "SO",
                        "Hits" = "hits",
                        "Seasons" = "seasons",
                        "Batting Average" = "BA"))
         ),
     mainPanel(
         plotOutput("plot")
         )
     ))