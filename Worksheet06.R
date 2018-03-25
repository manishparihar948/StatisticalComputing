sum(x)/length(x)
mean(x)
# Measures of location:median
median(x)
sum((x-mean(x))^2)/(length(x)-1)
var(x)
# Standard Deviation
# Example
set.seed(4062875)
x<-rnorm(100,175,12)
xbar<-mean(x)
xbar
stddev<-sd(x)
stddev
xbar+2*stddev
sum(x>=(xbar-2*stddev) & x<= (xbar+2*stddev))
# Range
x<-rnorm(100,175,12)
round(diff(range(x)),1)
# Interquartile range: Quantile definition
x<-5:15
quantile(x,0.5)
quantile(x,0.1)
quantile(x,c(0.1,0.11))
#Interquartile range: IQR
x<-5:15
diff(quantile(x,c(0.25,0.75)))
IQR(x)
#Covariance & Correlation
#Sampling,Measures of Location and of Dispersion
setwd("/Users/apple/Desktop/BeuthData/Beuth-Lecture/StatComp")
Accom<-read.table("MunichAccomm.dat",header=TRUE)
hist(Accom$rent)
summary(Accom$rent)
range(Accom$rent)
IQR(Accom$rent)
var(Accom$rent)
sd(Accom$rent)
sum((Accom$rent-mean(Accom$rent))^2)/(length(Accom$rent)-1)
#[x ??2sx]
sum(x>=(xbar-2*stddev) & x<=(xbar+2*stddev))
xbar<-mean(Accom$rent)
xbar
sum(xbar>=(xbar-2*stddev) & x<=(xbar+2*stddev))

mean(temp)
















