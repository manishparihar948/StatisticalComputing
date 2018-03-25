A<- matrix(1:6,nrow = 2)
dim(A)
B<- matrix(5:10,nrow=2)
dim(B)
A+B
2A
2*A
C<-matrix(5:10,nrow = 3)
C
A*C
A%*%C
t(A)
D <- matrix(1:4,nrow=2)
solve(D)
D%*%solve(D)
data(iris)
iris[10,] # returns the 10th row of the iris data frame
iris[1:10,4] #first 10 rows of the 4th variable in iris
iris[1:10,"Species"] #first 10 rows of the Species variable
iris[1:10,4]
iris[1:10,"Petal.Widht"]
iris$Petal.Width[1:10]
x <- array(1:4,dim=c(4)) #1-dim array (like a vector)
x
is.array(x)
is.vector(x)
x <- array(1:4,dim=c(2,2)) #2-dim array (like a matrix)
x
x <- array(1:27,dim=c(3,3,3))
# Graphics in R Introduction and Preliminaries
dim(x)
x[1,1,1]
x[2,,]
x <- array(1:4,dim=c(2,2)) #2-dim array (like a matrix)
x <- array(1:4,dim=c(2,2)) #2-dim array (like a matrix)
x <- array(1:4,dim=c(2,2)) #2-dim array (like a matrix)
x <- array(1:4,dim=c(2,2)) #2-dim array (like a matrix)
dim(x)
x[1,1,1]
x[2,,]
length(dim(x))
# The ability to represent data graphically is an important part of data analysis for the following reasons:
# *Investigating the data visually helps you to get to know the data.
# *As part of analysis, graphs can be used to check validity of any assumptions made and to interpret the results of the analysis.

#3. High Level Plots
xvalues<- -5:5
quadx<-xvalues^2
plot(xvalues,quadx,type = "p") # p - point
plot(xvalues,quadx,type = "l") # line
plot(xvalues,quadx,type = "h") # hi-density
plot(xvalues,quadx,type = "s") # stepped
plot(xvalues,quadx,type = "n") # none
plot(xvalues,quadx,type = "b") # both

#Example here
plot(exp(xvalues),quadx,type = "l")
plot(abs(xvalues),quadx,type = "l")
plot(sin(xvalues),quadx,type = "l")
plot(cos(xvalues),quadx,type = "l")
plot(log(xvalues),quadx,type = "l") # showing warning messages
plot(rnorm(10))
plot(rnorm(50))
plot(rnorm(50,mean=10,sd=0.5))

#Bar Charts
help(VADeaths)
VADeaths
class(VADeaths)
barplot(VADeaths["50-54",])
barplot(VADeaths)
barplot(VADeaths,beside = TRUE)
t(VADeaths)
barplot(t(VADeaths))
hist(rnorm(1000))
hist(rexp(1000,4))

#BoxPlots
?InsectSprays
boxplot(count ~ spray,data =  InsectSprays)
boxplot(count ~ spray, data = InsectSprays, + col = "lightblue",pch=16)
boxplot(count ~ spray, data = InsectSprays,
        + col = "lightblue",pch=16)
# Quantile plots
qqnorm(x)
qqline(x)
sum(iris$Petal.Length<5.5)
sum(iris$Petal.Length<5.5) / length(iris$Petal.Length)
elem<- which(iris$Species=="virginica")
elem
qqnorm(iris$Petal.Length[elem])
qqnorm(iris$Petal.Length[elem])

