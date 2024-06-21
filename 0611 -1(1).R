# Load the required library
#install.packages("ggplot2")
library(ggplot2)

# Create the data frame
data <- data.frame(
  Month = c("Jan", "Feb", "March", "April", "May", "Jun", "July", "August", "Sep", "Oct", "Nov", "Dec"),
  Economic_Condition = c("Good", "Good", "Good", "Good", "Fair", "Fair", "Good", "Bad", "Fair", "Good", "Bad", "Fair"),
  Unemployment_Rate = c(10.7, 9.8, 10.2, 11.2, 15.75, 17.8, 19.4, 25.6, 18.6, 15.6, 26.7, 19.5)
)

# Aggregate the data by economic condition and month
data_aggregated <- aggregate(Unemployment_Rate ~ Economic_Condition + Month, data, sum)

# Create the stacked bar plot
ggplot(data_aggregated, aes(x = Economic_Condition, y = Unemployment_Rate, fill = Month)) +
  geom_bar(stat = "identity") +
  ggtitle("Unemployment Rate by Economic Condition and Month") +
  xlab("Economic Condition") +
  ylab("Unemployment Rate (%)") +
  theme_minimal() +
  scale_fill_brewer(palette = "Set3") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))