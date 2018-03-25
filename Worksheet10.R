# Central Limit Theorem
# E(Y) = a0 + a1E(X)
# E(a0+a1X1+a2X2...+anXn) = a0+a1E(X1)+...+anE(Xn)
# Simulation
runif(1)
n<-10
runif(n)
X~U[0,1]
# cdf - cumulative distribution function
# RNG - random number generator (pseudo-random numbers)
# ECDF - empirical distribution function
# r random
# pdf density or d
# cdf probability 
# q quantile
X~N(100,5^2)
x=97
New = 1/sqrt(50*pi)exp(-((97-100)^2)/50)
0.07978846*0.8352702
dnorm(97,100,5) # density or pdf
pnorm(97,100,5) # cdf or probability
qnorm(pnorm(97,100,5),100,5) 
qnorm(0.975,100,5) # quantile 

# Discrete distributions in R
# Binomial distributions
X~Bin(m,p)
# X - model
# p - probability
# m - number of iteration
rbinom(n,m,p)
# Poission  distributions
X~Poi(lambda)
# lambda - expectation
rpois(n,lambda )
# Geometric distributions
X~Geo(p)
# p- trail failures berfore a success is observed
rgeom(n,p)

# Exercise 3
dnorm(50,10,5)
pnorm(50,10,5)
rnorm(50,10,5)

pnorm(55,50,sqrt(2.5))
xmean<-mean(rnorm(10,50,5))
xmean

xmean<-rep(NA,100)
for(i in 1:100)
  xmean[i]<-mean(rnorm(10,50,5))
mean(xmean<55)

plot(ecdf(xmean),verticals = TRUE,do.points=FALSE)

#Exercise 4
samp<-rbinom(100,10,0.25)
samp
plot(ecdf(samp),verticals = TRUE,do.points=FALSE)

curve(pnorm(x,10*0.25,sqrt(10*0.25*0.75)),-0.5,6.5,col=2)
plot(ecdf(samp),verticals=TRUE,do.points=FALSE,add=TRUE)

m<-20
samp<-rbinom(100,m,0.25)
curve(pnorm(x,m*0.25,sqrt(m*0.25*0.75)),-0.5,6.5,col=2)
plot(ecdf(samp),verticals=TRUE,do.points=FALSE,add=TRUE)

m<-50
samp<-rbinom(100,m,0.25)
curve(pnorm(x,m*0.25,sqrt(m*0.25*0.75)),-0.5,6.5,col=2)
plot(ecdf(samp),verticals=TRUE,do.points=FALSE,add=TRUE)

m<-100
samp<-rbinom(100,m,0.25)
curve(pnorm(x,m*0.25,sqrt(m*0.25*0.75)),-0.5,6.5,col=2)
plot(ecdf(samp),verticals=TRUE,do.points=FALSE,add=TRUE)

m<-200
samp<-rbinom(100,m,0.25)
curve(pnorm(x,m*0.25,sqrt(m*0.25*0.75)),-0.5,6.5,col=2)
plot(ecdf(samp),verticals=TRUE,do.points=FALSE,add=TRUE)

letters
U<-runif(26)
letters[order(U)][1:10]
sample(letters,10)
sample(letters,10,replace=T)







   







