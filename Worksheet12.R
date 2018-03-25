# alpha = 5%
# 1-alpha = 95%
qt(0.05,19)
qt(0.95,19)
# Machine example
xBar<- 998.6
sd<-2.251
# (a) two sided test appropriate in this example
# If the fill level is too low then customers will complain.
# if the fill level is too high then manufaturer looses money.
# Then manager is "interested" if the sample mean is too low 
# too high.

# (b) null & alternative hypothesis for two sided test
# H0:mu=mu0=1000 v/s  H1:mu != 1000
# (c)
mu<-1000
tStat = (xBar-mu)/(sd/sqrt(20))
tStat
# (d)
alpha<-0.05
n<-20
qt(1-alpha/2,n-1)
# (e)
# -2.781 is less than than -tCritical = 2.09, 
# the test statistic is in critical region and H0 is rejected.

# Exercise 2
#(a) Type 1 error is the machine has an expected fill volume of 1000ml
# but random sample suggests that its not 1000ml.The significance level
# is the probability of type 1 error (when null hypothesis is true)
# The probability of the machine will be repaired when its not necessary 
# is 5% or 1%

#(b) Type 2 error- machine has an expected fill volume different from
# 1000ml but we have insufficient evidence to reject the null 
# hypothesis So machine should be repaired.but wont be

#(c) tCritical = 2.86

load("fuel.Rda")
loaded()
cars<-fuel$country=="Jpn"
cars
dim(fuel$country)

tapply(fuel$mpg,fuel$country,mean)
tapply(fuel$mpg,fuel$country,sd)
boxplot(fuel$mpg.fuel$country,plot = TRUE)

q()


