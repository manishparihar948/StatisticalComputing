# Statustical Computation
#  R Test 2 - 15th January 2018
# Name - Manish Parihar
# Matriculation Number : 874932
setwd("/Users/apple/Desktop/BeuthData/Beuth-Lecture/StatComp")
load("TestTwoData.Rda")
loaded()

# Exercise 1
#(a) 
length(lizard)
#(b)
t.test(lizard,conf.level = 0.99)

#(d) [Q1:Q2]

Q1<- mean(14.85604) - 30.477 * (14.85604/(sqrt(24)))
Q1

Q2<- mean(14.85604) + 30.477 * (14.85604/(sqrt(24)))
Q2

# Exercise 2
length(xtest)
length(ytest)

my.lin.reg


x<- 1:3
y<- 10:12
cbind(x,y)
rbind(x,y)
# Factors used to represnt categorical data
# Table gives frequency counts

x<- factor(c("yes","no","yes","yes","no"), levels = c("no","yes"))
x

m<-matrix(1:4, nrow = 2,ncol = 2)
dimnames(m)<- list(c("a","b"),c("c","d"))
m

# Reading Data for reading table data
x<-c(1,3,5)
y<-c(3,2,10)
cbind(x,y)

x<-list(2,"a","b",TRUE)
x[[2]]

x<-1:4
y<-2
x+y

x<-c(17,14,4,5,13,12,10)
x[x>=11]<-4
x

x<-c(1,3,5)
y<-c(3,2,10)
rbind(x,y)

x<-1:4
y<-2:3
x+y

x<-c(3,5,1,10,12,6)
x[x>6]<-0
x

for(i in 1:10)
{
    print(i)
}

A <- matrix(1:6,nrow = 2)
dim(A)
B <- matrix (5:10, nrow =2)
dim(A)
A+B

2*A

A<-matrix(1:6,nrow=2)
dim(A)
C<-matrix(5:10,nrow=3)
dim(C)
A%*%C

boxplot(count ~ spray, data=InsectSprays)
boxplot(count ~ spray, data=InsectSprays, + col="lightblue",pch=16)

medication<-read.csv(file="Medication.csv")
medication

a<-1:2*c(3,5,7,9)
a

