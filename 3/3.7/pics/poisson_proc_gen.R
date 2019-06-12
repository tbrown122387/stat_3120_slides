# parameters
num <- 10
r <- 5

# generate realizations
interArrivalTimes1 <- rexp(n=num, rate=r)
arrivalTimes1 <- cumsum(interArrivalTimes1)
arrivalTimes1 <- c(0, arrivalTimes1)
interArrivalTimes2 <- rexp(n=num, rate=r)
arrivalTimes2 <- cumsum(interArrivalTimes2)
arrivalTimes2 <- c(0, arrivalTimes2)
maxTime <- max(arrivalTimes2, arrivalTimes1) 

#plot stuff
plot(arrivalTimes1, 0:num, type = "s", 
     main="Two Realizations of a Poisson Process", 
     ylab="arrivals so far", 
     xlab="time", 
     xlim = c(0,maxTime))
lines(arrivalTimes2, 0:num, type = "s")
