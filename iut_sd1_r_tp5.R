fichiers = list.files("L:/BUT/SD/_Données/Promo 2023/Programmation Statistique sous R/GitHub/IUT_SD1/dataset/nba", pattern = ".csv$", full.names = TRUE)

basename(path = fichiers[1])
library(tools)
file_path_sans_ext("common_player_info.csv")
assign(x = sansext, value = read.csv(fichiers[1], sep = ",", dec = "."))

for (fichier in fichiers) {
  nom_fichier = file_path_sans_ext(basename(fichier))
  assign(nom_fichier, read.csv(fichier, 
                             sep = ",",
                             dec = "."))
}

ville = subset(team,city == "Los Angeles", select = "id")
matchdomicile = subset(game, select = c("game_id", "team_id_home"))
losangeles = merge(x = ville, y = matchdomicile,
                   by.x = "id",
                   by.y = "team_id_home",
                   all.x = TRUE)

nrow(losangeles)

villela = losangeles
spectateurs = subset(game_info, select =c("game_id", "attendance"))
spectateursla = merge(x= villela, y=spectateurs,
                      by = "game_id",
                      all.x = TRUE)
mean(spectateursla$attendance, na.rm = TRUE)
View(spectateursla)