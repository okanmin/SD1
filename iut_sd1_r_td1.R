#TD1

a = 10
b = 5
resultat = a * b
print(resultat)

A= 7.2
B= 10.1
resultat = A + B

rm(a,A,b,B,resultat)

vecteur = c(1,2,3,4,5) 
class(vecteur)
vecteur[3]

v1= 1:5
v2 = v1 + 3 
v3 = 1:6
v4 = v3^2
v5 = v4/2

jours = c("lundi","mardi","mercredi","jeudi",
          "vendredi","samedi","dimanche")
class(jours)
jours[c(2,7)]

vf = c(FALSE,TRUE,FALSE,TRUE)
class(vf)

nombres = c(1.27,5.69,2.74,9.61)
class(vecteur)
nombres[-3]

mois = c("Janvier","Février","Mars","Avril",
         "Mai","Juin","Juillet","Août","Septembre",
         "Octobre","Novembre","Décembre")
class(mois)
mois[c(1,2,3,4)]

nombresneg = c(-1.27,-5.69,-2.74,-9.61)
class(nombresneg)
nombresneg[c(4,1)]

fruits= c("Banane","Fraise","Pêche")
class(fruits)
fruits[c(-1,-2)]

valeurs = c(1,NA,2,NA,3)
class(valeurs)

nblength = seq(from = 1, to = 10)
length(nblength)

pairs = seq(from = 1, to = 20, by = 2)
length(pairs)

desc = seq(from = 0, to =-5)
length(desc)

testpas = seq(from = 5, to = 50, by = 5)
length(testpas)

desc2 = seq(from = 10, to = 1, by = -1)
length(desc2)

petitpas = seq(from = 0, to = 1, by = 0.1)
length(petitpas)

seqdesc = seq(from = 5, to = -5, by = -1)
length(seqdesc)

impair = seq(from = 1, to = 10, by = 2)
length(impair)

repetition = rep(3, times = 5)
abc = rep(c("A","B","C"), times = 3)

repseq = rep(seq(from = 1, to = 3), times = 3)
vraifaux = rep(c(TRUE,FALSE), times = 4)

alea = runif(n = 5, min = 0, max = 1)
print(alea)

alea2 = runif(n = 10, min = -5, max = 5)

alea3 = runif(n = 100, min = 10, max = 20)

alea4 = runif(n = 15, min = 50, max = 10)
















