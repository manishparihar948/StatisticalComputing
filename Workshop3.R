# Stattistical Computation : Workshop3
load("~/Downloads/BloodType.csv")
load("~/Downloads/Medication.csv")
load("~/Downloads/Prestige.csv")

x<-c(1:5,NA,10:15)
is.na(x)
!is.na(x)
x[!is.na(x)]
mean(x, na.rm = TRUE)
mean(x[!is.na(x)])