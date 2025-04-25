## Analysis of Discount Effect on Sales and Profit

### **Objective:**

The objective of this analysis is to assess the impact of discount application on sales and profit. Specifically, we are examining whether applying discounts increases sales and whether it negatively or positively affects profit.

### **Data Overview:**

The dataset consists of sales data with columns for `Sales`, `Profit`, and `Discount_Applied`. The `Discount_Applied` column indicates whether a discount was applied (1 for applied, 0 for not applied).

### **Approach:**

1. **A/B Testing**: We first grouped the data by `Discount_Applied` and computed the mean sales and profit for each group.
2. **T-Tests**: We performed t-tests to compare the sales and profit between the two groups.
3. **Regression Analysis**: We built a linear regression model to predict profit based on discount, and also included interaction terms with region to assess whether the effect of discount varies by region.

---

### **Step 1: A/B Testing - Mean Sales and Profit**

We began by calculating the mean sales and profit for both groups (with and without discounts).

```r
# A/B Testing: Mean Sales and Profit
ab_test_data <- trainData %>%
  group_by(Discount_Applied) %>%
  summarise(mean_sales = mean(Sales), mean_profit = mean(Profit))

print(ab_test_data)
```

**Results:**

| Discount_Applied | mean_sales | mean_profit |
| --- | --- | --- |
| 0 (No Discount) | 227 | 67.7 |
| 1 (Discount) | 234 | -7.5 |
- Sales: With discounts applied, the average sales increased slightly from 227 to 234.
- Profit: However, the average profit decreased significantly with discounts (from 67.7 to -7.5).

**Interpretation**:

- Discounts increase sales, but they significantly reduce profit. While discounts can drive higher sales, they may be detrimental to overall profitability.

---

### **Step 2: T-Test for Sales Difference**

To assess whether the difference in sales between the two groups is statistically significant, we performed a t-test.

```r
# t-test: Sales difference
sales_test <- t.test(Sales ~ Discount_Applied, data = trainData)
print(sales_test)
```

**Results:**

- **t-value**: -0.51
- **p-value**: 0.61

Since the p-value is greater than 0.05, we conclude that there is no statistically significant difference in sales between the groups with and without discounts. Therefore, discounting does not significantly affect sales.

---

### **Step 3: T-Test for Profit Difference**

Next, we tested whether the difference in profit between the two groups is statistically significant.

```r
# t-test: Profit difference
profit_test <- t.test(Profit ~ Discount_Applied, data = trainData)
print(profit_test)
```

**Results:**

- **t-value**: 13.34
- **p-value**: < 2.2e-16

With a p-value less than 0.05, we conclude that the difference in profit between the two groups is statistically significant. This suggests that the discount has a significant negative impact on profit.

---

### **Step 4: Linear Regression Analysis**

We performed a linear regression to predict profit based on the discount applied. This allows us to better understand the relationship between discount and profit.

```r
# Linear Regression: Profit ~ Discount
profit_model <- lm(Profit ~ Discount, data = trainData)
summary(profit_model)
```

**Results:**

- Intercept: 68.87
- Discount coefficient: -256.79 (p-value < 2e-16)

The coefficient for `Discount` is negative, indicating that for each unit increase in discount, profit decreases by approximately 256.79.

- R-squared: 0.0505 (indicating a weak model fit)
- Residual standard error: 230.8

**Interpretation**:

- The model suggests that discounts reduce profit, with the effect being statistically significant.
- However, the model explains only about 5% of the variance in profit, which indicates that other factors not included in the model may be influencing profit.

---

### **Step 5: Predicting Optimal Discount**

Using the regression model, we predicted the profit at different discount levels and determined the optimal discount for maximum profit.

```r
# Predicting profit based on the regression model
predicted_profit <- predict(profit_model, newdata = data.frame(Discount = trainData$Discount))
trainData$predicted_profit <- predicted_profit

# Finding the optimal discount
optimal_discount <- trainData$Discount[which.max(trainData$predicted_profit)]
optimal_discount
```

**Results**:

- The optimal discount predicted by the model is 0. This suggests that, according to our regression model, no discount is the optimal strategy for maximizing profit.

---

### **Step 6: Regression with Interaction Term (Discount × Region)**

We further analyzed the effect of discount by including interaction terms with the `Region` variable to see if the impact of discounts varies by region.

```r
# Linear regression with interaction between Discount and Region
interaction_model <- lm(Profit ~ Discount * Region, data = trainData)
summary(interaction_model)
```

**Results**:

- Discount coefficient: -230.63 (p-value < 2e-16)
- Discount:RegionEast: -87.76 (p-value = 0.0108)
- Discount:RegionSouth: -96.30 (p-value = 0.0176)
- Discount:RegionWest: 23.45 (p-value = 0.5488)

The interaction terms suggest that the impact of discounts varies by region. Specifically, the effect of discounts is more negative in the East and South regions, while the West region shows no significant effect.

---

### **Conclusion**

- Sales Impact: Discounting does not have a statistically significant effect on sales.
- Profit Impact: Discounting has a negative impact on profit, with the regression model predicting that no discount (Discount = 0) maximizes profit.
- Regional Differences: The effect of discounts on profit differs by region. In the East and South regions, discounts have a more negative impact on profit, while the West region shows no significant effect.
- Recommendation: If the goal is to maximize profit, applying no discount is recommended. However, the business should consider the regional differences in discount effectiveness before making a final decision.

###
