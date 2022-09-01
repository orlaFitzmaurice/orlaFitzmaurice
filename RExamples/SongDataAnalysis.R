# Date: 23/04, MS4034 Data Analysis Assignment 2 Orla Fitzmaurice
# Analysing a dataset that has been downloaded from Kaggle: Song Popularity

#Popluar Songs DataSet
library(tidyverse)
library(dplyr)

full_song_data <- read.csv("full_song_data.csv")

#Summarising Data
summary(full_song_data)

#Further summary for numerical data
full_song_data %>%
  summarise(variance_song_popularity = var(song_popularity),
            SD_song_popularity = sd(song_popularity),
            IQR_song_popularity = IQR(song_popularity))

full_song_data %>%
  summarise(variance_song_duration_ms = var(song_duration_ms ),
            SD_song_duration_ms  = sd(song_duration_ms ),
            IQR_song_duration_ms  = IQR(song_duration_ms ))

full_song_data %>%
  summarise(variance_acousticness = var(acousticness ),
            SD_acousticness  = sd(acousticness ),
            IQR_acousticness  = IQR(acousticness ))

full_song_data %>%
  summarise(variance_danceability = var(danceability ),
            SD_danceability  = sd(danceability ),
            IQR_danceability  = IQR(danceability ))

full_song_data %>%
  summarise(variance_energy = var(energy ),
            SD_energy  = sd(energy ),
            IQR_energy  = IQR(energy ))

full_song_data %>%
  summarise(variance_intrumentalness = var(instrumentalness),
            SD_intrumentalness = sd(instrumentalness ),
            IQR_intrumentalness  = IQR(instrumentalness ))

full_song_data %>%
  summarise(variance_key = var(key ),
            SD_key= sd(key ),
            IQR_key  = IQR(key ))

full_song_data %>%
  summarise(variance_liveness = var(liveness),
            SD_liveness= sd(liveness ),
            IQR_liveness = IQR(liveness ))

full_song_data %>%
  summarise(variance_loudness = var(loudness),
            SD_loudness= sd(loudness ),
            IQR_loudness = IQR(loudness ))

full_song_data %>%
  summarise(variance_speechiness = var(speechiness),
            SD_speechiness = sd(speechiness ),
            IQR_speechiness = IQR(speechiness ))

full_song_data %>%
  summarise(variance_tempo = var(tempo),
            SD_tempo = sd(tempo ),
            IQR_tempo = IQR(tempo ))

full_song_data %>%
  summarise(variance_audio_valence = var(audio_valence),
            SD_audio_valence = sd(audio_valence ),
            IQR_audio_valence = IQR(audio_valence ))

#Summary for categorical data

#Recoding Audio Mode as a factor with two levels: yes/no
full_song_data$audio_mode <- as.factor(full_song_data$audio_mode)
full_song_data$audio_mode <- recode(full_song_data$audio_mode,"0" = "OFF","1"="ON")

counts <- table(full_song_data$audio_mode)
counts <- data.frame(counts)
print(counts)

#Frequency table
counts$Rel_Freq <- counts$Freq / nrow(full_song_data)


#Recoding Time Signature as a factor with levels
full_song_data$time_signature <- as.factor(full_song_data$time_signature)
full_song_data$time_signature <- recode(full_song_data$time_signature,"0"="ZERO"
                                        ,"1"="ONE","2"="TWO","3"="THREE","4"="FOUR","5"="FIVE")

counts <- table(full_song_data$time_signature)
counts <- data.frame(counts)
print(counts)

#Frequency table
counts$Rel_Freq <- counts$Freq / nrow(full_song_data)

#Recoding Song Key as a factor with levels
full_song_data$keys <- cut(full_song_data$key,
                       breaks=c(-1,0,2,4,6,8,10,12),
                       labels=c('0-2','0-2','2-4','4-6','6-8','8-10','10-12'))

counts <- table(full_song_data$keys)
counts <- data.frame(counts)
print(counts)

#Frequency table
counts$Rel_Freq <- counts$Freq / nrow(full_song_data)


# Visualizations

