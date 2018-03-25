# Test One
# Manish Parihar

load("/Users/apple/Desktop/Beuth Data/Beuth-Lecture/StatComp/TestOneData.Rda")
loaded()

#(a)
dim(Studio)
dim(Studio)[1]

dim(Studio)
mean(Studio$BMI)

dim(Studio$Cardio)
summary(Studio$Cardio)

frequency(Studio$Sex)
table(Studio$Sex)

boxplot(BMI~Sex,data = Studio)

tapply(Studio$BMI,Studio$Sex,mean)
tapply(Studio$BMI,Studio$Sex)

plot(Studio$BMI,Studio$Cardio,main="Cardio-Vascular rating against BMI",+xlab="BMI",ylab="Cardio")

cor(Studio$BMI,Studio$Cardio)

# Question 2
UsedCars$Km <- UsedCars$Miles*1.609
UsedCars$Km
