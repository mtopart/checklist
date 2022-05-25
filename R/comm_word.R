#' @importFrom officer read_docx body_add_par fpar ftext fp_par body_add_fpar




comm_word <- function(type,
                      tableau) {
  
  if(type == "general") {
  
  doc <- read_docx() %>%
    body_add_par(value = "Retranscription des commentaires", style = "heading 1") %>%
    
    body_add_par(value = "Contexte général", style = "heading 2") %>%
    body_add_par(value = tableau[[1]], style = "Normal") %>% 

    body_add_par(value = "Analyse des impacts", style = "heading 2") %>%
    body_add_par(value = tableau[[2]], style = "Normal") %>% 
    
    body_add_par(value = "Technique", style = "heading 2") %>%
    body_add_par(value = tableau[[3]], style = "Normal") %>%
    
    body_add_par(value = "Travail et main d'oeuvre", style = "heading 2") %>%
    body_add_par(value = tableau[[4]], style = "Normal") %>%
    
    body_add_par(value = "Installations et matériels", style = "heading 2") %>%
    body_add_par(value = tableau[[5]], style = "Normal") %>%
    
    body_add_par(value = "Economique", style = "heading 2") %>%
    body_add_par(value = tableau[[6]], style = "Normal") 

  
  a_par <- fpar(
    ftext("Sorties de la check-list Points de repère, conjointement d\u00e9velopp\u00e9s dans le cadre du projet Strat&co, cordonn\u00e9 par Agro-Transfert RT, ", prop = NULL),
    ftext("en partenariat avec les Chambres d\'agriculture des Hauts-de-France, du CerFrance CNEIF, de l'AS60, UniLaSalle et la FRCUMA,", prop = NULL),
    ftext("accompagné par le CRA-W et l'INRAE", prop = NULL),
    ftext("avec le soutien financier du Feder Hauts-de-France, du Conseil R\u00e9gional Hauts-de-France et du Minist\u00e8re de l\'Agriculture (CASDAR dans le cadre du PRDA Hauts-de-France).", prop = NULL),
    fp_p = fp_par(
      text.align = "center"
    ))
  
  doc <- doc  %>%
    body_add_fpar(a_par)
  
  }
}