#Histograms

ggplot(data=full_song_data,mapping = aes(x=song_popularity))+geom_histogram(fill='darkcyan',bins=20)+
  xlab('Song Popularity')+ggtitle('Histogram for Song Popularity')

ggplot(data=full_song_data,mapping = aes(x=song_duration_ms))+geom_histogram(fill='darkcyan',bins=20)+
  xlab('Song Duration in ms')+ggtitle('Histogram for Song Duration')

ggplot(data=full_song_data,mapping = aes(x=acousticness))+geom_histogram(fill='darkcyan',bins=20)+
  xlab('Song Acousticness')+ggtitle('Histogram for Song Acousticness')

ggplot(data=full_song_data,mapping = aes(x=danceability))+geom_histogram(fill='darkcyan',bins=20)+
  xlab('Song Danceability')+ggtitle('Histogram for Song Danceability')

ggplot(data=full_song_data,mapping = aes(x=instrumentalness))+geom_histogram(fill='darkcyan',bins=20)+
  xlab('Song Instrumentalness')+ggtitle('Histogram for Song Instrumentalness')

ggplot(data=full_song_data,mapping = aes(x=energy))+geom_histogram(fill='darkcyan',bins=20)+
  xlab('Song Energy')+ggtitle('Histogram for Song Energy')

ggplot(data=full_song_data,mapping = aes(x=liveness))+geom_histogram(fill='darkcyan',bins=20)+
  xlab('Song Liveness')+ggtitle('Histogram for Song Liveness')

ggplot(data=full_song_data,mapping = aes(x=loudness))+geom_histogram(fill='darkcyan',bins=20)+
  xlab('Song Loudness')+ggtitle('Histogram for Song Loudness')

ggplot(data=full_song_data,mapping = aes(x=speechiness))+geom_histogram(fill='darkcyan',bins=20)+
  xlab('Song Speechiness')+ggtitle('Histogram for Song Speechiness')

ggplot(data=full_song_data,mapping = aes(x=tempo))+geom_histogram(fill='darkcyan',bins=20)+
  xlab('Song Tempo')+ggtitle('Histogram for Song Tempo')

ggplot(data=full_song_data,mapping = aes(x=audio_valence))+geom_histogram(fill='darkcyan',bins=20)+
  xlab('Song Audio Valence')+ggtitle('Histogram for Song Audio Valence')

#Boxplots

ggplot(data=full_song_data,mapping = aes(x=song_popularity))+geom_boxplot()+
  xlab('Song Popularity')+ggtitle('Boxplot for Song Popularity') +theme_bw()

ggplot(data=full_song_data,mapping = aes(x=energy))+geom_boxplot()+
  xlab('Song Energy')+ggtitle('Boxplot for Song Energy') +theme_bw()

ggplot(data=full_song_data,mapping = aes(x=song_duration_ms))+geom_boxplot()+
  xlab('Song Duration')+ggtitle('Boxplot for Song Duration') +theme_bw()

ggplot(data=full_song_data,mapping = aes(x=acousticness))+geom_boxplot()+
  xlab('Song Acousticness')+ggtitle('Boxplot for Song Acousticness') +theme_bw()

ggplot(data=full_song_data,mapping = aes(x=danceability))+geom_boxplot()+
  xlab('Song Danceability')+ggtitle('Boxplot for Song Danceability') +theme_bw()

ggplot(data=full_song_data,mapping = aes(x=instrumentalness))+geom_boxplot()+
  xlab('Song Instrumentalness')+ggtitle('Boxplot for Song Instrumentalness') +theme_bw()

ggplot(data=full_song_data,mapping = aes(x=liveness))+geom_boxplot()+
  xlab('Song Liveness')+ggtitle('Boxplot for Song Liveness') +theme_bw()

ggplot(data=full_song_data,mapping = aes(x=loudness))+geom_boxplot()+
  xlab('Song Loudness')+ggtitle('Boxplot for Song Loudness') +theme_bw()

ggplot(data=full_song_data,mapping = aes(x=speechiness))+geom_boxplot()+
  xlab('Song Speechiness')+ggtitle('Boxplot for Song Speechiness') +theme_bw()

