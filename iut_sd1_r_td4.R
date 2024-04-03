getwd()
setwd("L:/BUT/SD/Promo 2023/ominusker/Programmation R/dataset")
velov = read.csv("velov.csv",header = TRUE, sep = ";", dec="," )
summary(velov)
velov$status=as.factor(velov$status)
velov$CodePostal=as.factor(velov$CodePostal)
class(velov$status)
class(velov$CodePostal)

velov$bornes=ifelse(velov$capacity != (velov$bikes + velov$stands), "KO" , "OK")
histogramme1 = hist(velov$capacity, main ="Distribution de la capacité des stations", breaks =6)
histogramme2 = hist(velov$capacity, main ="Distribution de la capacité des stations", breaks =6, col = "red")

histogramme3 = hist(velov$capacity, main ="Distribution de la capacité des stations", breaks =6, col = "red", xlab = "Capacity")
abline(a=100, b=0, col="blue")

histogramme4 = hist(velov$capacity, main ="Distribution de la capacité des stations", col = "red", xlab = "Capacity", probability = TRUE)
lines(density(velov$capacity), lwd=2, lty=2, col="blue")

histogramme5 = hist(velov$capacity, main ="Distribution de la capacité des stations", col = "red", xlab = "Capacity", probability = TRUE, ylim = c(0,0.07))
lines(density(velov$capacity), lwd=2, lty=2, col="blue")

boitemoustache1 = boxplot(velov$capacity, main = "Distribution de la capacité des stations")
boitemoustache2 = boxplot(velov$capacity, main = "Distribution de la capacité des stations", horizontal = TRUE)

boitemoustache3 = boxplot(velov$capacity, main = "Distribution de la capacité des stations", horizontal = FALSE, outline = FALSE)
points(mean(velov$capacity), pch = 15, col = "red")

par(mfrow=c(1,2)) 
velov7 = subset(velov, CodePostal == "69007")
boxplot(x = velov7$bikes, 
        main = "Boxplot nb vélos \n 69007",
        ylim = c(0,40))

velov8 = subset(velov8$bikes, CodePostal == "69008")
boxplot(x = velov8$bikes, 
        main = "Boxplot nb vélos \n 69008",
        ylim = c(0,40))

diagbarre1=barplot(height = table(velov$bonus), main = "Répartition du nombre de station bonus")

diagbarre2=barplot(height = table(velov$bonus), main = "Répartition du nombre de station bonus", horiz = TRUE)

diagbarre3=barplot(height = prop.table(table(velov$bonus)), main = "Répartition du nombre de station bonus", horiz = TRUE)

diagbivar= barplot(height = table(velov$bonus, velov$banking), main = "Bonus vs Terminal paiement")

