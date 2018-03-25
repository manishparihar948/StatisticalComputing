#exercise 2

load("SmartiesB1.Rda")
load("SmartiesB2.Rda")
load("SmartiesB3.Rda")

SmartiesB1$BagNumber<-1 
SmartiesB2$BagNumber<-2 
SmartiesB3$BagNumber<-3 

Smarties<-rbind(SmartiesB1,SmartiesB2,SmartiesB3)
table(Smarties$BagNumber)
Smarties$Total<-apply(Smarties[,2:9],1,sum)
barplot(table(Smarties$Total),main="Number of Smarties in each box",xlab="Number of Smarties",ylab="Frequency")
round(apply(Smarties[,2:9],2,mean),1)
write.csv2(Smarties, file="Data/Smarties.csv")
aggregate(Smarties[,c(2:9,11)],by=list(BagNumber=Smarties$BagNumber),FUN=mean)

#exercise 3
Accom<-read.table("MunichAccom",sep=" ",header=TRUE)
dim(Accom)[1]
table(Accom$QualityKitch)
mean(Accom$rent)
mean(Accom$rentpm2)
median(Accom$rent)
median(Accom$rentpm2)

table(Accom$NumRooms==2)

hist(Accom$Year,breaks=c(191:201*10))
min(Accom$Year)
#no appartemnts were built before 1918
plot(Accom$Area,Accom$rent)
plot(Accom$Area,Accom$rentpm2)
cor(Accom$Area,Accom$rent)
cor(Accom$Area,Accom$rentpm2)
Accom$Old<-factor(Accom$Year<1950,labels=c("no","yes"))
table(Accom$Old)
barplot(table(Accom$Old,Accom$NumRooms),beside=TRUE)
round(tapply(Accom$rentpm2,Accom$Old,mean),2)
boxplot(Accom$rentpm2~Accom$Old)
t.test(Accom$rentpm2~Accom$Old)
# p value is very small. There is a statistically significant difference in the mean
#rental price per square meter for old appartments compared to new apartments
