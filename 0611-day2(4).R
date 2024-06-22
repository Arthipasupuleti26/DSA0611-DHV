# Load necessary libraries
library(ggplot2)
library(ggmap)

# Create the data frame with geospatial data
cities <- data.frame(
  City = c("New York", "Los Angeles", "Chicago", "Houston", "Phoenix"),
  Latitude = c(40.7128, 34.0522, 41.8781, 29.7604, 33.4484),
  Longitude = c(-74.0060, -118.2437, -87.6298, -95.3698, -112.0740),
  Population = c(8398748, 3990456, 2705994, 2325502, 1660272)
)

# Get the base map using ggmap
map <- get_map(location = c(lon = mean(cities$Longitude), lat = mean(cities$Latitude)), zoom = 4, maptype = "terrain")

# Plotting using ggmap and ggplot2
ggmap(map) +
  geom_point(data = cities, aes(x = Longitude, y = Latitude, size = sqrt(Population)), color = "red", alpha = 0.6) +
  scale_size_continuous(range = c(3, 10), breaks = seq(0, 9000000, by = 2000000), labels = scales::comma_format()) +
  labs(title = "Cities Scatter Plot Based on Latitude and Longitude",
       x = "Longitude",
       y = "Latitude",
       size = "Population") +
  theme_minimal()
#Load necessary libraries
library(ggplot2)
library(maps)
#install.packages("ggmap")
library(ggmap)
library(dplyr)
install.packages("viridis")
library(viridis)

# Create a data frame with the given data
data_geo <- data.frame(
  City = c("New York", "Los Angeles", "Chicago", "Houston", "Phoenix"),
  Latitude = c(40.7128, 34.0522, 41.8781, 29.7604, 33.4484),
  Longitude = c(-74.0060, -118.2437, -87.6298, -95.3698, -112.0740),
  Population = c(8398748, 3990456, 2705994, 2325502, 1660272)
)

# Get the base map
usa_map <- map_data("state")

# Scatter plot of cities on a map based on Latitude and Longitude
ggplot() +
  geom_polygon(data = usa_map, aes(x = long, y = lat, group = group), fill = "lightgray", color = "white") +
  geom_point(data = data_geo, aes(x = Longitude, y = Latitude), color = "red", size = 3) +
  ggtitle("Scatter Plot of Cities on Map") +
  xlab("Longitude") +
  ylab("Latitude")

# Bubble map where bubble size represents Population
ggplot() +
  geom_polygon(data = usa_map, aes(x = long, y = lat, group = group), fill = "lightgray", color = "white") +
  geom_point(data = data_geo, aes(x = Longitude, y = Latitude, size = Population), color = "blue", alpha = 0.5) +
  scale_size_continuous(range = c(3, 10)) +
  ggtitle("Bubble Map of Population") +
  xlab("Longitude") +
  ylab("Latitude")
# Load necessary libraries
library(ggplot2)
library(maps)
#install.packages("ggmap")
library(ggmap)
library(dplyr)
install.packages("viridis")
library(viridis)

# Create a data frame with the given data
data_geo <- data.frame(
  City = c("New York", "Los Angeles", "Chicago", "Houston", "Phoenix"),
  Latitude = c(40.7128, 34.0522, 41.8781, 29.7604, 33.4484),
  Longitude = c(-74.0060, -118.2437, -87.6298, -95.3698, -112.0740),
  Population = c(8398748, 3990456, 2705994, 2325502, 1660272)
)
# Choropleth map of Population by city (Note: Typically choropleth maps are used for areas, here we will adjust it for cities)
ggplot(data_geo, aes(map_id = City)) +
  geom_map(aes(fill = Population), map = usa_map) +
  expand_limits(x = usa_map$long, y = usa_map$lat) +
  geom_point(aes(x = Longitude, y = Latitude), color = "red", size = 3) +
  scale_fill_viridis(option = "C") +
  ggtitle("Choropleth Map of Population by City") +
  xlab("Longitude") +
  ylab("Latitude")
# Load necessary library
library(ggplot2)

# Create the data frame
data <- data.frame(
  City = c("New York", "Los Angeles", "Chicago", "Houston", "Phoenix"),
  Latitude = c(40.7128, 34.0522, 41.8781, 29.7604, 33.4484),
  Longitude = c(-74.0060, -118.2437, -87.6298, -95.3698, -112.0740),
  Population = c(8398748, 3990456, 2705994, 2325502, 1660272)
)

# Sort the data by Population and select the top 5 cities
top_cities <- data[order(data$Population, decreasing = TRUE), ]
top_cities <- head(top_cities, 5)

# Plotting using ggplot2
ggplot(top_cities, aes(x = reorder(City, -Population), y = Population)) +
  geom_bar(stat = "identity", fill = "skyblue") +
  labs(title = "Top 5 Cities by Population",
       x = "City",
       y = "Population") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))  # Rotate x-axis labels for better readability
ggplot(data_geo, aes(x = Longitude, y = Latitude)) +
  geom_density2d(aes(color = ..level..)) +
  geom_point(aes(size = Population), color = "red") +
  scale_color_viridis() +
  ggtitle("Heatmap of City Population Density") +
  xlab("Longitude") +
  ylab("Latitude") +
  theme_minimal()
# Load necessary libraries
library(ggplot2)
library(maps)
#install.packages("ggmap")
library(ggmap)
library(dplyr)
#install.packages("viridis")
library(viridis)

# Create a data frame with the given data
data_geo <- data.frame(
  City = c("New York", "Los Angeles", "Chicago", "Houston", "Phoenix"),
  Latitude = c(40.7128, 34.0522, 41.8781, 29.7604, 33.4484),
  Longitude = c(-74.0060, -118.2437, -87.6298, -95.3698, -112.0740),
  Population = c(8398748, 3990456, 2705994, 2325502, 1660272))