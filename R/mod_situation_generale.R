#' situation_generale UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
#' @importFrom prompter use_prompt
#' @importFrom flexdashboard gaugeOutput renderGauge gauge gaugeSectors
#' @importFrom dplyr %>%
#' @importFrom tibble as_tibble

mod_situation_generale_ui <- function(id){
  ns <- NS(id)
  tagList(
    
    
    fluidRow(
      #style = "background-color:#F5F5F5;",
      use_prompt(),
      
      ## Situation générale : contexte ----------------------
      
      #column(1,),
      
      column(5,
             style = "background-color:#F4EBFA;",
             
             checkboxGroupInput(ns("gen_cont"), h5("Contexte général"),
                                width = '100%',
                                c("Marché, débouchés et concurrence" = "gen_cont_1",
                                  "Historique des prix et analyse" = "gen_cont_2",
                                  "Variabilité des rendements et/ou de la qualité et analyse" = "gen_cont_3",
                                  "Personnes ressources à contacter"  = "gen_cont_4"))
      ),
      column(3,
             style = "background-color:#F4EBFA;",
             br(),
             gaugeOutput(ns("ggen_cont"),
                         height = "100px")
      ),
      
      column(4,
             textAreaInput(inputId = ns("com_gen_cont"), 
                           label = NULL,
                           width = '100%',
                           height = '150px',
                           placeholder = "Commentaires")
      ),
      column(12,
             br()),
      
      
      ## Situation générale : analyse des impacts-----------------------------------
      
      
      column(5,
             style = "background-color:#F5F5F5;",
             
             checkboxGroupInput(ns("gen_impacts"), h5("Analyse des impacts potentiels d'une production ou d'une pratique sur un système existant "),
                                width = '100%',
                                c("Sur le travail et l'organisationnel" = "gen_impacts_1",
                                  "Sur les productions en place" = "gen_impacts_2",
                                  "Sur le matériel" = "gen_impactst_3",
                                  "Sur les débouchés, les ventes ou encore les relations clients"  = "gen_impacts_4",
                                  "Sur les fournisseurs et la logistique" = "gen_impacts_5",
                                  "Sur la rentabilité et la stabilité des résultats et des revenus" = "gen_impactst_6",
                                  "Sur la vie personnelle et l'épanouissement"  = "gen_impacts_7"))
      ),
      
      column(3,
             style = "background-color:#F5F5F5;",
             
             br(),
             gaugeOutput(ns("ggen_impacts"),
                         height = "100px")),
      
      
      column(4,
             textAreaInput(inputId = ns("com_gen_impacts"), 
                           label = NULL,
                           width = '100%',
                           height = '200px',
                           placeholder = "Commentaires")
      ),
      
      
      column(12,
             br()),
      
      
      
      
      ## Situation générale : technique ---------------------           
      
      column(5,
             style = "background-color:#E4F5E7;",
             checkboxGroupInput(ns("gen_tech"), h5("Technique"),
                                width = '100%',
                                c("Appropriation technique  et temps nécessaire (aisée, difficile)", 
                                  "Points-clefs techniques et/ou périodes clefs",
                                  "Conditions les plus propices à la production et/ou stockage",
                                  "Variabilité potentielle dans les interventions",
                                  "Conséquences d'un retard",
                                  "Besoin d'accompagnement spécifique",
                                  "Réglementations ou normes à connaitre"))
      ),
      
      column(3,
             style = "background-color:#E4F5E7;",
             
             br(),
             gaugeOutput(ns("ggen_tech"),
                         height = "100px")),
      
      column(4,
             textAreaInput(inputId = ns("com_gen_tech"), 
                           label = NULL,
                           width = '100%',
                           height = '200px',
                           placeholder = "Commentaires")
      ),
      
      
      column(12,
             br()),
      
      
      ## Situation générale : travail et main d'oeuvre---------------------  
      
      column(5,
             style = "background-color:#FDFFE0;",
             checkboxGroupInput(ns("gen_mo"), h5("Travail et main d'oeuvre"),
                                width = '100%',
                                c("Main d'œuvre nécessaire lors des pics de travail et hors pics",
                                  "Décomposition entre le travail au champ et hors champ",
                                  "Gestion de la main  d'œuvre",
                                  "Spécificité de la main d'œuvre (formations, compétences, savoir-être …)",
                                  "Pénibilité"))
      ),
      
      column(3,
             style = "background-color:#FDFFE0;",
             
             br(),
             gaugeOutput(ns("ggen_mo"),
                         height = "100px")),
      
      column(4,
             textAreaInput(inputId = ns("com_gen_mo"), 
                           label = NULL,
                           width = '100%',
                           height = '150px',
                           placeholder = "Commentaires")
      ),  
      
      column(12,
             br()),
      
      ## Situation générale : installations et matériels-----------------------    
      
      column(5,
             style = "background-color:#F7DFCD;",
             checkboxGroupInput(ns("gen_mat"), h5("Installations et matériels"),
                                width = '100%',
                                c("Matériels nécessaires et coûts (achat, entretien)",
                                  "Spécificité du matériel et facilité d'obtention",
                                  "Possibilité / besoin d'autoconstruction",
                                  "Possibilité d'avoir accès à du matériel partagé et conséquences",
                                  "Installations nécessaires et coûts (achat, entretien)"))
      ),
      
      
      column(3,
             style = "background-color:#F7DFCD;",
             
             br(),
             gaugeOutput(ns("ggen_mat"),
                         height = "100px")),
      
      column(4,
             textAreaInput(inputId = ns("com_gen_mat"), 
                           label = NULL,
                           width = '100%',
                           height = '150px',
                           placeholder = "Commentaires")
      ),
      
      
      column(12,
             br()),
      
      ## Situation générale : Elements économiques---------------------  
      
      
      column(5,
             style = "background-color:#DCEDFA;",
             checkboxGroupInput(ns("gen_eco"), h5("Elements économiques"),
                                width = '100%',
                                c("Charges de mécanisation ",
                                  "Charges variables (dont intrants, alimentation, frais vétérinaire, gaz, eau, électricité…)",
                                  "Moyenne de chiffres économiques : marges, EBE, valeur ajoutée",
                                  "Historique sur plusieurs années de chiffres économiques (marges, EBE, valeur ajoutée)",
                                  "Clefs de réussite et points de vigilance à connaitre vis à vis des prix",
                                  "Présence d'aides à l'investissement et/ou à la production"
                                ))
             
             
      ),
      
      column(3,
             style = "background-color:#DCEDFA;",
             
             br(),
             gaugeOutput(ns("ggen_eco"),
                         height = "100px")),
      
      column(4,
             textAreaInput(inputId = ns("com_gen_eco"), 
                           label = NULL,
                           width = '100%',
                           height = '150px',
                           placeholder = "Commentaires")
      ),
      
      
      
      # Download 1
      
      column(12,
             br(),
             hr(),
             br(),
             div( style = "text-align:center",
                  downloadButton(ns("dl_1"), "Clic pour télécharger")),
             br())
      

    )    

  )
}
    
