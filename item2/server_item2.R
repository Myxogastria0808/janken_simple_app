#読み込み
source('./item2/server_item2_env.R', local = TRUE)

server_item2_action_func <- eventReactive(
        input$ui_item2_action,
        {
            server_item2_origin_number <- server_item2_origin()
            server_item2_input <- input$ui_item1_numericInput
            return(
                list(
                    server_item2_origin_number,
                    server_item2_input
                )
            )
        }
)