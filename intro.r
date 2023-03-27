####
#Topic 1: Introduction to R and data visualization

# Theory: R is a programming language that is commonly used for statistical analysis and data visualization. In R, data is typically stored in objects called data frames, which are similar to tables in a spreadsheet. R has a wide range of functions and packages that can be used to create visualizations of data, such as scatter plots, line charts, and histograms. R's graphics capabilities are highly customizable, allowing for the creation of complex and detailed visualizations.
####

# create a simple scatter plot
x <- c(1, 2, 3, 4, 5)
y <- c(1, 4, 9, 16, 25)
plot(x, y)

# create a histogram
data <- rnorm(1000) # generate 1000 random numbers
hist(data, breaks = 20)

# create a bar chart
fruits <- c("Apple", "Banana", "Orange")
counts <- c(10, 20, 15)
barplot(counts, names.arg = fruits)