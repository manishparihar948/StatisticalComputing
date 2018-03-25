sqrt(729)
name<- c("Wallace", "Gromit", "Shaun","Feathers_McGraw")
type<- factor(c("human","human","animal","animal"))
x<-c(72,8,5,NA)
aardman <- data.frame(name,type,age=x)
aardman
aardman$type
levels()
`levels<-`(type)
aardman$age
aardman$name[type=="animal"]
mean(aardman$age)
mean(aardman$age,na.rm = TRUE)
# Get current working directory
getwd()
#Set Directory
setwd("H:/StatComp/")
#Reading data from file
read.table()
read.csv()
read.csv2()
read.fwf()
scan()

# Example 
x <- read.table("somedata",header = FALSE)
x
# saving output to a file
sink()
sink("somecommands_output.txt")
source("somecommands.r",echo = TRUE)
install.packages("packagename")
q()
q()
