library(officer)




comm_word <- function(type,
                      tableau) {
  
  if(type == "general") {
  
  doc <- read_docx() %>%
    body_add_par(value = "Titre", style = "heading 1") %>%
    
    body_add_par(value = "Contexte général", style = "heading 2") %>%
    body_add_par(value = "blabla", style = "Normal") %>%

    

  
  a_par <- fpar(
    ftext("Sorties des outils CalcJD et DiagOrgApp, conjointement d\u00e9velopp\u00e9s dans le cadre du projet Strat&co, cordonn\u00e9 par Agro-Transfert RT, ", prop = NULL),
    ftext("en partenariat avec les Chambres d\'agriculture de l\'Aisne, du Nord - Pas de Calais et de l\'Oise et UniLaSalle,", prop = NULL),
    ftext("avec le soutien financier du Feder Hauts-de-France, du Conseil R\u00e9gional Hauts-de-France et du Minist\u00e8re de l\'Agriculture (CASDAR dans le cadre du PRDA Hauts-de-France).", prop = NULL),
    fp_p = fp_par(
      text.align = "center"
    ))
  
  doc <- doc  %>%
    body_add_fpar(a_par)
  
  }
}