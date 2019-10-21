#data frames 
x<-sample(c("small", "medium", "large"), 30, replace=TRUE)

set.seed(1000)
x<-sample(c("small", "medium", "large"), 30, replace=TRUE)

set.seed(1000)
x<-sample(c("small", "medium", "large"), 30, replace=TRUE)
x<-factor(x,levels=c("small", "medium", "large"), ordered=TRUE)
str(x)

lst <-list(
  c(1,2,3),
  matrix(1:9, nrow=3, ncol=3),
  list(1:2, c(TRUE, FALSE), c("a","b"))
)
lst