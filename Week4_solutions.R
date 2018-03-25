#Exercise Page 7
require(dplyr) 
test.data <- read.table("Wkshp4test.dat",header=TRUE)

summarize(group_by(test.data,Treatment,Sex),N=n(),MR=mean(Response))

#Exercise Page 9
#the following command outputs the data frame test.dat 
#with the rows sorted so that Response is increasing
test.data[order(test.data$Response),]
arrange(test.data,Response) #has the same effect

#Exercise 2.9 Page 9
load("presidential.Rda")

table(presidential$party)
filter(presidential, party=="Republican")

presidential.new<-mutate(presidential, term_length=end-start,age=floor((start-DOB)/365.25))

presidential.new %>% arrange(DOB)

aggregate(presidential.new$term_length/365.25,by=list(Party=presidential.new$party),FUN=sum)


#exercise 3.3 page 13
medication<-read.csv(file="Medication.csv")
medication<-rename(medication,Time=Zeit,Drug_Type=Medikament)
boxplot(Time~Drug_Type,data=medication)
t.test(Time~Drug_Type,data=medication)
#p-value is 0.028  Signiicant at 5% significance level.  There is good evidence that 
# the time coagulation is different betzween the two drug types. 

