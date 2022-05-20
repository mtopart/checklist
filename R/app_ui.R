#' The application User-Interface
#' 
#' @param request Internal parameter for `{shiny}`. 
#'     DO NOT REMOVE.
#' @import shiny
#' @importFrom bslib bs_theme
#' @noRd

app_ui <- function(request) {
  tagList(
    # Leave this function for adding external resources
    golem_add_external_resources(),
    # Your application UI logic 

    navbarPage(
      title =  "Le Guide Points de repère", id = "navBar",
      #position = "fixed-top",
      collapsible = TRUE,
      theme = bs_theme(bootswatch = "sketchy"),
      
      
      
      tabPanel(icon("home"),
               mod_presentation_ui("presentation_ui_1")
               ),
      
      
      
      tabPanel("Situation générale", value = "general",
               mod_situation_generale_ui("situation_generale_ui_1")
             ),
      
      
      

      # TabPanel Exploitation agricole------------------------------
      
      tabPanel("Exploitation agricole", value = "agri",
               
               mod_exploit_agri_ui("exploit_agri_ui_1")
               ),
      
      navbarMenu("Plus d'infos",
                 tabPanel("Documents à télécharger",
                          icon = icon("download"),
                          mod_doc_supp_ui("doc_supp_ui_1")),
                 "----",
                 tabPanel("A propos",
                          icon = icon("tag"),
                          mod_a_propos_ui("a_propos_ui_1")  

                 ))
      
      
    )
    
    
  )
    

}

#' Add external Resources to the Application
#' 
#' This function is internally used to add external 
#' resources inside the Shiny application. 
#' 
#' @import shiny
#' @importFrom golem add_resource_path activate_js favicon bundle_resources
#' @noRd
golem_add_external_resources <- function(){
  
  add_resource_path(
    'www', app_sys('app/www')
  )
 
  tags$head(
    favicon(),
    bundle_resources(
      path = app_sys('app/www'),
      app_title = 'checklist'
    )
    # Add here other external resources
    # for example, you can add shinyalert::useShinyalert() 
  )
}

