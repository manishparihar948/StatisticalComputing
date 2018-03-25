v<-1:2*c(3,5,7,9)

A<-matrix(1:6,nrow=2)
A

A<-matrix(1:6,ncol=2)
A

A<-matrix(1:6,nrow = 3,ncol=3)
A
dim(A)
-2 + A
dim(A)
A%*%A

x<-array(1:4,dim = c(4))
x
is.array(x)
is.vector(x)
x<-array(1:4,dim=c(2,2))
x
x<-array(1:27,dim = c(3,3,3))
x
dim(x)
x[1,1,1]
x[2,,]
dim(x)
length(dim(x))

M1<-matrix(c(1,3,7,2,1,2,5,6,8),nrow = 3)
M1
M2<-matrix(c(1,-6,1,-1,2,1),nrow = 3,ncol = 2)
M2
M1*M2

theta<-seq(from=0,to=2*3.414,length(20))
theta

length(theta)
range(theta)

x<-matrix(1:16,ncol=4)
x
y<-7:10
y
x*y
xvalues<- -5:5
quadx<-xvalues^2
xvalues
quadx
plot(xvalues,quadx,type="b")
exp(xvalues)
plot(exp(xvalues),quadx,type = "s")
plot(abs(xvalues),quadx,type="l")
plot(sin(xvalues),xvalues,type="s")
plot(log(xvalues),quadx,type="l")
plot(rnorm(10))
plot(rnorm(50,mean=10,sd=0.5))
























load("TestOneData.Rda")
loaded()

dim(Studio)

mean(Studio$BMI)

summary(Studio$Cardio)

table(Studio$Sex)

boxplot(Studio$Sex)
boxplot(BMI~Sex,data=Studio)
tapply(Studio$BMI,Studio$Sex,mean)



UsedCars$km <- UsedCars$Miles *1.609
UsedCars$km 

set.seed(123)
rnorm(1)

fredList.list <- list(name="Fred",wife="Mary",
                 +  num.children=3, child.ages=c(4,7,9))
list_fredList.list

name<- c("Wallace","Gromit","Shaun","Feathers_McGraw")
type<- factor(c("human","human","animal","animal"))
x<-c(72,8,5,NA)
aardman<- data.frame(name,type,age=x)
aardman
aardman$type
aardman$name[type=="animal"]
mean(aardman$age)
mean(aardman$age,na.rm = TRUE)
getwd()
setwd("H:/StatComp/")
username <- readline(prompt="Please input your name: ")
cat(paste("Hello, ",username,"!\n",sep=""))

# Worksheet No. - 3
# Basic Statistics and exploratory data I
setwd("/Users/apple/Desktop/BeuthData/Beuth-Lecture/StatComp")
test.data <- read.table("Worksheet03.dat",header=TRUE)
read.table()
medication<-read.csv(file="Medication.csv")
medication<-read.table(file="Medication.csv",header=TRUE,sep=",")

read.table()
medication <- as.data.frame(scan("Medication.csv",
                                 + what=list(Medikament="",Zeit=1),skip=1))

read.table
Prestige<-read.csv2(file="prestige.csv")
dim(Prestige) mean(Prestige$income)
median(Prestige$income) 
sd(Prestige$income)
var(Prestige$income)
sqrt(Prestige$income)
x<-c(1:5,NA,10:15)
is.na(x)
!is.na(x)
x[!is.na(x)]
mean(x,na.rm=TRUE)
quantile(Prestige$income,probs=c(0.25,0.75))
median(Prestige$census)
mean(Prestige)
table(Prestige$type)
table(Prestige$type,useNA="always")
prop.table(table(Prestige$type,useNA="always"))
summary(Prestige$income)
summary(Prestige$type)

BloodType<-read.csv2(file = "BloodType.csv")
BloodType
table(BloodType$ABO,BloodType$Rhesus)
# covariance measures the joint variability in two numeric variables.
# larger X + larger Y = larger positive 
# larger X + small Y or vice verser = larger negative
# 0 = no clear association between large and small value of X & Y
# then the covarince of X and Y will be small (positive or negative)
cov(Prestige$income,Prestige$women)
cor(Prestige$income,Prestige$women)
plot(Prestige$women,Prestige$income)
tapply(Prestige$prestige,Prestige$type,mean)

medication<-read.csv(file="Medication.csv")
medication

tapply(medication$Drug_Type)
summary(medication$Time)
boxplot(medication$Drug_Type,medication$Drug_Type,mean)

boxplot(BMI~Sex,data=Studio)
tapply(Studio$BMI,Studio$Sex,mean)

boxplot(Drug_Type~medication,data = medication)
tapply((medication.dr))
# Workshop 4
# Basic statistics and exploratory data analysis II
require(dplyr)
find.package("dplyr")

test.data<-read.table("Wkshp4Test.dat",header = TRUE)
search()
test.data <- read.table("Worksheet03.dat",header=TRUE)
test.data
mean(test.data$Response)
mean(test.data[,3])
mean(test.data[,"Response"])
attach(test.data)
mean(Response)
search()
pi 
find("pi")
pi<-3.0
find("pi")
2*pi
rm(pi)
pi
find("pi")
detach(test.data)
test.data[,c(1,3)]
test.data[,2:3]
test.data[,c("Treatment","Response")]
select(test.data,Treatment,Respose)
select(test.data,Treatment,Response)
select(test.data,Response)
mean(select(test.data,Response))
mean(select(test.data,Response))
test.data[4,]
test.data[test.data$Sex=="F"]
filter(test.data,Sex=="F")
filter(test.data,Sex=="F",Treatment==0)
test.data$StdRsd<-(test.data$Response- + mean(test.data$Response))/sd(test.data$Response)
test.data$StdRsd<-(test.data$Response-
                     + mean(test.data$Response))/sd(test.data$Response)
test.data
treat.mean <- aggregate(test.data$Response,
                        + by=list(Treat=test.data$Treatment,Sex=test.data$Sex),FUN=mean)

summarize(group_by(test.data,Treatment),Nobs=n(),MR=mean(Response))

wide.data<-read.table("Wide")
# Reshaping Command
long.data <- reshape (wide.data,direction="long" ,idvar="ID" ,
                      + varying =list (names (wide.data)[3 :5]))

test.data[order(test.data$Response),]
arrange(test.data,Response)
load("presidential.Rda")
loaded()
load("TestOneData.Rda")
loaded()

table(presidential$party)
filter(presidential,party=="Republican")


select(presidential.data,party)
x<-rnorm(20,170,12)
x
summary(x)
plot(x)
abline(h=mean(x))
abline(h=170,col=2)
t.test(x,mu=170)
Berliner<-rnorm(20,170,12)
Adler<-rnorm(20,180,12)
plot(Berliner,ylim = range(c(Berliner,Adler)),pch=16)
points(Adler,col=2,pch=16)
abline(h=mean(Berliner))
abline(h=mean(Adler),col=2)
t.test(Berliner,Adler)
medication<-read.csv(file="Medication.csv")
medication<-rename(medication,Time=Zeit,Drug_Type=Medikament)
boxplot(Time~Drug_Type,data=medication)
t.test(Time~Drug_Type,data=medication)











