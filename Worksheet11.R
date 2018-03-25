# Confidence Intervals
# Interval Estimation
# Central limit theorem tells us that estimate centres in on true expectation.
# This is called a point estimate
setwd("/Users/apple/Desktop/BeuthData/Beuth-Lecture/StatComp")
temp<-read.table("my.random.sample.Rda",header = TRUE)
load("my.random.sample.Rda")
# 1
x<-my.rs()
# 2
stdMean<- mean(x)
stdMean
# 3
sd(x)
# 4 Lower Limit
Q1<-mean(x) - 1.86 * ((sd(x))/sqrt(9))
Q1
# 5 Upper Limit
Q2<- mean(x) + 1.86 * ((sd(x))/sqrt(9))
Q2
# 6 Confidence Interval 
# [22.61846:27.14171]

# Question Apple
conf.level<-0.9
z<qt(1-0.9/2,19)
z

Q1<-128.52-2.845 * (14.31)/sqrt(21)
Q1

Q2<-128.52 + 2.845 * (14.31)/sqrt(21)
Q2






