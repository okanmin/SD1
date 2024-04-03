setwd("L:/BUT/SD/Promo 2023/ominusker/Programmation R/dataset")
getwd()
df = read.csv(file = "fao.csv", header = TRUE, sep = ";", dec = ",")

class(df$Nom)
class(df$Dispo_alim)
class(df$Prod_viande)
class(df$Import_viande)
class(df$Export_viande)
class(df$Population)

nrow(df)

summary(df)

mean(df$Dispo_alim)

sum(df$Population, na.rm = TRUE)

sd(df$Import_viande)
sd(df$Export_viande, na.rm = TRUE)

median(df$Prod_viande, na.rm = TRUE)

quantile(df$Dispo_alim, seq(0,1,0.25))
quantile(df$Import_viande, seq(0,1,0.1))

top5mp = head(df[order(df$Population),], n=5)

top5pp = head(df[order(df$Population, decreasing = TRUE),],5)

top5pv = head(df[order(df$Prod_viande, decreasing = TRUE),],5)

top5pvi = head(df[order(df$Import_viande, decreasing = TRUE),],5)

dispoalim = subset(df, Dispo_alim >= 2300)
nrow(dispoalim)