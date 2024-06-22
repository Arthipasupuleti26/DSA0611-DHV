# Load necessary libraries (optional for enhanced visuals)
library(ggplot2)

# Create the data frame
data <- data.frame(
  ID = 1:5,
  X1 = c(5, 7, 6, 8, 4),
  X2 = c(10, 12, 11, 9, 13),
  X3 = c(15, 14, 13, 16, 17)
)

# Create pairwise scatter plot matrix using pairs()
pairs(data[, -1], main = "Pairwise Scatter Plot Matrix")

# If you want to use ggplot2 for more customization:
# ggplot(data, aes(x = X1, y = X2)) +
#   geom_point() +
#   labs(x = "X1", y = "X2") +
#   theme_minimal()
# 
# Repeat for other pairs (X1 vs X3, X2 vs X3) if desired
# Load necessary library
library(scatterplot3d)

# Create the data frame
data <- data.frame(
  ID = c(1, 2, 3, 4, 5),
  X1 = c(5, 7, 6, 8, 4),
  X2 = c(10, 12, 11, 9, 13),
  X3 = c(15, 14, 13, 16, 17)
)

# Create 3D scatter plot
scatterplot3d(data$X1, data$X2, data$X3, 
              color = "blue",   # Point color
              pch = 16,         # Point shape (solid circle)
              main = "3D Scatter Plot of X1, X2, and X3",
              xlab = "X1", ylab = "X2", zlab = "X3")
# Load necessary library
library(ggplot2)

# Create the data frame
data <- data.frame(
  ID = 1:5,
  X1 = c(5, 7, 6, 8, 4),
  X2 = c(10, 12, 11, 9, 13),
  X3 = c(15, 14, 13, 16, 17)
)

# Reshape data into long format for ggplot
data_long <- tidyr::pivot_longer(data, cols = starts_with("X"), names_to = "Variable", values_to = "Value")

# Plotting using ggplot2
ggplot(data_long, aes(x = Variable, y = Value, group = ID, color = as.factor(ID))) +
  geom_line(alpha = 0.5) +
  labs(title = "Parallel Coordinates Plot of X1, X2, and X3",
       x = "Variable",
       y = "Value",
       color = "ID") +
  theme_minimal()
# Load necessary libraries
library(fmsb)

# Create the data frame
data <- data.frame(
  ID = c(1, 2, 3, 4, 5),
  X1 = c(5, 7, 6, 8, 4),
  X2 = c(10, 12, 11, 9, 13),
  X3 = c(15, 14, 13, 16, 17)
)

# Subset data for ID 1
id1_data <- data[data$ID == 1, c("X1", "X2", "X3")]

# Create radar chart
radarchart(id1_data, axistype = 1, # Customize axis style
           seg = 5, # Number of segments
           pcol = c("#FF6347", "#4B0082", "#00FF00"), # Color for each variable
           plwd = 2, # Width of the polygon border
           plty = 1, # Type of the polygon border
           cglcol = "grey", # Color of the grid lines
           cglty = 1, # Type of the grid lines
           axislabcol = "black", # Color of the axis labels
           vlcex = 0.8, # Size of the axis labels
           caxislabels = seq(0, 20, by = 5), # Customize axis labels
           title = "Radar Chart for ID 1", # Title of the radar chart
           maxmin = TRUE # Show maximum and minimum values on axis
)
# Load necessary libraries
library(corrplot)

# Create the data frame
data <- data.frame(
  ID = c(1, 2, 3, 4, 5),
  X1 = c(5, 7, 6, 8, 4),
  X2 = c(10, 12, 11, 9, 13),
  X3 = c(15, 14, 13, 16, 17)
)

# Calculate correlation matrix
cor_matrix <- cor(data[, c("X1", "X2", "X3")])

# Create the heatmap of correlations
corrplot(cor_matrix, method = "color", type = "upper", 
         addrect = 3, # add rectangles for clarity
         tl.col = "black", # text color of legend
         tl.srt = 45) # angle of text