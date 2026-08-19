# Example Advertising dataset
advertising <- data.frame(
  Spend = c(10,20,30,40,50,60,70,80,90,100),
  Sales = c(25,45,65,80,95,110,130,150,170,190)
)

# Build regression model
model <- lm(Sales ~ Spend, data=advertising)
summary(model)

# Predict Sales
predict(model, newdata=data.frame(Spend=c(55,75)))
