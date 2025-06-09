# Superstore Sales Dashboard Analysis

### Dashboard Overview
![Superstore Dashboard Screenshot](https://raw.githubusercontent.com/jiyoungk-0/Data-Science-Portfolio/main/Superstore-Dashboard-Analysis/assets/Superstore_Performance_Dashboard-images-0.jpg)  
This is the main view of the interactive dashboard that analyzes sales, profitability, and discount impacts.

### Sales and Product Analysis
![Sales and Profit Trends](https://raw.githubusercontent.com/jiyoungk-0/Data-Science-Portfolio/main/Superstore-Dashboard-Analysis/assets/Superstore_Performance_Dashboard-images-1.jpg)  
This view showcases the trends in sales and product over time.

### Customer Insights
![Customer Insights](https://raw.githubusercontent.com/jiyoungk-0/Data-Science-Portfolio/main/Superstore-Dashboard-Analysis/assets/Superstore_Performance_Dashboard-images-2.jpg)  
This section analyzes customer behaviour and delivery insights.

Check out the full interactive dashboard [Superstore Dashboard - Google Looker Studio](https://lookerstudio.google.com/reporting/419d9461-5c52-4128-b320-9c12e1414a10).

### **🔍 Project Overview**

This dashboard provides an insightful overview of Superstore's sales, profitability, customer behaviour, and shipping performance from 2014 to 2018. It serves as a tool for stakeholders to identify key trends, high-performing products, regional opportunities, and operational inefficiencies to support data-driven decision-making across departments.

### **💡 Why This Project**

In the highly competitive retail environment, understanding customer behavior, identifying top-performing products, and optimizing shipping efficiency are critical to success. This project was created to transform raw sales data into actionable insights, helping stakeholders in sales, marketing, operations, and customer service make informed, strategic decisions.

### 🧩 Scope

- **Page 1 - Executive Summary**: Key performance indicators (KPIs) and overall business trends, broken down by region and category.
- **Page 2 - Sales & Product Analysis**: Deep dive into product performance, discount strategies, and profitability.
- **Page 3 - Customer & Delivery Insights**: Customer segmentation, shipping method performance, and geo-based performance analysis.

Each page of the dashboard highlights different aspects of the business, from general performance metrics to detailed insights, supporting cross-departmental strategy alignment.

### **📊 Data Analysis**

**1. KPI Performance**

- Total Sales: $2,297,200.86
- Total Profit: $286,397.02
- Average Discount: 15.62%
- Orders: 9,994


**2. Sales & Profit Trends**

- Line Graph: Displayed monthly sales and profit from 2014 Q1 to 2018 Q1
- Q4 consistently showed peak sales due to holiday demand, while Q1 had the lowest sales, indicating a recurring seasonal pattern.


**3. Sales by Category**

- Donut Chart: Visualized sales share across categories:
    - Office Supplies: 36.4%
    - Furniture: 32.3%
    - Technology: 31.3%
- Despite Office Supplies leading sales, the categories are almost equally distributed, indicating no dominant category in sales performance.
- *Regional sales distribution was also analyzed to showcase key areas for growth.*


**4. Product Profitability & Top-Selling Products**

- Plotted top-selling products based on Sales.
- Sales vs Profit chart: High-selling products like *Tables* and *Machines* showed low or negative profit, highlighting a need for better margin management.
- A Product Performance Table displayed products with negative profits, marked in red, and sorted by sales volume.


**5. Discount Impact on Profitability**

- Scatter Plot: Analyzed the relationship between Discount Percentage and Profit.
    - Products like the *Canon imageCLASS Copier* showed high profit with low discount.
    - *Cubify CubeX 3D Printer* had high discount but low profit (negative), suggesting that discounts may harm profitability if not strategically applied.
- Bubble size represented sales volume for each product, showing which items had both high sales and low profit.


**6. Shipping Method Performance**

- **Stacked Bar Chart**: Compared **Quantity** and **Profit by Shipping Method**.
    - **Standard Class** was the most efficient, with the highest volume and profitability.
    - **Same Day**  shipping incurred higher costs with lower returns, indicating the need to reconsider this shipping strategy for cost-effectiveness


**7. City-Level Performance**

- Table: Ranked cities by sales:
    1. New York City
    2. Los Angeles
    3. Seattle
    4. San Francisco
    5. Detroit
- *New York City* and *Los Angeles* were the leading cities in terms of sales, indicating ideal areas for future marketing efforts.

**8. Loss-Making Products**

- Loss-Making Products Table: Highlighted products with negative profit for review.
- Products were prioritized based on sales volume and negative profit, helping the team target inefficient products.

### **🧠 Key Insights**

- Strong revenue ($2.3M) but a 12.5% profit margin, impacted by high discounts (15.6%).
- Q4 consistently shows peak sales, driven by holiday demand, while Q1 always shows the lowest sales performance.
- Office Supplies leads sales, but the sales distribution is fairly balanced across categories:
    - Technology: 31.3%, Furniture: 32.3%, Office Supplies: 36.4%
- High-selling products like Tables and Machines have low or negative profit.
- Discounting strategy needs review: Some products sell more but harm profitability, while others achieve high profit with no discount.
- Standard Class shipping is the most efficient, while Same Day incurs higher costs with lower returns.
- New York City and Los Angeles dominate city-level performance and are ideal for future targeting.
- Loss-making products were identified for review or removal.

### 📂 Data Source & Preparation

The dataset used in this project comes from Kaggle:

[Sample Superstore Dataset](https://www.kaggle.com/datasets/vivek468/superstore-dataset-final)

This dataset simulates a superstore’s sales and provides ample opportunities to analyze sales performance, customer behaviour, and operational efficiencies. Data cleaning was performed to handle missing values, outliers, and ensure consistency across various fields.

### 📝 Project Summary

In this project, I analyzed the sales performance of Superstore over four years (2014 Q1 – 2018 Q1) using Google Looker Studio. The interactive dashboard provides insights into:

1. Sales & Profit Trends: Seasonal trends, with Q4 seeing the highest sales and Q1 the lowest.
2. Product & Category Insights: Highlights of the most profitable categories and products, and identification of underperforming items.
3. Discount Strategy: Demonstrates the impact of discounts on profit and identifies the need for strategic discounting.
4. Shipping Efficiency: Insights into how different shipping methods affect profitability.
5. Customer Segments: New York and Los Angeles as key cities, with the Consumer Segment showing the highest sales.

The dashboard offers clear, actionable insights for various business functions such as marketing, product management, and logistics.

### 🚀 Project Conclusion

This project illustrates the power of data-driven decision-making in retail. The insights derived from sales, profitability, and shipping trends can help Superstore optimize its operations and drive future growth. Key learnings include the importance of seasonality, profitability analysis, and shipping cost optimization.

Future improvements could include real-time dashboard automation and incorporating additional data sources for deeper analysis.

### **🚀 How to Use**

1. Open the Dashboard via the link above.
2. Scroll through sections from general stats to deeper insights.
3. Hover over charts for specific data points

---

## Data Analysis Results

In this project, I performed various analyses to understand the impact of discounts on sales and profit.

### 1. A/B Test Results

We compared sales and profit for products with and without discounts:

- **Sales with Discount**: Average sales increased from 227 to 234 units.
- **Profit with Discount**: Profit decreased significantly from 67.7 to -7.5.

### 2. T-Test Results for Sales

We performed a t-test to determine if the difference in sales was statistically significant. The p-value for sales was **0.61**, indicating no significant difference in sales between products with and without discounts.

### 3. T-Test Results for Profit

For profit, the t-test resulted in a p-value of **< 2.2e-16**, which is less than 0.05, indicating that the difference in profit between discounted and non-discounted products is statistically significant.

### 4. Regression Analysis

We performed linear regression to understand how discounts affect profit:

- **Regression Coefficient for Discount**: The coefficient was **-256.79**, meaning that for each unit increase in discount, profit decreases by approximately 256.79.
- **R-squared**: The model explains about 5% of the variance in profit, suggesting that other factors may be influencing profit.

### 5. Optimal Discount Prediction

Based on the regression model, the optimal discount for maximizing profit was predicted to be **0** (i.e., no discount).

### 6. Regional Differences in Discount Impact

The analysis also showed that the effect of discounts varies by region:
- **East & South Regions**: Discounts have a more negative impact on profit.
- **West Region**: No significant effect of discounts on profit.
