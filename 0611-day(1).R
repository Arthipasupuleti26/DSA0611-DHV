# Load required library
library(ggplot2)

# Define the data frame
data <- data.frame(
  ID = c('1', '2', '3', '4', '5'),  # IDs as character for display purpose
  SCORE = c(85, 92, 78, 88, 90)     # Scores as numeric values
)

# Histogram of Score
histogram <- ggplot(data = data, aes(x = SCORE)) +
  geom_histogram(bins = 10, fill = "skyblue", color = "black", alpha = 0.7) +
  labs(title = "Histogram of Scores", x = "Score", y = "Frequency")

# Display the histogram
print(histogram)


# boxplot  of Score
boxplot <- ggplot(data = data, aes(y = SCORE)) +
  geom_boxplot(fill = "skyblue", color = "black") +
  labs(title = "boxplot of Scores", y = "Score")

# Display the boxplot 
print(boxplot)

# Density plot of Score
density_plot <- ggplot(data = data, aes(x = SCORE)) +
  geom_density(fill = "lightseagreen", alpha = 0.7) +
  labs(title = "Density Plot of Scores", x = "Score", y = "Density")

# Display the density plot
print(density_plot)


# Load required library
library(ggplot2)

# Define the data frame
data <- data.frame(
  ID = c('1', '2', '3', '4', '5'),  # IDs as character for display purpose
  SCORE = c(85, 92, 78, 88, 90)     # Scores as numeric values
)

# Violin plot of Score
violin_plot <- ggplot(data = data, aes(x = "", y = SCORE)) +
  geom_violin(fill = "orchid", alpha = 0.7) +
  labs(title = "Violin Plot of Scores", x = "", y = "Score")

# Display the violin plot
print(violin_plot)


# Categorize scores into ranges
score_ranges <- cut(data$SCORE, breaks = c(0, 50, 100), labels = c("0-50", "51-100"), include.lowest = TRUE)

# Create a data frame with score ranges and their counts
score_counts <- table(score_ranges)

# Convert to data frame
score_counts_df <- as.data.frame(score_counts)

# Rename columns
colnames(score_counts_df) <- c("Score Range", "Count")

# Bar chart of score ranges
bar_chart <- ggplot(data = score_counts_df, aes(x = `Score Range`, y = Count, fill = `Score Range`)) +
  geom_bar(stat = "identity", color = "black") +
  labs(title = "Count of Scores in Different Ranges", x = "Score Range", y = "Count") +
  scale_fill_manual(values = c("lightcoral", "lightblue"), guide = FALSE) +  # Optional: custom fill colors
  theme_minimal()

# Display the bar chart
print(bar_chart)
