# Load necessary libraries
library(dplyr)

# Load the dataset
ab_testing <- read.csv("~/ab_testing.csv")

# Create a binary conversion flag (1 if converted, 0 otherwise)
ab_testing <- ab_testing %>%
  mutate(
    Conversion_Flag = ifelse(Conversion == "Yes", 1, 0)
  )

# Summarize conversion rate by group
ab_summary <- ab_testing %>%
  group_by(Group) %>%
  summarise(
    Users = n(),
    Conversions = sum(Conversion_Flag),
    Conversion_Rate = round(mean(Conversion_Flag), 4)
  )

print(ab_summary)

# Statistical significance test (2-proportion z-test)
conversion_counts <- ab_summary$Conversions
group_sizes <- ab_summary$Users

test_result <- prop.test(conversion_counts, group_sizes, correct = FALSE)
print(test_result)

# Load visualization libraries
library(ggplot2)
library(scales)

# Bar plot of conversion rates by group
ggplot(ab_summary, aes(x = Group, y = Conversion_Rate, fill = Group)) +
  geom_bar(stat = "identity", width = 0.6) +
  geom_text(aes(label = percent(Conversion_Rate, accuracy = 0.1)), 
            vjust = -0.5, size = 4) +
  scale_y_continuous(labels = percent, limits = c(0, 0.2)) +
  labs(title = "Conversion Rate by A/B Group", y = "Conversion Rate", x = "Group") +
  theme_minimal()

# Conversion rate by device type and group
ab_testing %>%
  group_by(Device, Group) %>%
  summarise(
    Conversions = sum(Conversion_Flag),
    Total = n(),
    Conversion_Rate = mean(Conversion_Flag)
  )

# Correlation between conversion and other metrics
cor(ab_testing$Page.Views, ab_testing$Conversion_Flag)   # Correlation with page views
cor(ab_testing$Time.Spent, ab_testing$Conversion_Flag)   # Correlation with time spent
