# Control Structure
x<-3
if(x>0)
  +sqrt(x)
x<- -4
if(x>0)
  + sqrt(x)
x<- 2
y<- 1
if(x>=y)
 {
  abval <- x - y ;
  cat("\n","Absolute value is",+ abval,"\n")
  }else
  {
    abval<- y-x ;
    cat("\n","Absolute value is",abval,"\n")
    }
x<- 3
if(x) cat("x is non zero\n")
x<- 15
x <- c(1,3,-2)
 if (is.numeric(x) && min(x) > 0 ) + sx <- sqrt(x) else
  + stop("x must be numeric and positive")
#Error: x must be numeric and positive

# Loops
for (i in 1:5) print(i)
print(1:5)

sum1<-0
sum2<-0
for (i in 1:10)
{
  sum1<-sum1+i
  sum2<-sum2+i^2
  cat("i=",i,"sum=",sum1,"sum of squares =",sum2,"\n")
}
for(theta in c(0,pi,2*pi))
  print(sin(theta))
x<-1
while(x<11)
{
  cat(3*x,"\n")
  x<-x+2
}

total<-0
for(r in 1:20)
{
  total <- total + (r^4)
}
total
total<- sum(1:20)
total

total<-0
for(i in 1:10)
{
  total <- total +   ((1/2)^i)
}
total

sum.so.far<-0
for(i in 1:10) sum.so.far<-sum.so.far+0.5^i
sum.so.far























