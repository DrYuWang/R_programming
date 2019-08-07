# first method
n <- 1000
u1 <- runif(n)
u2 <- runif(n)
y <- rep(0,n)
x <- as.array(y)
for (i in 1:n)
{
  if((u1[i]*u1[i]+u2[i]*u2[i]) < 1){x[i]=1}
}
pie <- 4*mean(as.vector(x))
print(pie)

# second method
Simulate_pie<-function(n)
{u1 <- runif(n)
y <- array(n)
for (i in 1:n) 
{
  y[i] <- 4*sqrt(1-u1[i]^2)
}
pie = mean(y)
cat("pie =",pie)}
Simulate_pie(10000)



