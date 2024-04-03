
#EXERCICE 1

#enlever les > en début de ligne
#changer le répertoire de travail actuel
setwd("L:/BUT/SD/Promo 2023/ominusker/Programmation R/dataset")
df <- read.csv(file = "nba2014_2015.csv", sep = ",",
               header = TRUE, dec = ".") #séparateur , au lieu de ; dec . au lieu de ; et HEADER True au lieu de False
nrow(df)
ncol(df)
colnames(df) #manque un "s" à colname
df$Period = as.factor(df$PERIOD) 
df$PTSTYPE = as.factor(df$PTS_TYPE) #manque un _ à PTSTYPE
df$SHOOTER = as.factor(df$SHOOTER)
#noms des colonnes en majuscule


#EXERCICE 2

#enlever les > en début de ligne
length(levels(df$PERIOD)) #length au lieu de lenght
length(df$PTSTYPE) #manque un _ à PTSTYPE
length(df$SHOOTER) #SHOOTER au lieu de SHOTER
summary(df) #df au lieu de ddf
sd(df$SHOT_DIST) #manque une paranthèse
sd(df$SHOT_CLOCK) #paranthèses au lieu de crochet

table(df["SHOT_RESULT"]) #S et , en trop 
quantile(df$SHOT_CLOCK, probs = 0.4, na.rm = TRUE) #0.4 au lieu de 4 et manque na.rm
quantile(df$CLOSE_DEF_DIST, probs = 0.1) #probs 0.1 au lieu de 10 et erreur syntaxe
liste_game = unique(df$GAME_ID) #paranthèse en trop
length(liste_game) # manque _
df$SHOOTER = as.factor(df$SHOOTER) # . au lieu de _
nlevels(df$SHOOTER) # manque s et paranthèse

df$SHOT_DIST_METRE = df$SHOT_DIST * 0.30 #manque df et == au lieu de =
df$PTS_MARQUES = ifelse(df$SHOT_RESULT == "made", yes = df$PTS_TYPE, no = 0)
df$GAME_RESULT = NULL

df2 = df[-1]

rang <- order(df$SHOT_DIST, decreasing = TRUE)
df3 <- df[rang[ 1 : 100],]

df4 = subset(df2, SHOT_RESULT == "made")
df4 <- df[1 : 100 ,]

df_kobe = subset(df,SHOT_RESULT == "made" &
                   PTS_TYPE == 3 & 
                   SHOOTER == "kobe bryant")
dim(df_kobe)

df_total = aggregate(PTS_MARQUES ~ SHOOTER, data = df, FUN = sum)
df_total_tri <- df_total[-order(df_total$PTS_MARQUES)]
df_top5 <-  df_total_tri[  5  ,  ]