#Plotting Multivariate Data
matplot()
data(USArrests)
help(USArrests)
matplot(USArrests, type = "l")
USPopRank<- order(USArrests@Assault)
#Pairwise plots
pairs(USArrests)
# Condition Plots
plot(iris$Sepal.Length,iris$Petal.Length)
coplot(Petal.Length~Sepal.Length | Species, data = iris)
data(swiss)
names(swiss)
coplot(Fertility~Education|Agriculture, data=swiss, overlap = 0)
coplot(Fertility~Education|Agriculture, data=swiss, overlap = 0.5)
coplot(Fertility~Education|Agriculture, data=swiss, overlap = 0.5, + panel = panel.smooth)
class (swiss)
plot(swiss)
data(state)
class(state.division)
plot(state.division)
class(xvalues)
plot.default(xvalues,quadx)
#Enhancing and Adapting Graphics
xvalues<- 5:5
quadx<-xvalues^2
plot(xvalues,quadx,type = "b",main="this is a title",+ sub="this is the subtitle",xlab="x",ylab="x squared",col.main="green",+col="blue",lty=2,pch="*",cex=3)
plot(xvalues,quadx,type="b",main="this is a title",
     + sub="this is the subtitle",xlab="x", ylab="x squared",col.main="green",
     + col="blue", lty=2,pch="*",cex=3)
?morley
plot(morley$Expt,morley$Speed)
plot(jitter(morley$Expt),morley$Speed)
sunflowerplot(morley$Expt,morley$Speed)
plot(mtcars$wt,mtcars$mpg)
fourcyl<-mtcars[,"cyl"]==4
sixcyl<-mtcars[,"cyl"]==6
eightcyl<-mtcars[,"cyl"]==8
plot(mtcars[,"wt"],mtcars[,"mpg"],type="n")
points(mtcars[fourcyl,"wt"],mtcars[fourcyl,"mpg"],pch="+",col="blue")
points(mtcars[sixcyl,"wt"],mtcars[sixcyl,"mpg"],pch="o",col="red")
points(mtcars[eightcyl,"wt"],mtcars[eightcyl,"mpg"],pch="x",col="magenta")
plot(mtcars[fourcyl,"wt"],mtcars[fourcyl,"mpg"],pch="+",col="blue")
abline(h=median(mtcars[,"mpg"]),col="green")
legend(1.5,14.0,legend=c("Four Cylinder","Six Cylinder","Eight Cylinder"),+ col=c("blue","red","magenta"),pch=c("+","o","x"))
legend(1.5,14.0,legend=c("Four Cylinder","Six Cylinder","Eight Cylinder"),
       + col=c("blue","red","magenta"),pch=c("+","o","x"))
colors()
palette()
barplot(VADeaths,beside = TRUE)
palette()
barplot(VADeaths,beside = TRUE,col = 1:5)
palette(rainbow(7))
palette()
barplot(VADeaths,beside = TRUE,col=1:5)
palette("default")
palette()
# Example of Using axis()
plot(xvalues,quadx,axes = FALSE)
axis(side = 1,pos=0,at=c(-5,0,5))
axis(side=2,pos=0,at=c(0,5,10,15,20,25), + labels=c("","5","10","15","20","25"),las=1)
axis(side=2,pos=0,at=c(0,5,10,15,20,25),
       labels=c("","5","10","15","20","25"),las=1)
box()
plot(mtcars[,"wt"],mtcars[,"mpg"])
plot(xvalues,quadx,type="b")
par(mfrow=c(3,2))
par(mfrow=c(1,1))

# Graphics Device
RStudioGD()
dev.list()
dev.set(2)
dev.off()
RStudioGD()
M1<-matrix(c(1,2,5,3,1,6,7,2,8),ncol = 1)
M2<-matrix(c(1,-1,-6,2,1,1),ncol = 2)
M3<-M1+M2

dim(M1)
dim(M2)

xvalues <- -5:5
quadx<- xvalues^2
plot(xvalues,quadx,type="b",main="This is a title", sub="This is the subtitle",
     xlab="x",ylab="x squared",col.main="green",col="blue",lty=2,pch="???",cex=3)
#Exercise 6

#Question 1
M1<-matrix(c(1,2,5,3,1,6,7,2,8),nrow=3)
M2<-matrix(c(1,-1,-6,2,1,1),ncol=2)
M3<- M1%*%M2

#Question 2
M<-seq(from=0,to=2*pi,length=20)
length(M)
range(M)
plot(sin(M),col="green")
plot(M,sin(M),main = "Overlaying Graphs",
     ylab = "",type = "l",col="green")
lines(M,cos(M),col="red")
legend("topleft",
       c("sin(M)","cos(M)"),fill=c("green","red"))


