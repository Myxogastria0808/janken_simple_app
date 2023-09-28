tabItem_item1 <- tabItem(
    tabName = 'ui_item1',
    box(
        p('item1 result'),
        plotOutput(
            outputId = 'ui_item1_output'
        )
    ),
    box(
        title='example1',
        numericInput(
                inputId = 'ui_item1_numericInput',
                label = 'input data',
                width = '100%',
                100,
                min = 2,
                max = NA,
                step = 1
        )
    ),
    actionButton(
        inputId = 'ui_item1_action',
        label = 'execute',
        width = '250px',
        height = '60px',
        style = "margin-top: 20px; margin-bottom: 40px; font-size: 18px;",
        class = "center-block btn-info"
    )
)