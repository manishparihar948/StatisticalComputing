help()
help.start()
5 + 2.6
1234 + 2468
x<- 5 + 2.6
print(x)
x
87 - 105
32.4*18
13/8
6^3
sqrt(729)
sqrt(64)
sqrt(3^2 + 4^2)
seq(0,10,by=2)
seq(0,10,by=1)
seq(0,10,by=3)
log(3,base = 10)
log(7.5, base = 10)
log(100, base = 10)
log(64, base = 2)
# creating vectors in R
x <- c(2.3,1.2,2.4)
x
z <- C(2.3,w,1.2,b)
z <- C(2.3,2.2,1.2)
y <- c(x,9.0,x)
y
y <- c(x-5,9.0,x-5)
y
# Sequence expression 
n=20
1:n
seq(3,20,2)
seq(3,20,1)
seq(3,20,5)
# Fibonacci Series
fibonacci <- c(1,1,2,3,5,8,13,21,34,55)
x <- c(2,3)
y <- c(1,4,5,6)
2*x
y^2
mean(1:10)

log(-1,0,1,2,3,4,5)
mywords <- c("This","is","a","character")
mytrue <- (mywords == "is")
mytrue
#Indexing vector components
x <- c(1,3,4,7)
x[1]
x[2:4]
x[-2]
x[x > 3.5]
# Random Numbers and Probability Distributions
set.seed(100)
rbinom(10,5,0.5)
dbinom(10,5,0.5)
pbinom(10,5,0.5)

dbinom(3,5,0.5) # [probabilities from binomial distribution]
pbinom(3,5,0.5) # [cumulative probabilities]

data("iris")
names("iris")
summary("iris")
data.frame.Name$variable.name
mean(iris$Petal.Length)
hist(iris$Petal.Length)
plot(iris$Petal.Length,iris$Petal.Width,col=iris$Species,pch=16)
data("iris")
     
# Matrices and Graphics
M <- matrix(1:6,nrow=2)
M
     
     M<-matrix(1:6,nrow=2,byrow = TRUE)
     M
     
     M<- matrix(1:6,nrow=2)
     M
     dim(M)
     
     M<-matrix(1:6,nrow=2)
     M
     dim(M)
     
     M<-matrix(1:6,ncol=3)
     M
     dim(M)
     
     M<-matrix(1:6)
     M
     dim(M)
     
     fibonacci<-c(1,1,2,3,5,8,13,21,34,55)
     fibonacci[7]
     
     M<-matrix(1:6,nrow=2)
     M
     M[1,3]
     
     M[1:2, 1]
     
     M[2, c(1,3)]
     
     M[1:2, c(1,3)]
     
     M[2,]
     M[3,]
     M[1,]
     M[-2,]
     M[,-1]
     x<-c(1,3)
     M[,x]
     
     A<-matrix(1:6, nrow=2)
     dim(A)
     B<-matrix(5:10,nrow=2)
     dim(B)
     A+B
     2+A
     2*A
     A<-matrix(1:6,nrow=2)
     B<-matrix(5:10,nrow=2)
     C<-matrix(5:10,nrow=3)
     A*B
     dim(A)
     dim(C)
     A%*%C
     t(A)
     D<-matrix(1:4,nrow=2)
     solve(D)
     D%*%solve(D)
     
     # Arrays
     x<- array(1:4,dim=c(4)) #1-dim array (like a vector)
     x
     is.array(x)
     is.vector(x)
     x<-array(1:4,dim=c(2,2))
     x
     x<-array(1:27,dim=c(3,3,3))
     dim(x)
     x[1,1,1]
     x[2,,]
     
     length(dim(x))
     
     # High-Level Plots
     xvalues<- -5:5
     quadx<-xvalues^2
     plot(xvalues,quadx,type="p")
     plot(xvalues,quadx,type="b")
     plot(xvalues,quadx,type="l")
     plot(xvalues,quadx,type="h")
     plot(xvalues,quadx,type="n")
     plot(xvalues,quadx,type="s")
     
     plot(rnorm(10))
     plot(rnorm(50,mean=10,sd=0.5))
     
     help(VADeaths)
     VADeaths
     class(VADeaths)
     barplot(VADeaths["50-54",])
     barplot(VADeaths)
     barplot(VADeaths,beside=TRUE)
     t(VADeaths)
     barplot(t (VADeaths))
     
     # Histograms
     hist(rnorm(1000))
     hist(rexp(1000,4))
     
     ?InsectSprays
     boxplot(count~spray,data=InsectSprays)
     boxplot(count~spray,data=InsectSprays, +col="lightblue",pch=16)
     
     
     
     
     
     
     
     
     