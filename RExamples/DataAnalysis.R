# Date: 15/03, Purpose: MS4034 Lab 7
#Want to predict the popularity of a song

#rnorm generates random data from a normal distribution

library(tidyverse)

# set seed and generate sample
set.seed(1)
norm_sample <- rnorm(n = 100, mean = 5, sd = 1)

# create histogram of sample
norm_sample %>%
  data.frame() %>%
  ggplot(aes(x = norm_sample)) + geom_histogram(bins = 20,
     color = "black", fill = "red") + xlab("Simulated values") +
  ylab("Frequencies") + ggtitle("Normal distribution simulations") +
  theme_bw()


#Simulating data from an exponential distribution
# set seed and generate sample
set.seed(1)
exp_sample <- rexp(n = 100, rate = 2)
# create histogram of sample
exp_sample %>%
  data.frame() %>%
  ggplot(aes(x = exp_sample)) + geom_histogram(bins = 15, color = "black",
                                               fill = "red") + xlab("Simulated values") + ylab("Frequencies") +
  ggtitle("Exponential distribution simulations") + theme_bw()

#Poisson distribution
# set seed and generate sample
set.seed(1)
pois_sample <- rpois(n = 100, lambda = 1)
# create histogram of sample
pois_sample %>%
  data.frame() %>%
  ggplot(aes(x = pois_sample)) + geom_bar(color = "black",
                                          fill = "blue") + xlab("Simulated values") + ylab("Frequencies") +
  ggtitle("Poisson distribution simulations") + theme_bw()

#Binomial distribution
# set seed and generate sample
set.seed(1)
binom_sample <- rbinom(n = 100, size = 50, prob = 0.5)
# create histogram of sample
binom_sample %>%
  data.frame() %>%
  ggplot(aes(x = binom_sample)) + geom_bar(color = "black",
                                           fill = "blue") + xlab("Number of succcesses in 50 trials for each simulation") +
  ylab("Frequencies") + ggtitle("Binomial distribution simulations") +
  theme_bw()

#Exercise 1 Gamma distribution
# set seed and generate sample
set.seed(1)
gamma_sample <- rgamma(n = 200,shape=2,scale=2)
# create histogram of sample
gamma_sample %>%
  data.frame() %>%
  ggplot(aes(x = gamma_sample)) + geom_histogram(bins=15,color = "black",
                  fill = "blue") + xlab("Simulated Values") +
  ylab("Frequencies") + ggtitle("Gamma distribution simulations") +
  theme_bw()

#Exercise 1 Bernoulli Distribution
#Binomial distribution
# set seed and generate sample
set.seed(1)
bernoulli_sample <- rbinom(n = 100, size = 1, prob = 0.5)
# create histogram of sample
bernoulli_sample %>%
  data.frame() %>%
  ggplot(aes(x = bernoulli_sample)) + geom_bar(color = "black",
                                           fill = "blue") + xlab("Number of succcesses in 50 trials for each simulation") +
  ylab("Frequencies") + ggtitle("Bernoulli 
                                distribution simulations") +
  theme_bw()

# Quantiles - Simliar to finding z values
qnorm(p = 1 - 0.05/2, mean = 0, sd = 1)

#How many people below the value of 1.96
pnorm(q=1.96,mean=0,sd=1)
pnorm(q=1.96,mean=0,sd=1,lower.tail=FALSE)

qbinom(p = 0.5, size = 50, prob = 0.25)

#Confidence Intervals
z_CI <- function(mu, s, n, alpha) {
  # mu is the sample mean s is the sample standard
  # deviation n is the sample size alpha is the
  # significance level e.g. alpha=100-95=5% for a 95% CI
  # get z value using quantile function for normal
  # distribution
  z_value <- qnorm(1 - alpha/2)
  Ci_lower <- mu - z_value * s/sqrt(n) # calculate lower CI bound
  Ci_upper <- mu + z_value * s/sqrt(n) # calculate upper CI bound
  Ci <- c(Ci_lower, Ci_upper) # create vector of upper and lower CI bounds
  # function returns the confidence interval
  return(Ci)
}

# calculate the inputs for our z_CI function
x_bar <- mean(exp_sample)
s <- sd(exp_sample)
n <- 100
alpha = 1 - 0.95
# calculate the confidence interval using our function
z_CI(x_bar, s, n, alpha)




