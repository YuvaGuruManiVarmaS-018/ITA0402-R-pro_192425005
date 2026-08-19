x <- rnorm(50)
y <- rnorm(50)

boxplot(x, main="Boxplot")
hist(x, main="Histogram", col="lightblue")
barplot(table(sample(letters[1:5], 50, replace=TRUE)), main="Bar Plot")
plot(x, type="l", main="Line Chart")
plot(x, y, main="Scatter Plot")
