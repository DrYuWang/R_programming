# Generate standard normal distribution with transformation from uniform distribution
n <- 10000
y1 <- runif(n)
y2 <- runif(n)
x1 <- array(0,n)
x2 <- array(0,n)
for(i in 1:n)
{
  x1[i] <- (sqrt(-2*log(y1[i])))*cos(2*3.14*y2[i])
}
hist(x1)
mean(x1)
