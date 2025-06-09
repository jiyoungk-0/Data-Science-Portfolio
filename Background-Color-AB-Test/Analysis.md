# Analyzing the Impact of Website Background Colour on User Behaviour

## Project Overview

### **Objective:**
The goal of this analysis is to evaluate whether changing the website background colour from white (control) to black (variant) leads to a significant improvement in user engagement, specifically in conversion rates.

### **Motivation:**
To validate the effectiveness of UI/UX changes based on user behaviour data and explore potential for implementation in real-world services.

### **Approach:**
1. **A/B Testing**: Users were split into two groups based on background colour. We calculated the conversion rate for each group.

2. **Proportion Test**: We performed a two-sample proportion test to determine if the difference in conversion rates between groups was statistically significant.

3. **Visualization**: Conversion rates were visualized using bar charts for clear comparison.

4. **Segment Analysis**: We compared conversion rates by device type (mobile vs desktop).

5. **Correlation Analysis**: We computed correlation between conversions and both time spent and pages viewed to evaluate other influencing factors.

---

## Dataset Description

- **Source**: Synthetic data generated using NumPy
- **Dataset Name**: AB Testing Practice
- **Author**: Adarsh Anil Kumar, *AB Testing Practice*, Kaggle, 2024  
  [Kaggle Dataset Link](https://www.kaggle.com/datasets/adarsh0806/ab-testing-practice)

### Key Features:

| Column         | Description                                                   |
|----------------|---------------------------------------------------------------|
| `User.ID`      | Unique user identifier                                        |
| `Group`        | A: White background (Control) / B: Black background (Variant) |
| `Page.Views`   | Number of pages viewed during session                         |
| `Time.Spent`   | Time spent on the website (in seconds)                        |
| `Conversion`   | Whether the user converted (Yes/No)                           |
| `Device`       | Device type (Mobile/Desktop)                                  |
| `Location`     | User's region within the UK (e.g., England, Wales, Scotland etc.)  |

---

## A/B Test Analysis

### Step 1: Conversion Rate by Group

| Group | Users | Conversions | Conversion Rate |
|-------|--------|-------------|------------------|
| A     | 2,519  | 136         | 5.4%             |
| B     | 2,481  | 349         | 14.1%            |

- Group B (Black background) had 2.6x higher conversion rate compared to Group A.

---

### Step 2: Statistical Significance Test (`prop.test`)

```r
2-sample test for equality of proportions without continuity correction

data:  conversion_counts out of group_sizes
X-squared = 107.22, df = 1, p-value < 2.2e-16
alternative hypothesis: two.sided
95 percent confidence interval:
 -0.10295993 -0.07039888
sample estimates:
    prop 1     prop 2 
0.05398968 0.14066909
```

- p-value < 2.2e-16 indicates a statistically significant difference.
- Conclusion: The black background had a positive effect on conversion rates.

---

### Step 3: Conversion Rate Comparison by Group
![bargraph](https://github.com/jiyoungk-0/Data-Science-Portfolio/blob/main/Background-Color-AB-Test/assets/bargraph.png)
- Conversion rate in Group B is significantly higher than Group A (14.1% vs 5.4%).

---

### Step 4: Detailed Insights
#### Conversion Rate by Devide Type

| Device | Group | Conversion Rate |
|-------|--------|------------- |
| Desktop    | A  | 5.9%         | 
| Desktop     | B  | 13.9%         | 
| Mobile    | A  | 4.9%         | 
| Mobile     | B  | 14.2%         | 

- Conversion rates increased across all devices for Group B.
- Notably higher impact on mobile users.

####  Correlation with Time and Page Views

```r
# Correlation with page views
cor(ab_testing$Page.Views, ab_testing$Conversion_Flag)
# -0.0183

# Correlation with time spent
cor(ab_testing$Time.Spent, ab_testing$Conversion_Flag)
# 0.0021
```

- Weak correlation between conversion and either page views or time spent.
- Suggests UI design had more direct influence than session behaviour.

---

### Key Findings:

- The black background group (B) showed a 14.1% conversion rate, compared to 5.4% for the white background group (A).

- The difference was statistically significant (p < 2.2e-16).

- The conversion increase was consistent across both desktop and mobile devices, with a slightly stronger effect on mobile.

- Time spent and page views had almost no correlation with conversion, suggesting the visual design was a more direct influence.

---

### Conclusions & Recommendations

- Switching to a black background significantly increased conversions.

- Recommended to adopt this design change, with caution due to synthetic data.

- Further experiments suggested:

  - Location-based A/B test to examine regional behaviour differences.

  - Test additional UI components (text color, button style, layout).

  - Analyze conversions by time of day or weekday.

