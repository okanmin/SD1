iris
class(iris)
View(iris)
nrow(iris)
ncol(iris)
colnames(iris)
summary(iris)

iris[ , c("Sepal.Length","Species")]

iris[c(100,103,105) , ]

iris[ 50:100 , ]

mean(iris$Sepal.Length)
median(iris$Sepal.Length)
sd(iris$Petal.Width)

quantile((iris$Petal.Width), probs = seq(0,1,0.1))

dfmanga = read.csv(file = "C:/Users/ominusker/Downloads/manga.csv")
dfanime = read.csv(file = "C:/Users/ominusker/Downloads/anime.csv")

class(dfmanga)
class(dfanime)

mean(dfmanga$Score)
mean(dfanime$Score)

sum(dfmanga$Vote)
sum(dfanime$Vote)

sd(dfmanga$Vote)
sd(dfanime$Vote)

quantile((dfmanga$Vote), probs = seq(0,1,0.1))
quantile((dfanime$Vote), probs = seq(0,1,0.1))

note9 = subset(dfmanga, Score>9)
nrow(note9)

votes = subset(dfmanga, Vote>200000)
nrow(votes)

votenote = subset(dfmanga, Vote>200000 & Score>8)
nrow(votenote)

manganote = subset(dfmanga, Score>=7 & Score<=8)
nrow(manganote)

#Calculer les effectifs de la variable Rating(). Combien de modalité de la variable existe-t-il ? Calculer ensuite les effectifs en pourcentage.
effectif = table(dfanime$Rating)
length(effectif)
prop.table(effectif)

#Combien d'Anime sont concernés par le Rating : R - 17+ (violence & profanity) ?
rating = subset(dfanime, Rating == "R - 17+ (violence & profanity)")
nrow(rating)

#Combien d'Anime sont concernés par le Rating : R - 17+ (violence & profanity) et ont une note supérieur à 8/10 ?
ratingnote = subset(dfanime, Score>8 & Rating == "R - 17+ (violence & profanity)")
nrow(ratingnote)

#Combien d'Anime ne correspondent pas au Rating : R - 17+ (violence & profanity) ?
norating = subset(dfanime, Rating != "R - 17+ (violence & profanity)")
nrow(norating)

#Combien d'Anime correspondent au Rating : PG - Children et G - All Ages ?
rating2 = subset(dfanime, Rating %in% c("PG - Children","G - All Ages"))
nrow(rating2)

#Combien d'Anime ne correspondent pas au Rating : PG - Children et G - All Ages ?
rating3 = subset(dfanime, !Rating %in% c("PG - Children","G - All Ages"))
nrow(rating3)