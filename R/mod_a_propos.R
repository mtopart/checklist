#' a_propos UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_a_propos_ui <- function(id){
  ns <- NS(id)
  tagList(
    
    strong("Outil conçu dans le cadre du projet Strat&co", em("Evaluation écononomique et accompagnement stratégique"),
           tags$img(src = "www/logo.jpg", width = "10%")),
    tags$img(src = "www/bandeau5.png", width = "90%")
 
  )
}
    
#' a_propos Server Functions
#'
#' @noRd 
mod_a_propos_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns
 
  })
}
    
## To be copied in the UI
# mod_a_propos_ui("a_propos_ui_1")
    
## To be copied in the server
# mod_a_propos_server("a_propos_ui_1")
