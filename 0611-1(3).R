library(ggplot2)
# Grouped Bar Plot
ggplot(data, aes(x = Month, y = Unemployment_Rate, fill = Economic_Condition)) +
  geom_bar(stat = 'identity', position = 'dodge') +
  labs(title = 'Grouped Bar Plot of Unemployment Rate by Month and Economic Condition', 
       x = 'Month', y = 'Unemployment Rate (%)') +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  scale_fill_brewer(palette = 'Set3')
