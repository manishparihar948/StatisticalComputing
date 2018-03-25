dat <- c(3,3,3)
print(dat)
username <- readline(prompt = "Please input you name: ")
cat (paste("Hello, ",username,"!\n",sep = ""))
sink("some_commands_output.txt")
source("some_commands.r",echo = TRUE)
sink()
help()
temp <- 1.4
## work with tmp and cleanup
rm(temp)
print(temp)
temp <- 2.5
print(temp)
rm(temp)
print(temp)
type objects()
objects()
x<- 8
x
y <- 3.1415
objects()
rm(x)
rm(y)
y
x
rm(name)
rm(type)
rm(username)
rm(loaded)
objects()
rm(datf)
rm(datf2)
objects()
clear()
log(3,base = 10)
M <- matrix(1:6,nrow=2)
M
M<- matrix(1:6,nrow=2,byrow=TRUE)
M
dim(M)
M <- matrix(1:6,ncol=3)
M
dim(M)
M<- matrix(1:6)
M
dim(M)
fibonacci<-c(1,1,2,3,5,8,13,21,35,55)
fibonacci[7]
M<- matrix(1:6,nrow = 2)
M[1,3]
M[2,3]
M[1:2, 1]
M[2, c(1,3)]
M[1:2, c(1,3)]
M[2,]
M[,3]
M[ ,3]
