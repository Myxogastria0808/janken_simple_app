#読み込み
source('./item1/server_item1_env.R', local = TRUE)

server_item1_action_func <- eventReactive(
    input$ui_item1_action,
    {
        server_item1_origin_number <- server_item1_origin()
        server_item1_input <- input$ui_item1_numericInput
        return(
            list(
                server_item1_origin_number,
                server_item1_input
            )
        )
    }
)