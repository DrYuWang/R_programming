# Simulate exponential distribution
n = 100
lamda = 2
u1 <- runif(n)
class(u1)
expon_variable <-array(0,n)
for(i in 1:n)
{
  expon_variable[i] <- -(1/lamda)*log(1-u1[i])
}
print(expon_variable)
hist(expon_variable)
