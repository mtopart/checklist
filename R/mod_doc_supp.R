#' doc_supp UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_doc_supp_ui <- function(id){
  ns <- NS(id)
  tagList(
 
    
    p("En construction", class = "text-warning")
    
  )
}
    
#' doc_supp Server Functions
#'
#' @noRd 
mod_doc_supp_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns
 
  })
}
    
## To be copied in the UI
# mod_doc_supp_ui("doc_supp_ui_1")
    
## To be copied in the server
# mod_doc_supp_server("doc_supp_ui_1")
