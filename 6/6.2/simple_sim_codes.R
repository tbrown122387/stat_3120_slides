##############################
# Central Limit Theorem Demo #
##############################

# first generate some random data from a uniform distribution
# we draw 1000 random numbers
our_data <- runif(n=1000, min = 0, max = 1)

#make a histogram of our data to just see what it looks like
hist(our_data)

#compute the mean
our_mean <- mean(our_data)
our_mean

# let's do this over and over again to see what the distribution of the mean looks like


# our first step is to wrap this into a function
# it makes doing something over and over again easy
do_everything_once <- function(){
  # get data
  our_data <- runif(n=1000, min = 0, max = 1)
  
  # compute the mean of the data
  our_mean <- mean(our_data)
  
  # spit out that mean we just calculated
  return(our_mean)
}

#if we do it once it gives us a number
do_everything_once()

#let's do it a thousand times

# this is just an empty list that we'll fill up with our 1000 means
our_means <- rep(0,1000)

# a for loop is a way to do something over and over again
for(i in 1:1000){
  our_means[i] <- do_everything_once()  
}

# check it out, the means are normally distributed
hist(our_means)


