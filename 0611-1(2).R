library(ggplot2)
month <- c('Jan', 'Feb', 'March', 'April', 'May', 'Jun', 'July', 'August', 'Sep', 'Oct', 'Nov', 'Dec')
economic_condition <- c('Good', 'Good', 'Good', 'Good', 'Fair', 'Fair', 'Good', 'Bad', 'Fair', 'Good', 'Bad', 'Fair')
unemployment_rate <- c(10.7, 9.8, 10.2, 11.2, 15.75, 17.8, 19.4, 25.6, 18.6, 15.6, 26.7, 19.5)
df <- data.frame(month = month, economic_condition = economic_condition, unemployment_rate = unemployment_rate)
p <- ggplot(df, aes(x = "", fill = economic_condition)) +
  geom_bar(width = 1) +
  coord_polar("y", start = 0) +
  labs(title = 'Pie Chart of Economic Conditions') +
  theme_void() +
  theme(legend.position = "right")
print(p)
