salaire_net_cadre= function(salairecadre = 2500,tps_de_travail = 1,statut){
  if(!is.numeric(salairecadre)) {
    print("La valeur entrée n'est pas numérique")
  }
  if(!is.numeric(tps_de_travail) & (tps_de_travail >= 0) & (tps_de_travail <= 1)) {
    print("La valeur entrée n'est pas numérique et entre 0 et 1")
  }
  if (!statut %in% c("cadre","non cadre")) {
    return("Erreur :  le statut doit être cadre ou non cadre")
  }
  
  if (statut == "cadre") {
    salaire_net_avant_impot = salairecadre * tps_de_travail * 0.75
  } else {
    salaire_net_avant_impot = salairecadre * tps_de_travail * 0.78
  }
  return(salaire_net_avant_impot)
}

salaire_net_cadre(salairecadre = 3000,
                  tps_de_travail = 0.8,"non cadre")


for( i)