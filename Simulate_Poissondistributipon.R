#Simulate poisson distribution
#1 set x = 0, T = 0
#2 Generate U uniform (0,1) and let Y = -(1/lamda)log(1-U)
#3 Set T = T+Y
#4 If T>1, output X;else set X = X+1 and go to step 2
simulate_poissondistribution<-function(n = 100000,lamda = 10)
{ 
X = 0
T1 = 0
poisson_variables = 0
u1 <- runif(n)
for(i in 1:n)
{ 
  y <- -(1/lamda)*log(1-u1[i])
  T1 = T1 + y;
  if (T1 > 1)
  {
    poisson_variables <-c(poisson_variables,X);
    T1 = 0;
    X = 0;
  }else
  {
    X = X+1 
  }
}
sum(u1)
sum(poisson_variables)
print(poisson_variables)
hist(poisson_variables)
cat("mean =", mean(poisson_variables))
}
simulate_poissondistribution(1000,9)