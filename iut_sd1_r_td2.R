# Exercice 1

bodies_karts = read.csv(file = "bodies_karts.csv", header = TRUE, sep = ";", dec = ",")
tires = read.csv(file = "tires.csv", header = TRUE, sep = "\t", dec = ",")
gliders = read.csv(file = "gliders.csv", header = TRUE, sep = "|", dec = ".")
drivers = read.csv(file = "drivers.csv", header = TRUE, sep = ";", dec = ",")

dim(bodies_karts)
dim(tires)
dim(gliders)
dim(drivers)

# Exercice 2

summary(bodies_karts)
summary(tires)
summary(gliders)
summary(drivers)

plot(x = drivers$Weight, y = drivers$Acceleration, main = "Drivers : Weight/Acceleration") 

cor(x = drivers$Weight,
    y = drivers$Acceleration)
coeff = cov(x = drivers$Weight,
            y = drivers$Acceleration)
et = sd(drivers$Weight)*sd(drivers$Acceleration) 
print(coeff/et)

coefCorr = cor(x = drivers$Weight,
               y = drivers$Acceleration)
coefDeter = coefCorr^2
print(coefDeter)

matriceCor = cor(drivers[ , - 1])
matriceCor = round(matriceCor , 2)
View(matriceCor)

install.packages("corrplot")