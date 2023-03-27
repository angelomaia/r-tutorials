# This code demonstrates some basic procedures in R

# Create a vector of numbers from 1 to 10
vec <- 1:10

# Print the vector to the console
print(vec)

# Add 5 to each element in the vector
vec_plus_5 <- vec + 5

# Print the new vector to the console
print(vec_plus_5)

# Create a matrix with 3 rows and 4 columns
mat <- matrix(1:12, nrow = 3, ncol = 4)

# Print the matrix to the console
print(mat)

# Calculate the mean of each row in the matrix
row_means <- apply(mat, 1, mean)

# Print the row means to the console
print(row_means)

# Calculate the sum of each column in the matrix
col_sums <- apply(mat, 2, sum)

# Print the column sums to the console
print(col_sums)

# Create a list with three elements
lst <- list("apple", 3.14, TRUE)

# Print the list to the console
print(lst)

# Access the second element in the list
second_elem <- lst[[2]]

# Print the second element to the console
print(second_elem)

# Create a data frame with three columns
df <- data.frame(name = c("Alice", "Bob", "Charlie"),
                 age = c(25, 30, 35),
                 gender = c("F", "M", "M"))

# Print the data frame to the console
print(df)

# Subset the data frame to include only females
female_df <- subset(df, gender == "F")

# Print the female data frame to the console
print(female_df)

# Create a scatter plot of age vs. name for the original data frame
plot(df$age, df$name, main = "Age vs. Name", xlab = "Age", ylab = "Name")

# Add a legend to the plot
legend("topright", legend = c("Female", "Male"), col = c("red", "blue"), pch = 16)

# Add a title to the plot
title(main = "Age vs. Name", sub = "Gender indicated by color")

# Install and load the ggplot2 library for creating more complex plots
install.packages("ggplot2")
library(ggplot2)

# Create a scatter plot of age vs. name for the original data frame using ggplot2
ggplot(data = df, aes(x = age, y = name, color = gender)) +
  geom_point() +
  scale_color_manual(values = c("red", "blue")) +
  labs(title = "Age vs. Name", subtitle = "Gender indicated by color", x = "Age", y = "Name")

# Create a histogram of ages for the original data frame using ggplot2
ggplot(data = df, aes(x = age)) +
  geom_histogram(binwidth = 5, fill = "steelblue") +
  labs(title = "Histogram of Ages", x = "Age", y = "Frequency")

# Calculate the correlation between age and gender in the original data frame
cor(df$age, as.numeric(df$gender))

# Calculate the standard deviation of ages in the original data frame
sd(df$age)

# Calculate the median age in the original data frame
median(df$age)

# Create a new data frame by joining the original data frame with a second data frame containing salary information
salary_df <- data.frame(name = c("Alice", "Bob", "Charlie"),
                        salary = c(50000, 60000, 70000))
merged_df <- merge(df, salary_df, by = "name")

# Print the merged data frame to the console
print(merged_df)

# Calculate the average salary for each gender in the merged data frame
aggregate(salary ~ gender, data = merged_df, mean)

# Create a function that calculates the area of a circle given its radius
circle_area <- function(radius) {
  pi * radius^2
}

# Call the function with a radius of 5
circle_area(5)