ggplot(data=full_song_data,mapping = aes(x=tempo))+geom_boxplot()+
  xlab('Song Tempo')+ggtitle('Boxplot for Song Tempo') +theme_bw()

ggplot(data=full_song_data,mapping = aes(x=audio_valence))+geom_boxplot()+
  xlab('Song Audio valence')+ggtitle('Boxplot for Song Audio Valence') +theme_bw()




# Bar Charts for frequencies of categorical variables
ggplot(data=full_song_data,mapping = aes(x=audio_mode))+geom_bar(fill='brown1')+
  xlab('Audio Mode')+ ylab('Frequencies')+ggtitle('Barchart for Audio Mode')

ggplot(data=full_song_data,mapping = aes(x=time_signature))+geom_bar(fill='brown1')+
  xlab('Time Signature')+ ylab('Frequencies')+ggtitle('Barchart for Time Signatures')

ggplot(data=full_song_data,mapping = aes(x=keys))+geom_bar(fill='brown1')+
  xlab('Song Key')+ ylab('Frequencies')+ggtitle('Barchart for Song Keys')


#Confidence Intervals for the mean

#Function to calculate a 95% confidence interval for 
# a sample with n>30, ie satisfies the central limit theorem

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

# calculate the inputs for z_CI function
n <- nrow(full_song_data)
alpha<-1-0.95


# calculate the inputs for z_CI function
n <- nrow(full_song_data)

#Confidnece interval for the mean

#95% Confidence interval for song popularity
x_bar <- mean(full_song_data$song_popularity)
s <- sd(full_song_data$song_popularity)
z_CI(x_bar, s, n, alpha)

#95% Confidence interval for song duration ms 
x_bar <- mean(full_song_data$song_duration_ms)
s <- sd(full_song_data$song_duration_ms)
z_CI(x_bar, s, n, alpha)

#95% Confidence interval for song acousticness 
x_bar <- mean(full_song_data$acousticness)
s <- sd(full_song_data$acousticness)
z_CI(x_bar, s, n, alpha)

#95% Confidence interval for song danceability 
x_bar <- mean(full_song_data$danceability)
s <- sd(full_song_data$danceability)
z_CI(x_bar, s, n, alpha)

#95% Confidence interval for song energy 
x_bar <- mean(full_song_data$energy)
s <- sd(full_song_data$energy)
z_CI(x_bar, s, n, alpha)

#95% Confidence interval for song instrumentalness 
x_bar <- mean(full_song_data$instrumentalness)
s <- sd(full_song_data$instrumentalness)
z_CI(x_bar, s, n, alpha)

#95% Confidence interval for song liveness 
x_bar <- mean(full_song_data$liveness)
s <- sd(full_song_data$liveness)
z_CI(x_bar, s, n, alpha)

#95% Confidence interval for song loudness 
x_bar <- mean(full_song_data$loudness)
s <- sd(full_song_data$loudness)
z_CI(x_bar, s, n, alpha)

#95% Confidence interval for song speechiness 
x_bar <- mean(full_song_data$speechiness)
s <- sd(full_song_data$speechiness)
z_CI(x_bar, s, n, alpha)

#95% Confidence interval for song tempo 
x_bar <- mean(full_song_data$tempo)
s <- sd(full_song_data$tempo)
z_CI(x_bar, s, n, alpha)

#95% Confidence interval for song audio_valence 
x_bar <- mean(full_song_data$audio_valence)
s <- sd(full_song_data$audio_valence)
z_CI(x_bar, s, n, alpha)

#NOTE: Didn't inlcude in report, this just calculates the median not an interval
#Confidence Intervals for the median for skewed distributions
#95% Confidence Interval for the median for song duration
med <- median(full_song_data$song_duration_ms)
quantile(med, c(.025,.975)) 


#Hypothesis Testing 

#Independent Sanple t-tests between popular and not popular songs

#Splitting data by popluar or not, using mean
full_song_data$popular = ifelse(full_song_data$song_popularity>=52.99,1,0)

