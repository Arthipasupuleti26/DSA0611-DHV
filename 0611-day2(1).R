# Create a data frame
data <- data.frame(
  ID = c(1, 2, 3, 4, 5),
  Age = c(25, 30, 28, 35, 40),
  Height = c(175, 180, 170, 165, 185),
  Weight = c(70, 80, 65, 75, 90)
)

# Create a scatter plot
plot(data$Age, data$Weight,
     main = "Scatter Plot of Age vs Weight",
     xlab = "Age",
     ylab = "Weight",
     pch = 19,        # Plotting symbol
     col = "blue")    # Color of points
# Install and load ggplot2 package if not already installed
if (!require(ggplot2)) install.packages("ggplot2", dependencies = TRUE)
library(ggplot2)

# Create a data frame with the given data
data <- data.frame(
  ID = c(1, 2, 3, 4, 5),
  Age = c(25, 30, 28, 35, 40),
  Height = c(175, 180, 170, 165, 185),
  Weight = c(70, 80, 65, 75, 90)
)

# Generate a histogram of the Height
ggplot(data, aes(x = Height)) +
  geom_histogram(binwidth = 5, fill = "blue", color = "black") +
  labs(title = "Histogram of Heights", x = "Height (cm)", y = "Frequency") +
  theme_minimal()
# Load necessary library
library(ggplot2)

# Create the dataframe
data <- data.frame(
  ID = c(1, 2, 3, 4, 5),
  Age = c(25, 30, 28, 35, 40),
  Height = c(175, 180, 170, 165, 185),
  Weight = c(70, 80, 65, 75, 90)
)

# Plot the line chart
ggplot(data, aes(x = ID, y = Weight)) +
  geom_line(color = "blue") +
  geom_point(color = "red") +
  labs(title = "Changes in Weight over IDs",
       x = "ID",
       y = "Weight (kg)") +
  theme_minimal()
# Create a data frame with the given data
data <- data.frame(
  ID = c(1, 2, 3, 4, 5),
  Age = c(25, 30, 28, 35, 40),
  Height = c(175, 180, 170, 165, 185),
  Weight = c(70, 80, 65, 75, 90)
)

# Load the ggplot2 package for creating the box plot
# Install ggplot2 package if not already installed
if (!require(ggplot2)) {
  install.packages("ggplot2")
  library(ggplot2)
}

# Create the box plot for Age
ggplot(data, aes(y = Age)) +
  geom_boxplot() +
  labs(title = "Box Plot of Age", y = "Age") +
  theme_minimal()
# Sample data
data <- data.frame(
  ID = c(1, 2, 3, 4, 5),
  Age = c(25, 30, 28, 35, 40),
  Height = c(175, 180, 170, 165, 185),
  Weight = c(70, 80, 65, 75, 90)
)

# Load necessary library
library(ggplot2)

# Create a density plot of the Height variable
ggplot(data, aes(x = Height)) +
  geom_density(fill = "blue", alpha = 0.5) +
  labs(title = "Density Plot of Height",
       x = "Height (cm)",
       y = "Density") +
  theme_minimal()