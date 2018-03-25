load("~/Downloads/my.random.sample.Rda")
x<-my.rs()
xmean <- mean(x)
sdx <- sd(x)
Q1 <- xmean -1.86 *sdx/sqrt(length(x))
Q1