#Recoding popular as a factor with two levels
full_song_data$popular <- as.factor(full_song_data$popular)
full_song_data$popular <- recode(full_song_data$popular,"0"="NO","1"="YES")

counts <- table(full_song_data$popular)
counts <- data.frame(counts)
print(counts)

#Frequency table for popular songs
counts$Rel_Freq <- counts$Freq / nrow(full_song_data)

#Barchart for popular songs
ggplot(data=full_song_data,mapping = aes(x=popular))+geom_bar(fill='forestgreen')+
  xlab('Popluar Songs')+ ylab('Frequencies')+ggtitle('Barplot for Popular Songs')



#Splitting data by quantiles of popularity, 1st and 3rd, will be used for ANOVA
#testing below

full_song_data$populars = with(full_song_data, ifelse(song_popularity<=40,1,
                                                      ifelse(song_popularity>=69,2,3)))


#Recoding populars as a factor with three levels
full_song_data$populars <- as.factor(full_song_data$populars)
full_song_data$populars <- recode(full_song_data$populars,"1"="Below Average",
                                  "2"="Average","3"="Above Average")


counts <- table(full_song_data$populars)
counts <- data.frame(counts)
print(counts)

#Frequency table for popular songs
counts$Rel_Freq <- counts$Freq / nrow(full_song_data)

#Barchart for popular songs
ggplot(data=full_song_data,mapping = aes(x=populars))+geom_bar(fill='forestgreen')+
  xlab('Popluar Songs')+ ylab('Frequencies')+ggtitle('Barplot for Popular Songs')


#Want to check is there a statistically significant difference in mean energy for songs
#that are popular or not 

#First need to check homogeneity of variances are the same
library(car)
leveneTest(full_song_data$energy, full_song_data$popular)

#Leveens does not require normality 
#H0: u1=u1
#HA: u1/=u2
#Pr(>F)=1.032e-14 p value
# ^ <0.05 H0 rejected, unequal variances

t.test(full_song_data$energy ~ full_song_data$popular,alternative = "two.sided",
       var.equal = FALSE)

#p value 0f 0.01463 => less than 0.05 significance level,
# reject H0 and conclude means are different 


#Want to check is there a statistically significant difference in mean danceability for songs
#that are popular or not 

#First need to check homogeneity of variances are the same
leveneTest(full_song_data$danceability, full_song_data$popular)

#Leveens does not require normality 
#H0: u1=u1
#HA: u1/=u2
#Pr(>F)=0.0001273 p value
# ^ <0.05 H0 rejected, unequal variances

t.test(full_song_data$danceability ~ full_song_data$popular,alternative = "two.sided",
       var.equal = FALSE)

#p value 0f <2.2e-16 => less than 0.05 significance level,
# reject H0 and conclude means are different

#Want to check is there a statistically significant difference in mean instumentallness for songs
#that are popular or not 

#First need to check homogeneity of variances are the same

leveneTest(full_song_data$instrumentalness, full_song_data$popular)

#Levenes does not require normality 
#H0: u1=u1
#HA: u1/=u2
#Pr(>F)=<2.2e-16 p value
# ^ <0.05 H0 rejected, unequal variances

t.test(full_song_data$instrumentalness ~ full_song_data$popular,alternative = "two.sided",
       var.equal = FALSE)

#p value 0f <2.2e-16 => less than 0.05 significamce level, there is evidence to suggest
#a statistically significant difference exists between the mean value of 
#instrumentalness of popular versus not popular songs

#Want to check is there a statistically significant difference in mean liveness for songs
#that are popular or not 

#First need to check homogeneity of variances are the same

leveneTest(full_song_data$liveness, full_song_data$popular)

#Levenes does not require normality 
#H0: u1=u1
#HA: u1/=u2
#Pr(>F)=5.542e-08 p value
# ^ <0.05 H0 rejected, unequal variances

t.test(full_song_data$liveness ~ full_song_data$popular,alternative = "two.sided",
       var.equal = FALSE)