#' situation_generale Server Functions
#'
#' @noRd 
mod_situation_generale_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns
    
    
    
    recap_gen <- reactive({
      list(
        contexte = input$gen_cont,
        impacts = input$gen_impacts,
        technique = input$gen_tech,
        mo = input$gen_mo,
        mat = input$gen_mat,
        eco = input$gen_eco
      ) %>% 
        lengths() %>% 
        as.list %>% 
        as_tibble
      
    })
    
    
    output$ggen_cont = renderGauge({
      
      recap_gen <- recap_gen()
      
      gauge(recap_gen$contexte, 
            min = 0, 
            max = 4, 
            sectors = gaugeSectors(success = c(4, 5), 
                                   warning = c(2, 3),
                                   danger = c(0, 2)))
    })
    
    
    output$ggen_impacts = renderGauge({
      
      recap_gen <- recap_gen()
      
      gauge(recap_gen$impacts, 
            min = 0, 
            max = 7, 
            sectors = gaugeSectors(success = c(5, 7), 
                                   warning = c(3, 5),
                                   danger = c(0, 3)))
    })
    
    
    
    output$ggen_tech = renderGauge({
      
      recap_gen <- recap_gen()
      
      gauge(recap_gen$technique, 
            min = 0, 
            max = 7, 
            sectors = gaugeSectors(success = c(5, 7), 
                                   warning = c(3, 5),
                                   danger = c(0, 3)))
    })  
    
    
    output$ggen_mo = renderGauge({
      
      recap_gen <- recap_gen()
      
      gauge(recap_gen$mo, 
            min = 0, 
            max = 5, 
            sectors = gaugeSectors(success = c(4, 5), 
                                   warning = c(3,4 ),
                                   danger = c(0, 3)))
    })    
    
    output$ggen_mat = renderGauge({
      
      recap_gen <- recap_gen()
      
      gauge(recap_gen$mat, 
            min = 0, 
            max = 5, 
            sectors = gaugeSectors(success = c(4, 5), 
                                   warning = c(3,4 ),
                                   danger = c(0, 3)))
    })  
    
    
    output$ggen_eco = renderGauge({
      
      recap_gen <- recap_gen()
      
      gauge(recap_gen$eco, 
            min = 0, 
            max = 6, 
            sectors = gaugeSectors(success = c(4, 6), 
                                   warning = c(2,4 ),
                                   danger = c(0, 2)))
    })    
    
 # Download ----------------------------------------------------
    
    
    output$dl_1 <- downloadHandler(
      filename = function() {
        paste("data-", Sys.Date(), ".csv", sep="")
      },
      content = function(file) {
        write.csv(data, file)
      }
    )  
    
    
    
    
  })
}
    
## To be copied in the UI
# mod_situation_generale_ui("situation_generale_ui_1")
    
## To be copied in the server
# mod_situation_generale_server("situation_generale_ui_1")
