a<- 3 + c(1,2,4) 

x<- 1:8
dim(x) <- c(2,4)

x<- 1:8
dim(x) <- c(2,3)# error lenght

x<- 1:12
dim(x) <- c(2,2,3)

a<- 1:8
B<- matrix(a, nrow =2, ncol=4, byrow=TRUE)

a<- 1:8
B<- matrix(a, nrow =2, ncol=4)

x <- c("sm", "md", "lg", "md", "")
x <- as.factor(size)

x<- factor(x, exclude=NULL)


