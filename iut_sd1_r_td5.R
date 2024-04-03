par(mfrow = c(1,1))
plot(NA, xlim=c(-5, 5), ylim=c(0, 1), xlab="X", 
     ylab="Densité de probabilité", 
     main="Densités de probabilité \n de lois normales")

moyennes <- c(0, 0, 0, -2)
sigmas <- c(0.45, 1, 2.25, 0.7)
colors <- c("red", "blue", "green", "orange")
legend_labels <- c()
for (i in 1:length(moyennes)) {
  serie = rnorm(n = 1000, 
                mean = moyennes[i], 
                sd = sigmas[i])
  lines(density(serie), col = colors[i])
  legend_labels <- c(legend_labels, paste("m =", moyennes[i], ",", "s =", sigmas[i]))
}

# Ajouter une légende
legend("topright", legend=legend_labels, col=colors, lwd=2, cex=0.8)

loinorm = rnorm(1000, mean = 0, sd=1)

hist(loinorm, main = "Loi normale centrée réduite", probability = TRUE)
lines(density(loinorm))

median(loinorm)

quantile(loinorm)

quantile(loinorm, probs = seq(from = 0, to = 1, by = 0.01))
quantile(loinorm, probs = 0.95)

qnorm(p=0.95, mean = 0, sd = 1)
pnorm(q=1.644854,mean = 0, sd = 1)
qnorm(p = 0.975, mean = 0, sd = 1)
1 - pnorm(q = 1.96, mean = 0, sd = 1)

