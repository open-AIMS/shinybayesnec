#' Run Shiny bayesnec Application
#'
#' @export
run_app <- function() {
  shiny::shinyAppDir(system.file("app", package = "shinybayesnec"))
}

#' @describeIn run_app
#'
#' @export
run_bayesnec_app <- function() {
  run_app()
}
