set.seed(123)
data("iris")

# Train/Test split
train_idx <- sample(1:nrow(iris), 0.8*nrow(iris))
train <- iris[train_idx, ]
test <- iris[-train_idx, ]

# Logistic regression (binary classification: setosa vs non-setosa)
train$Species <- ifelse(train$Species=="setosa", 1, 0)
test$Species <- ifelse(test$Species=="setosa", 1, 0)

model_iris <- glm(Species ~ Petal.Length + Petal.Width, data=train, family=binomial)
summary(model_iris)

# Predict
pred_probs <- predict(model_iris, test, type="response")
pred_class <- ifelse(pred_probs > 0.5, 1, 0)

# Confusion matrix
table(Predicted=pred_class, Actual=test$Species)
