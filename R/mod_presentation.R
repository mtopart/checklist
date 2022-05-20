#' presentation UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
#' @importFrom shinyjs useShinyjs

mod_presentation_ui <- function(id){
  ns <- NS(id)
  tagList(
    
    
    fluidRow(
      column(12,
             h4("> Une check-list à destination des conseillers et des agriculteurs pour prendre du recul sur des situations de tous les jours",
                class="text-muted")
      ),
      column(1),
      column(
        10,
        br(),
        tags$img(src = "www/explications.png", width = "80%"),
        hr(),
        
        # p("Je vérifie que j'ai toutes les informations nécessaires sur les fiches technico-économiques ou références à ma disposition", class ="text-success", class="lead"),
        # p("Je contacte un(e) expert(e) d'une pratique ou d'une production pour en apprendre plus", class ="text-success", class="lead"),
        # p("Je questionne un(e) agriculteur(rice) sur ses pratiques et/ou productions ", class= "text-info", class="lead"),
        # p("Je prends du recul sur une exploitation agricole que j'ai visitée", class= "text-info", class="lead"),
        #p("En tant que conseiller, je vérifie que j'ai toutes les informations nécessaires pour réussir mon accompagnement", class= "text-info", class="lead")
        
      ),
      column(1)
    ),
    br(),
    br(),
    
    
    # BUTTONS TO START
    fluidRow(
    useShinyjs(),
      
      tags$head(tags$script(HTML('
                                                       var fakeClick = function(tabName) {
                                                       var dropdownList = document.getElementsByTagName("a");
                                                       for (var i = 0; i < dropdownList.length; i++) {
                                                       var link = dropdownList[i];
                                                       if(link.getAttribute("data-value") == tabName) {
                                                       link.click();
                                                       };
                                                       }
                                                       };
                                                       '))),
      
      column(2),
      column(4,
             br(),
             tags$div(class = "wrap",
                      div(class = "center", 
                          style="display: inline-block;vertical-align:top; width: 225px;",
                          tags$a("Je vérifie les informations que j'ai à disposition",
                                 onclick = "fakeClick('general')",
                                 class="btn btn-outline-success btn-lg")  # tag$a crée un lien vers un site interne
                      ))),
      
      column(4,        
             tags$div(class = "wrap",      
                      div(class = "center",
                          style="display: inline-block;vertical-align:top; width: 225px;",
                          tags$a("Je prends du recul sur les informations qui concernent une exploitation en particulier", 
                                 onclick="fakeClick('agri')", 
                                 class="btn btn-outline-info btn-lg")
                      )
             )
      ),
      column(2)
    
    
    
    
 
  )
  )
}
    
#' presentation Server Functions
#'
#' @noRd 
mod_presentation_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns
 
  })
}
    
## To be copied in the UI
# mod_presentation_ui("presentation_ui_1")
    
## To be copied in the server
# mod_presentation_server("presentation_ui_1")
