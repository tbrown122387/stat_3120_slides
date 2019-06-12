#global vars
sigma <- 3
mu_zero <- 10
n <- 100
alpha <- .05
z_alpha <- qnorm(1-alpha)

calc_power <- function(mu_tilde){
  my_exp <- z_alpha + ((mu_zero - mu_tilde) / (sigma / sqrt(n)) )
  pnorm(my_exp)
}

possible_mu_tildes <- seq(10, 12, .1)
plot(possible_mu_tildes, 
     sapply(possible_mu_tildes, calc_power), 
     type = 'l',
     xlab = "actual mu",
     ylab = "probability of type 2 error",
     main = "H_0: mu = 10")
