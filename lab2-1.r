rm(list = ls())

load('salary-points.RData')

salary<-round(salary/1000000,2)

experience<-strtoi(experience)

experience[is.na(experience)]<-0
  position<-factor(position,levels = c("C","SF","PF","SG","PG"),labels = c('center','small_fwd','power_fwd','
                                                                   shoot_guard','point_guard'))
str(position)

position[position=="C"] <- "center"

position[position=="SF"] <- "small_fwd"

position[position=="PF"] <- "power_fwd"

position[position=="SG"] <- "shoot_guard"

position[position=="PG"] <- "point_guard"

position<-factor(position)

points_total<-points1+points2+points3

plot(points_total,salary,pch=20,col=rgb(red = 1, green = 0, blue = 0, alpha = 0.5),cex=1.2,xlab = 'Points',ylab = 'Salary (in millions)'
     ,main = 'Scatterplot of Points and Salary')

lines(points_total,Y_hat)

text(locator(),labels=c('Y = 1.69 + 0.015X'))

salary_mean<-sum(salary)/length(salary)

points_mean<-sum(points_total)/length(points_total)

mean(salary)

salary_variance<-sum((salary-salary_mean)^2)/(length(salary)-1)

var(salary)s
points_variance<-sum((points_total-points_mean)^2)/(length(points_total)-1)

salary_sd <- sqrt(salary_variance)

points_sd<-sqrt(points_variance)

covariance<-(sum((points_total - points_mean)*( salary- salary_mean )))/(length(salary)-1)

corelation<-covariance/(salary_sd*points_sd)

b1<-corelation*(salary_sd/points_sd)

b0<-salary_mean-b1*points_mean

haty<-b0 + b1*points_total

summary(haty)

summary(points_total)

lines(haty,points_total)

abline(haty,points_total)
