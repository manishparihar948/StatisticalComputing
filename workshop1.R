sqrt(729)
(3^2 + 4^2)^1/2
# new question
seq(0,10,by=2)
# exponential
exp(3)
e^3
#log of 7.4
log(3, base=10)
#log for 100 base 10 and log 64 to base 2
log(100,base = 10)
log(64,base = 2)
#simple manipulations, numbers and vectors
x <- c(2.3,1.2,2.4)
x
y <- c(x,9.0,x)
y
z <- 1:5
z
seq(3,10,2)
#Fibonacci Series
fibonacci<- c (1,1,2,3,5,8,13,21,34,55)

# R vector arithmetic
x<- c(2,3)
y<- c(1,2,3,4,5,6)
2*x
y^2
fibonacci[7]
fibonacci[8]
fibonacci[7] + fibonacci[8]
exp(-1:5)
mean(1:10)
seq(1,10,1)
sum()
seq(1,10,1)
sum
sum <- seq(1,10,1)

sum(1:10)
fibonacci[7]
fibonacci[7] + fibonacci[8]
fibonacci[11]
fibonacci<-c(fibonacci,13)
fibonacci[11]
exp(-1:5)
mean(1:10)
seq(-1,5)
log(seq(-1,5))
log(1)
log(-1)
fibonacci<-c(0,1,1,2,3,5,8,13,21,34,55,89)
fibonacci
fibonacci[11]
# Operator Precedence
4+2*3
2^2*3
#Type of vector
mywords <- c("This","is","a","character")
mywords
mytrue<- {mywords == "is"}
mytrue
myfactor <- factor(c("Low","Medium","High","Low"))
myfactor
#Indexing Vector Component
x<- c(1,3,4,7)
x[1]
fibonacci[8]
x[2:4]
fibonacci[c(3,8)]
x[-2]
x[x > 3.5]
log(3,base = 10)
log(base = 10,3)
seq(1,7)
seq(1,7,2)
seq(2,7,1)
#Random Numbers and Probability Distributions
rbinom(10,5,0.5)
set.seed(100)
rbinom(10,5,0.5)
dbinom(3,5,0.5)
pbinom(3,5,0.5)
dbinom(6,4)
dbinom(6,4,2)
data("iris")
names(iris)
data.frame()
help("iris")
summary(iris)
data.frame.Name
data.frame(names)
mean(iris$Petal.Length)
stripchart(Sepal.Length~Species,data = iris)
plot(iris$Petal.Length,iris$Petal.Width,col=iris$Species,pch=16)
q()
n