library(ggplot2)
data("Titanic")

# Convert Titanic to data frame
titanic_df <- as.data.frame(Titanic)

# Bar chart survival vs class
ggplot(titanic_df, aes(x=Class, y=Freq, fill=Survived)) +
  geom_bar(stat="identity", position="dodge")

# Modify plot by gender
ggplot(titanic_df, aes(x=Class, y=Freq, fill=Survived)) +
  geom_bar(stat="identity", position="dodge") +
  facet_wrap(~Sex)

# Histogram of Age (using Titanic dataset from 'datasets' package doesn’t have Age, 
# so use 'titanic' package if available)
# Example with titanic_train dataset:
# hist(titanic_train$Age, main="Histogram of Age", col="orange")
