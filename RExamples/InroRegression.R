# Date: 28/03, Purpose: MS4034 Lab 8

#House Price Data
library(tidyverse)
house_price_full <- read.csv("kc_house_data.csv")

head(house_price_full)

#Taking a portion of the data randomly, but keeping the same random set
set.seed(61202700)
index <- sample(1:nrow(house_price_full), 1000, replace = FALSE)
house_price <- house_price_full[index, ]

#Pairs plot
house_price %>%
  select(bedrooms, bathrooms, sqft_living, sqft_lot, condition, price) %>%
  pairs()

#Correlation Matrix
house_price %>%
  select(bedrooms, bathrooms, sqft_living, sqft_lot, condition, price) %>%
  cor()

#Want to look at building a simple linear regression model
model1 <- lm(price ~ sqft_living, data = house_price)
summary(model1) #Gives a nice output of the regression analysis

# Equation price = -10264.252 + 262.035*sqft_living

# Interpret \beta_1 : For a one square unit increase in the size 
#of the interioir of the house, expect the price
#of the house to increase by $262.04

#Interpret R^2: R^2 0.4497 of the variation in house price is described
# by the linear relationship with sqft_living

cor(house_price$price,house_price$sqft_living)^2

#residuals vs fitted can check if you have constant variance
#as fitted value increases(x) the residuals should have the same spread 
#throught should look like a cloud ideally

#QQ plot, most of the points shoudl fall along a straight line-show symmetry
#Could also look at a histogram of the residuals


#Log transformation
#Note need to bcak transform using exp
house_price$ln_price <- log(house_price$price)
model2 <- lm(ln_price ~ sqft_living, data = house_price)
summary(model2)

#Assess Residuals
plot(model2)
hist(model2$residuals)

#Residulas vs fitted looks better
#QQ looks more symmetric
#histogram looks normally distruibuted and symmetric

#R^2 47.5% of the varoation in log(price) is explained by the linear
#model with sqft_living 

#exp(log(x)) = x
#1-exp(3.844x10^4)=100 =0.0384
#A one unit increase in sqft_living corresponds to a 0.0384% increase in house price

#Multiple linear regression
model3 <- lm(ln_price ~ sqft_living + condition + waterfront + yr_built, data = house_price)
summary(model3)

#condition wasnt significant we can drop it and make a smaller modle

model4 <- lm(ln_price ~ sqft_living + waterfront + yr_built, data = house_price)
summary(model4)

#Logistic regression - binary response variable
#related to binomial

credit_df <- read.csv("credit_default.csv")
head(credit_df)
logistic1 <- glm(default ~ age, data = credit_df, family = "binomial")
summary(logistic1)





