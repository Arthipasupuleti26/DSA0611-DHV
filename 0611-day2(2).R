# Load required libraries
library(ggplot2)
library(vcd)

# Sample data
df <- data.frame(
  ID = 1:5,
  Gender = c("Male", "Female", "Male", "Female", "Male"),
  Education = c("Graduate", "Undergrad", "High School", "Graduate", "Undergrad"),
  Occupation = c("Engineer", "Teacher", "Doctor", "Lawyer", "Artist")
)

# 1. Bar plot of Gender counts
gender_counts <- table(df$Gender)
barplot(gender_counts, main = "Count of each Gender", xlab = "Gender", ylab = "Count", col = "skyblue")

# 2. Pie chart of Education distribution
education_counts <- table(df$Education)
pie(education_counts, main = "Distribution of Education Levels", col = rainbow(length(education_counts)),
    labels = education_counts, cex = 0.8)

# 3. Stacked bar plot of Occupation by Gender
occupation_by_gender <- table(df$Gender, df$Occupation)
barplot(occupation_by_gender, main = "Count of each Occupation by Gender", xlab = "Gender", ylab = "Count", 
        col = c("skyblue", "pink"), legend = rownames(occupation_by_gender))

# 4. Mosaic plot of Education vs Occupation
mosaicplot(table(df$Education, df$Occupation), main = "Association between Education and Occupation", shade = TRUE)

# 5. Grouped bar plot of Gender counts across Education levels
gender_education_counts <- table(df$Gender, df$Education)
barplot(gender_education_counts, beside = TRUE, main = "Count of Gender across Education Levels", 
        xlab = "Education", ylab = "Count", col = c("blue", "red"),
        legend = rownames(gender_education_counts))