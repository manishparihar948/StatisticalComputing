# Workshop 5
# Data Handling. Exploratory Data Analysis and Graphics
load("SmartiesB1.Rda")
load("SmartiesB2.Rda")
load("SmartiesB3.Rda")

SmartiesB1$BagNumber<-1
SmartiesB2$BagNumber<-2
SmartiesB3$BagNumber<-3

#(c) Create one data frame containing the data for all three bags in ???long format??? (i.e. one row for every box). 
# This data frame should include an identification variable called BagNumber.
Smarties<-rbind(SmartiesB1,SmartiesB2,SmartiesB3)
table(Smarties$BagNumber)
Smarties$Total<-apply(Smarties[,2:9],1,sum)
barplot(table(Smarties$Total),main = "Number of Smarties in each box",xlab="Number of Smarties",ylab = "Frequency")
round(apply(Smarties[,2:9],2,mean),1)
write.csv2(Smarties, file="Desktop/Smarties.csv")
aggregate(Smarties[,c(2:9,11)],by=list(BagNumber=Smarties$BagNumber),FUN=mean)

#excercise 3
Accom<-read.table("Desktop/BeuthData/Beuth-Lecture/StatComp/MunichAccomm.dat",sep=" ",header=TRUE)

setwd("/Users/apple/Desktop/BeuthData/Beuth-Lecture/StatComp")
test.data <- read.table("MunichAccomm.dat",header=TRUE)
test.data
dim(test.data)
table(test.data$QualityKitch)
mean(test.data$rent)
median(test.data$rent)
mean(test.data$rentpm2)
median(test.data$rentpm2)
table(test.data$NumRooms==2)
hist(test.data$Year,breaks = c(191:201*10))
plot(test.data$Area,test.data$rent)
plot(test.data$Area,test.data$rentpm2)
cor(test.data$Area,test.data$rent)
cor(test.data$Area,test.data$rentpm2)
test.data$Old<-factor(test.data$Year<1950,labels=c("no","yes"))
table(test.data$Old)
barplot(table(test.data$Old,test.data$NumRooms),beside = TRUE)
round(tapply(test.data$rentpm2,test.data$Old,mean),2)
















