# Load required libraries
library(dplyr)
library(ggplot2)

# Load dataset
data <- read.csv("~/Sample - Superstore.csv", comment.char = "#")
data <- na.omit(data)

# Create binary profit label
data$Profit_Label <- ifelse(data$Profit > 0, 1, 0)

# Select relevant columns
data <- data %>%
  select(Sales, Quantity, Discount, Profit_Label, Category, Region, Ship.Mode)

# Convert to factors
data$Category <- factor(data$Category)
data$Region <- factor(data$Region)
data$Ship.Mode <- factor(data$Ship.Mode)

# Split data into train/test sets
set.seed(123)
trainIndex <- createDataPartition(data$Profit_Label, p = 0.7, list = FALSE)
trainData <- data[trainIndex, ]
testData <- data[-trainIndex, ]

# Step 1
# A/B Testing: Mean Sales and Profit
ab_test_data <- trainData %>%
  group_by(Discount_Applied) %>%
  summarise(mean_sales = mean(Sales), mean_profit = mean(Profit))

print(ab_test_data)

# Step 2
# t-test: Sales difference
sales_test <- t.test(Sales ~ Discount_Applied, data = trainData)
print(sales_test)

# Step 3
# t-test: Profit difference
profit_test <- t.test(Profit ~ Discount_Applied, data = trainData)
print(profit_test)

# Step 4
# Linear Regression: Profit ~ Discount
profit_model <- lm(Profit ~ Discount, data = trainData)
summary(profit_model)

# Step 5
# Predicting profit based on the regression model
predicted_profit <- predict(profit_model, newdata = data.frame(Discount = trainData$Discount))
trainData$predicted_profit <- predicted_profit

# Finding the optimal discount
optimal_discount <- trainData$Discount[which.max(trainData$predicted_profit)]
optimal_discount

# Step 6
# Linear regression with interaction between Discount and Region
interaction_model <- lm(Profit ~ Discount * Region, data = trainData)
summary(interaction_model)