#p value 0f 3.163e-08 => less than 0.05 significamce level, there is a statistically 
#significant difference between the mean value of liveness of popular versus
# not popular songs

#Want to check is there a statistically significant difference in mean tempo for songs
#that are popular or not 

#First need to check homogeneity of variances are the same

leveneTest(full_song_data$tempo, full_song_data$popular)

#Levenes does not require normality 
#H0: u1=u1
#HA: u1/=u2
#Pr(>F)=0.01542 p value
# ^ <0.05 H0 rejected, unequal variances

t.test(full_song_data$tempo ~ full_song_data$popular,alternative = "two.sided",
       var.equal = FALSE)

#p value 0f 0.01072 => less than 0.05 significance level,
# reject H0 and conclude means are different

#Want to check is there a statistically significant difference in speechiness for songs
#that are popular or not 

#First need to check homogeneity of variances are the same

leveneTest(full_song_data$speechiness, full_song_data$popular)

#Levenes does not require normality 
#H0: u1=u1
#HA: u1/=u2
#Pr(>F)=0.5942 p value
# ^ >0.05 H0 accepted, equal variances

t.test(full_song_data$speechiness ~ full_song_data$popular,alternative = "two.sided",
       var.equal = TRUE)

#p value 0f 0.8923 => greater than 0.05 significance level,
# accept H0 and conclude means are equal, not different



#ANOVA Testing 

#ANOVA Testing comparing means of instrumentalness between below average, average,
#and above average popluar songs

anova.instrumentalness <- aov(instrumentalness ~ populars, data = full_song_data)
summary(anova.instrumentalness)
# P value <2e-16
#Since P value is less than 0.05 there is evidence to
# reject H0, conclude at least one group has a mean different from the rest


#Must now check assumptions hold
plot(anova.instrumentalness)
#Very skewed residuals

#Calculating the variances for each category
var.pop <- by(full_song_data$instrumentalness, full_song_data$populars, var)
var.pop

#Getting a test statistic by dividing Above Av by below Av
# F statistic
var.pop[3]/var.pop[1]

#Finding the number of datapoints for the two chosen categories,
# these will be used to find the degress of freedom
nbelow <- table(full_song_data$populars)[1]
nabove <- table(full_song_data$populars)[3]

#Calculating the F statistic using quantile function
qf(0.975, nabove - 1, nbelow - 1)

#Have found a Test Statistic of 1.017748> 1.050977 F Statistic
#H0 is rejected, unequal variances accross groups and cannot use ANOVA


#ANOVA Testing comparing means of energy between below average, average,
#and above average popluar songs

anova.energy <- aov(energy ~ populars, data = full_song_data)
summary(anova.energy)
# P value 5.74e-12
#Since P value is less than 0.05 there is evidence to
# reject H0, and conclude at least one group has a mean different from the rest

#Must now check ANOVA assumptions hold
plot(anova.energy)
#Variances look like they follow the line in the QQplot for most of it
#Variances look equal

#Calculating the variances for each category
var.energy <- by(full_song_data$energy, full_song_data$populars, var)
var.energy

#Getting a test statistic by dividing Above Av by below Av
# F statistic 1.16779
var.energy[3]/var.energy[1]

#Finding the number of datapoints for the two chosen categories,
# these will be used to find the degress of freedom
nbelow <- table(full_song_data$populars)[1]
nabove <- table(full_song_data$populars)[3]

#Calculating the F statistic using quantile function
qf(0.975, nabove - 1, nbelow - 1)

#Have found a Test Statistic of 1.125417 > 1.050977 F Statistic
#Reject H0, unequal variances, ANOVA cannot be carried out


#Question 3
#Looking at a set of scatter plots for the data to see can i find any relationship
#Because there is so many variables, i ran this a few times and took
#out any variables if felt weren't showing any relationship and i wasn't interested in



full_song_data%>%
  select(song_popularity,acousticness,danceability,energy,
         instrumentalness,liveness,loudness)%>%
  pairs()

#Looks like the only relationsip i will find with popluarity is instrumentallness
#Might be able to find something with liveness and loudness, acousticness

