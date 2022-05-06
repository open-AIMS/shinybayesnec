#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

app_server <- function(input, output, session) {
# Define server logic required to draw a histogram

  output$distPlot <- renderPlot({
    data("nec_data")
    nec_data <- nec_data %>%
      dplyr::mutate(
        count = as.integer(round(y * 20)),
        trials = as.integer(20),
        log.x = log(x),
        exp.y = exp(y)
      )
    fit <- bnec(y ~ crf(x, model = "nec3param"), data = nec_data, iter = 1000)
    x <- nec(fit, posterior = TRUE)

    # generate bins based on input$bins from ui.R

    bins <- seq(min(x), max(x), length.out = input$bins + 1)

    # draw the histogram with the specified number of bins
    hist(x, breaks = bins, col = "darkgray", border = "white")
  })
}
