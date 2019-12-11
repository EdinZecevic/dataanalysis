f<- function(x){
  y<-1
  g(x)
}

g<-function(x){
  (x+y)/2
}


f(5)

mean(1:5) # result is 3 becouse it is 3

mean #how is implemented function mean

mean<- function(x) 2*x +5
mean(1:5)

rm(mean)#removing mean that we implemented

summary(1:10)

summary

d<- function(x){
min <- min(x)
max <- max(x)
mean <- mean(x)
sd <- sd(x)
return(c(min,max,mean,sd))
}
d(1:10)

pr<-function(x,m,s) (1/(s*sqrt(2*pi)))*exp(-(x-m^2)/(2*s^2))
pr(3,2,1)

dnorm(x, mean = 0, sd = 1, log = FALSE)

dnorm(3,2,1)