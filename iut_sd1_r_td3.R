library(readxl)
pokemon = read_excel(path = "pokemon.xlsx",sheet = "pokemon")

dim(pokemon)
ncol(pokemon)
nrow(pokemon)

summary(pokemon)

pokemon$is_legendary = as.factor(pokemon$is_legendary)
pokemon$generation = as.factor(pokemon$generation)
pokemon$type = as.factor(pokemon$type)

med = median(pokemon$attack)
pokemon$attack_group = ifelse(pokemon$attack >= med, "attack+","attack-")
pokemon$attack_group = as.factor(pokemon$attack_group)
summary(pokemon$attack_group)
pokemon$water_fire = ifelse(pokemon$type %in% c("water","fire"), "yes","no")
pokemon$water_fire = as.factor(pokemon$water_fire)
summary(pokemon$water_fire)

requete = subset(pokemon, is.na(weight_kg))
View(requete)
requete = subset(pokemon, !is.na(weight_kg))
View(requete)

pokemon$weight_group = cut(pokemon$weight_kg,
                           breaks = 3,
                           labels = c("léger","moyen","lourd"))