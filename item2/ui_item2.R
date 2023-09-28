tabItem_item2 <- tabItem(
    tabName = 'ui_item2',
    box(
        p('item2 result'),
        plotOutput(
            outputId = 'ui_item2_output'
        )
    ),
    box(
        title='example2',
        numericInput(
                inputId = 'ui_item2_numericInput',
                label = 'input data',
                width = '100%',
                100,
                min = 2,
                max = NA,
                step = 1
        )
    ),
    actionButton(
        inputId = 'ui_item2_action',
        label = 'execute',
        width = '250px',
        height = '60px',
        style = "margin-top: 20px; margin-bottom: 40px; font-size: 18px;",
        class = "center-block btn-info"
    )
)