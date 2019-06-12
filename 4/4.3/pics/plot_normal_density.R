# params
mu1 <- 5
mu2 <- -.25
sigma1 <- 1
sigma2 <- 3

# plot stuff
xVals <- seq(-10,10,.25)
firstDensity <- dnorm(xVals, mu1, sigma1)
secondDensity <- dnorm(xVals, mu2, sigma2)
plot(xVals, firstDensity, 
     col="red", 
     type="l", 
     main = "some Gaussian densities",
     xlab = "x",
     ylab = "f(x)")
lines(xVals, secondDensity, col="blue", type = "l")
legend(-10,.4, 
       c('mu=5, sigma=1', 'mu=-.25, sigma=3'),
       col=c("red","blue"),
       lty = c(1, 1), #Line TYpe
       bg = "gray90") #Back Ground color
