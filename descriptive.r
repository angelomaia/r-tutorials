####
#Topic 2: Descriptive statistics and data manipulation

#Theory: Descriptive statistics are used to describe and summarize data. Measures of central tendency, such as mean, median, and mode, are used to describe the center of a distribution, while measures of dispersion, such as standard deviation and variance, are used to describe the spread of a distribution. R provides a wide range of functions to calculate these statistics, as well as functions to manipulate and summarize data. These functions include filtering, sorting, summarizing, and merging data frames.
####

# calculate mean, median, and mode
data <- c(10, 20, 30, 40, 50)
mean(data)
median(data)
mode(data) # mode function needs to be defined first
mode <- function(x) {
ux <- unique(x)
ux[which.max(tabulate(match(x, ux)))]
}

# calculate standard deviation and variance
data <- c(10, 20, 30, 40, 50)
sd(data)
var(data)

# filter data frame
df <- data.frame(x = c(1, 2, 3, 4, 5), y = c(2, 4, 6, 8, 10))
subset(df, x > 3)

# summarize data frame
aggregate(y ~ x, data = df, FUN = mean)

# merge data frames
df1 <- data.frame(x = c(1, 2, 3), y = c(2, 4, 6))
df2 <- data.frame(x = c(2, 3, 4), z = c(8, 10, 12))
merge(df1, df2, by = "x")