#' The application server-side
#' 
#' @param input,output,session Internal parameters for {shiny}. 
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_server <- function( input, output, session ) {
  # Your application server logic 
  
  
  mod_presentation_server("presentation_ui_1")
  mod_situation_generale_server("situation_generale_ui_1")
  mod_exploit_agri_server("exploit_agri_ui_1")
  
  
  mod_doc_supp_server("doc_supp_ui_1")
  mod_a_propos_server("a_propos_ui_1")
  
}