full_song_data%>%
  select(song_popularity,acousticness,danceability,energy,
         instrumentalness,liveness,loudness)%>%
  cor()

#Best relationship form scatter plot is with instrumentalness,
#highest correlataion at 0.1309

#Simple linear regression between popularity and instrumentalness
#model will be song_popularity = b0 + b1instrumentalness + ei
model1 <- lm(song_popularity ~ instrumentalness, data = full_song_data)
summary(model1)

#Multpile r squared value is 0.01714
#b0=54.0014
#b1=-12.9410
#Hava e found a p-value of <2.2e-16<0.05, therefore reject h0
#there is evdine to suggest that there is a significant relationship between 
#the variables in the linear regression model of the dataset


#Assessing the residuals for linear model
plot(model1)
hist(model1$residuals)

#Looks slightly negatively skewed, try a transformation to find a better model

#Chose to do a sq transform becasue i have 0 values
full_song_data$sq_popularity <- (full_song_data$song_popularity)^2

model2 <- lm( sq_popularity ~ instrumentalness, data = full_song_data)
summary(model2)

plot(model2)
hist(model2$residuals)

#Histogram still slighlty skewed, QQplot fit much better though
#Now results are:
#Multpile r squared value is 0.01213 for (song_popularity^2)
#b0=sqrt(3346.45) = 58.3383
#b1=sqrt(-1080.05)=-38.6258
#Hava e found a p-value of <2.2e-16<0.05, therefore reject h0
#there is evdine to suggest that there is a significant relationship between 
#the variables in the linear regression model of the data set


#Song popularity and danceability had the second highest correlation 0.1043
# liner regression model
model3 <- lm(song_popularity ~ danceability, data = full_song_data)
summary(model3)

#Multpile r squared value is 0.01088
#b0=43.7596
#b1=14.5770
#Hava e found a p-value of <2.2e-16<0.05, therefore reject h0
#there is evdine to suggest that there is a significant relationship between 
#the variables in the linear regression model of the dataset


#Assessing the residuals
plot(model3)
hist(model3$residuals)

#Residuals slightly negatively skewed, transform to find a better model
model <- lm(sq_popularity ~ danceability, data = full_song_data)
summary(model)

plot(model)
hist(model$residuals)
#Multpile r squared value is 0.01592
#b0=46.7259
#b1=41.7632
#Have e found a p-value of <2.2e-16<0.05, therefore reject h0
#there is evidence to suggest that there is a significant relationship between 
#the variables in the linear regression model of the dataset



#Multiple Linear Regression
model4 <- lm(song_popularity ~ danceability + instrumentalness+acousticness + 
               liveness + loudness + energy+song_duration_ms+speechiness+
               tempo+audio_valence , data = full_song_data)
summary(model4)

#I removed any variables that were not significant

model5 <- lm(song_popularity ~ danceability + instrumentalness+acousticness + 
               liveness + loudness + energy+
               tempo+audio_valence , data = full_song_data)
summary(model5)

#Multpile r squared value is 0.04538
#Bo=66.614
#Have e found a p-value of <2.2e-16<0.05, therefore reject h0
#there is evidence to suggest that there is a significant relationship between 
#the variables in the linear regression model of the dataset



#Assess Reiduals
plot(model5)
hist(model5$residuals)

#Looks to be some negative skew in the residuals
#Try a transformation to make a better model

model6 <- lm(sq_popularity ~ danceability + instrumentalness+acousticness + 
               liveness + loudness + energy+
               tempo+audio_valence , data = full_song_data)
summary(model6)

#Multpile r squared value is 0.06343
#Bo=69.1989
#Have e found a p-value of <2.2e-16<0.05, therefore reject h0
#there is evidence to suggest that there is a significant relationship between 
#the variables in the linear regression model of the dataset
#Tempo is no longer significant in this model so I create one last
#model removing it

model7 <- lm(sq_popularity ~ danceability + instrumentalness+acousticness + 
               liveness + loudness + energy+
               audio_valence , data = full_song_data)
summary(model7)

plot(model7)
hist(model7$residuals)
