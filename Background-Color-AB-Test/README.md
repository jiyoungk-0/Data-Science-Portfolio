# Analysis of Background Colour Impact on User Conversion

### **🔍 Project Overview**
This project analyzes the effect of changing a website’s background colour from white to black on user engagement, specifically focusing on conversion rates. By conducting an A/B test with two groups exposed to different background colours, we aim to determine if the design change significantly affects user behaviour and conversion performance.

### **💡 Why This Project**
In digital products, visual design changes can heavily influence user actions such as conversions. This experiment tests a simple but impactful UI modification to verify if altering the background colour improves conversion rates, helping guide data-driven UX design decisions.

### **🧩 Scope**

- Group A: Control group with white background

- Group B: Variant group with black background

- Analyze conversion rates, device-specific effects, and relationship with session metrics

- Statistical significance testing and data visualization

### **📊 Data Analysis**

#### 1. Conversion Rate Comparison

![bargraph](https://github.com/jiyoungk-0/Data-Science-Portfolio/blob/main/Background-colour-AB-Test/assets/bargraph.png)

- Group A (white): 5.4% conversion rate

- Group B (black): 14.1% conversion rate, ~2.6x higher

#### 2. Statistical Testing

- Proportion test confirms conversion rate difference is statistically significant (p < 2.2e-16)

#### 3. Device-Specific Results

- Both desktop and mobile users showed higher conversion rates in Group B

- Mobile conversion uplift was particularly notable

#### 4. Correlation Analysis

- Time spent on site and page views had negligible correlation with conversion

- Suggests visual design had more direct impact than session length or browsing depth

### **🔍 Key Insights**

- Changing the background colour to black significantly increases user conversions.

- The effect is consistent across devices, with stronger uplift on mobile users.

- Time spent and page views do not predict conversion, highlighting the importance of UI design elements.

### **📂 Data Source & Preparation**

- Synthetic dataset simulating user sessions with relevant features like user ID, group assignment, device type, location, session duration, and conversion flag.

- Data cleaning involved flagging conversion as binary for analysis and grouping users by experimental condition.

### **📝 Project Summary**
This project demonstrates how a simple UI change—background colour adjustment—can significantly impact key user engagement metrics. The A/B test setup, coupled with statistical validation and visualization, supports confident decision-making to implement the black background design. Additional experiments are suggested to explore location-based effects and other UI element optimizations.

### **🚀 Project Conclusion**
The black background design clearly outperforms the white background in driving conversions. This insight can guide UI/UX teams toward data-backed design improvements. Further testing is recommended before full deployment, especially considering the synthetic nature of the dataset.
