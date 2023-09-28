library(shiny)
library(shinydashboard)

#読み込み
source('./item1/ui_item1.R', local = TRUE)
source('./item2/ui_item2.R', local = TRUE)

#heade
header <- dashboardHeader(title = 'Sample app')

#sidebar
sidebar <- dashboardSidebar(
    sidebarMenu(
        menuItem(
            'item1',
            tabName = 'ui_item1',
            icon = icon('ranking-star')
        ),
        menuItem(
            'item2',
            tabName = 'ui_item2',
            icon = icon('percent')
        )
    )
)

#body
body <- dashboardBody(
            tabItems(
                tabItem_item1,
                tabItem_item2
            )
)

#render
shinyUI(dashboardPage(header,sidebar,body,skin='blue'))