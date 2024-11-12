library(ggplot2)
library(dplyr)

# This is the custom dataset
data <- data.frame(
  Name = c("Alice", "Bob", "Charlie", "David", "Eve"),
  Age = c(25, 30, 22, 28, 24),
  City = c("New York", "London", "Paris", "Tokyo", "Sydney"),
  Salary = c(60000, 75000, 55000, 80000, 65000)
)

# Data Summary
summary(data) 

data %>%
  group_by(City) %>%
  summarize(mean_salary = mean(Salary)) # For average salary by city

# Visualize the data
ggplot(data, aes(x = City, y = Salary)) +
  geom_bar(stat = "identity") +
  labs(title = "Average Salary by City", x = "City", y = "Salary")

ggplot(data, aes(x = Age, y = Salary, color = City)) +
  geom_point() +
  labs(title = "Age vs. Salary", x = "Age", y = "Salary")

ggplot(data, aes(x = Salary)) +
  geom_histogram() +
  labs(title = "Salary Distribution", x = "Salary", y = "Frequency")

