####
#Topic 3: Inferential statistics and hypothesis testing

#Theory: Inferential statistics are used to draw conclusions about a population based on a sample of data. Hypothesis testing is a common inferential statistical technique used to determine whether there is enough evidence to support a claim about a population. The basic steps in hypothesis testing include specifying a null hypothesis, collecting data, calculating a test statistic, and determining the probability of obtaining the observed test statistic if the null hypothesis is true. R provides a wide range of functions for performing hypothesis testing, such as t.test() and chisq.test().
####

# one-sample t-test
data <- c(10, 12, 14, 16, 18)
t.test(data, mu = 15)

# two-sample t-test
data1 <- c(10, 12, 14, 16, 18)
data2 <- c(11, 13, 15, 17, 19)
t.test(data1, data2)

# chi-squared test of independence
data <- matrix(c(10, 20, 30, 40, 50, 60), nrow = 2)
chisq.test(data)

# ANOVA
data <- data.frame(
group = rep(c("A", "B", "C"), each = 5),
value = c(10, 12, 14, 16, 18, 15, 18, 21, 24, 27, 20, 22, 24, 26, 28)
)
aov(value ~ group, data = data)