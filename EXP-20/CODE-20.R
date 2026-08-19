data("ChickWeight")

# Build model
model_chick <- lm(weight ~ Time + Diet, data=ChickWeight)
summary(model_chick)

# Predict weight
predict(model_chick, newdata=data.frame(Time=10, Diet=2))

# Compute model error (RMSE)
pred <- predict(model_chick, ChickWeight)
rmse <- sqrt(mean((ChickWeight$weight - pred)^2))
rmse
