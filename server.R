library(shiny)
library(shinydashboard)

shinyServer(function(input, output) {
    output$ui_item1_output <- renderPlot({
        #読み込み
        source('./item1/server_item1.R', local = TRUE)
        server_item1_result <- server_item1_action_func()
        server_item1_origin_number <- server_item1_result[[1]]
        server_item1_input <- server_item1_result[[2]]
        withProgress(message = 'Making plot...', value = 0, {
            for ( i in 1:server_item1_input) {
                server_item1_origin_number <- server_item1_origin_number + i
            }
            incProgress(1/server_item1_input, detail = paste("Now generation: ", i))
        })
        plot(server_item1_origin_number)
    })
    output$ui_item2_output <- renderPlot({
        #読み込み
        source('./item2/server_item2.R', local = TRUE)
        server_item2_result <- server_item2_action_func()
        server_item2_origin_number <- server_item2_result[[1]]
        server_item2_input <- server_item2_result[[2]]
        withProgress(message = 'Making plot...', value = 0, {
            for ( i in 1:server_item2_input) {
                server_item2_origin_number <- server_item2_origin_number + i
            }
            incProgress(1/server_item2_input, detail = paste("Now generation: ", i))
        })
        plot(server_item2_origin_number)
    })
})