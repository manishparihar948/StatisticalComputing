#Basic Statistics: Regression
# y = f(x) dependent variable X which has
# effect on dependent variable Y
# Regression Funtion examples
setwd("/Users/apple/Desktop/BeuthData/Beuth-Lecture/StatComp")
NewData<-read.table("Nebenwirkungen.Rda",header = TRUE)

x<-c(20,50,70,100,100)
y<-c(25,35,20,30,45)
relation<-lm(y~x)
relation
