# Load dataset
data("USArrests")

# Summary statistics
summary(USArrests)

# State with largest rape arrests
state_max_rape <- rownames(USArrests)[which.max(USArrests$Rape)]
state_max_rape

# Max & Min murder rates
max_murder <- max(USArrests$Murder)
min_murder <- min(USArrests$Murder)

# Correlation among features
cor(USArrests)

# States above median assault arrests
above_median_assault <- rownames(USArrests)[USArrests$Assault > median(USArrests$Assault)]

# States in bottom 25% for murder
bottom_25_murder <- rownames(USArrests)[USArrests$Murder < quantile(USArrests$Murder, 0.25)]

# Visualization
par(mfrow=c(2,2))
hist(USArrests$Murder, main="Histogram of Murder", col="lightblue")
plot(density(USArrests$Assault), main="Density of Assault", col="red")
plot(USArrests$Murder, USArrests$Rape, main="Scatterplot Murder vs Rape", xlab="Murder", ylab="Rape")
barplot(USArrests$UrbanPop, names.arg=rownames(USArrests), las=2, main="UrbanPop by State", col="green")
