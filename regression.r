####
#Topic 4: Regression analysis and machine learning in R

#Theory: Regression analysis is a statistical technique used to model the relationship between one or more predictor variables and a response variable. Linear regression is a common form of regression analysis that models the relationship between a continuous response variable and one or more predictor variables. In R, linear regression can be performed using the lm() function. R also has a wide range of packages and functions for performing more advanced regression techniques, such as logistic regression and polynomial regression. In addition, R has many packages and functions for machine learning, including classification and clustering algorithms.
####

# linear regression
data <- data.frame(
x = c(1, 2, 3, 4, 5),
y = c(2, 4, 6, 8, 10)
)
model <- lm(y ~ x, data = data)
summary(model)

# logistic regression
data <- data.frame(
x = c(1, 2, 3, 4, 5),
y = c(0, 1, 1, 0, 1)
)
model <- glm(y ~ x, data = data, family = "binomial")
summary(model)

# polynomial regression
data <- data.frame(
x = c(1, 2, 3, 4, 5),
y = c(2, 4, 6, 8, 10)
)
model <- lm(y ~ poly(x, 2), data = data)
summary(model)

# k-means clustering
data <- matrix(rnorm(100), ncol = 2)
kmeans(data, centers = 3)