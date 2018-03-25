x<-1:2*c(3,5,7,9)
x

y<-(1:10)[v1<v2]
y

Var1<-c(3,4,5,6)
Var2<-c(1,3,5,2)
Var3<-c(8,8,1,7)
exam1<-55
dim(exam1)

# Exam One
setwd("~/Desktop/BeuthData/Beuth-Lecture/StatComp")
load("TestOneData.Rda")
loaded()
dim(Studio)
mean(Studio$BMI)
summary(Studio$Cardio)
table(Studio$Sex)
boxplot(BMI~Sex,data = Studio)
# There is extreme value of women with BMI around 27.7
tapply(Studio$BMI,Studio$Sex,mean)
plot(Studio$BMI,Studio$Cardio,main = "Cardio-Vascular rating against BMI",
     xlab = "BMI",ylab = "Cardio")

cor(Studio$BMI,Studio$Cardio)

# The correlation is a middling negative value +0.59 on a scale from -1 to +1
# This corresponds to a moderate linear relationship between BMI and fitness
# the heavier the person is less fit.
UsedCars$Km<-UsedCars$Miles*1.609
UsedCars$Km
lm.obj<-lm(Price~Km,data=UsedCars)
coef(lm.obj)
RegressionLine  <- 8558.35 - 0.033*Km
# fitted price of car which has not yet been driven is $8558.for each
# kilometre that a car is driven, price falls by 3.38cents.
abline(lm.obj)

seq(0,20,by=3)
exp(3)
log(7.4,base = 10)
log(100,base = 10)
log(64,base = 2)
c()
x<-c(1,2,3)
x
y<-c(4,5,x)
y
z<-1:5
z
y<-5
y^3
mean(1:10)
exp(-1:5)
log(-1:5,base = 10)
rbinom(10,5,0.5)
set.seed(100)
rbinom(10,5,0.5)
dbinom(3,5,0.5)
pbinom(3,5,0.5)
name<-c("Wallace","Gromit","Shaun","Feather")
type<-factor(c("human","human","animal","animal"))
x<-c(72,8,5,NA)
aardam<-data.frame(name,type,age=x)
aardam
aardam$type
aardam$age
aardam$name[type="animal"]
length(aardam$name[type="animal"])

theta<-(0:2*pi)
seq(from=0,to=2*pi,length=20)
length(theta)
range(theta)
x<-c(1:5,NA,10:15)
is.na(x)
mean(x,na.rm = TRUE)
median(x,na.rm=TRUE)
load("SmartiesB1.Rda")
load("SmartiesB2.Rda")
load("SmartiesB3.Rda")
loaded()
SmartiesB1$BagNumber<-1 
SmartiesB2$BagNumber<-2 
SmartiesB3$BagNumber<-3 
Smarties<-rbind(SmartiesB1,SmartiesB2,SmartiesB3)
Smarties
table(Smarties$BagNumber)

x<-3
y<-2
if(x>=y)
{
  abval <- x - y;
  abval
  print("absolute value is",abval)
}

for(i in 1:10) print(i)
for(theta in c(0,pi,2*pi)) print(sin(theta))
x<- 1
while (x<11) {
     cat ( 3 * x,"\n")
     x <- x + 2 }
    
total<-0
for (r in 1:20) {total <- total + (r)^4}
total
tapply(1,20)

total<-0
for(i in 1:10){ total <- total + (1/2)^i }
total

x<- 97
dnorm(97,100,5)
pnorm(97,100,5)
qnorm(pnorm(97,100,5),100,5)













