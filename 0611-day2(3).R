# Load necessary library
library(ggplot2)

# Create the data frame
data <- data.frame(
  Date = as.Date(c("2023-01-01", "2023-02-01", "2023-03-01", "2023-04-01", "2023-05-01")),
  Sales = c(100, 120, 150, 130, 140)
)

# Plotting using ggplot2
ggplot(data, aes(x = Date, y = Sales)) +
  geom_line(color = "blue") +
  labs(title = "Sales Over Time",
       x = "Date",
       y = "Sales") +
  theme_minimal()
# Load necessary libraries
library(ggplot2)
library(dplyr)

# Create the data frame
data <- data.frame(
  Date = as.Date(c("2023-01-01", "2023-02-01", "2023-03-01", "2023-04-01", "2023-05-01")),
  Sales = c(100, 120, 150, 130, 140)
)

# Extract month and year from Date
data <- data %>%
  mutate(Month = format(Date, "%Y-%m"))

# Calculate monthly average Sales
monthly_avg <- data %>%
  group_by(Month) %>%
  summarise(avg_sales = mean(Sales))

# Plotting using ggplot2
ggplot(monthly_avg, aes(x = Month, y = avg_sales)) +
  geom_bar(stat = "identity", fill = "skyblue") +
  labs(title = "Monthly Average Sales",
       x = "Month",
       y = "Average Sales") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))
# Load necessary libraries
library(ggplot2)
library(ggfortify)
library(lubridate)

# Create the time series data
sales <- data.frame(
  Date = as.Date(c("2023-01-01", "2023-02-01", "2023-03-01", "2023-04-01", "2023-05-01")),
  Sales = c(100, 120, 150, 130, 140)
)

# Convert to time series object
sales_ts <- ts(sales$Sales, frequency = 12, start = decimal_date(as.Date("2023-01-01")))

# Decompose the time series
sales_decomposed <- stl(sales_ts, s.window = "periodic")

# Plot the decomposition
autoplot(sales_decomposed) +
  labs(title = "Seasonal Decomposition of Sales",
       y = "Sales",
       subtitle = "Time Series Decomposed into Seasonal, Trend, and Residual Components")
# Load necessary libraries
library(ggplot2)
library(dplyr)

# Create the data frame
data <- data.frame(
  Date = as.Date(c("2023-01-01", "2023-02-01", "2023-03-01", "2023-04-01", "2023-05-01")),
  Sales = c(100, 120, 150, 130, 140)
)

# Create lagged variables
data <- data %>%
  mutate(Sales_lag1 = lag(Sales, 1))

# Plotting using ggplot2
ggplot(data, aes(x = Sales_lag1, y = Sales)) +
  geom_point() +
  labs(title = "Lag Plot of Sales (Autocorrelation)",
       x = "Sales (lagged by 1 month)",
       y = "Sales") +
  theme_minimal()
# Load necessary libraries
library(ggplot2)
library(zoo)

# Create the data frame
data <- data.frame(
  Date = as.Date(c("2023-01-01", "2023-02-01", "2023-03-01", "2023-04-01", "2023-05-01")),
  Sales = c(100, 120, 150, 130, 140)
)

# Plotting using ggplot2
ggplot(data, aes(x = Date, y = Sales)) +
  geom_line(color = "blue") +
  geom_smooth(method = "loess", se = FALSE, color = "red") +  # Adding smoothed line
  labs(title = "Time Series Plot of Sales with Smoothed Line",
       x = "Date",
       y = "Sales") +
  theme_minimal()