load('salary-points.RData')
salary_inmilions<-round(salary/1000000, 2)

position[position=="C"] <- "center"
position[position=="SF"] <- "small_fwd"
position[position=="PF"] <- "power_fwd"
position[position=="SG"] <- "shoot_guard"
position[position=="PG"] <- "point_guard"

position<-factor(position)

points<-points1+points2+points3

plot(points,salary_inmilions)

plot(log(points),log(salary_inmilions))

plot(log(points),log(salary_inmilions),pch = 0:18)

sum_salary_inmilions<- sum(salary_inmilions)

sum_of_points<-sum(points)

player

average<-sum_salary_inmilions/441



y<-salary
x<-points

cov(x,y)

plot(x,y)

sd(x)

sd(y)

c<-sd(x)/sd(y)

(sd(x)+sd(y))/c

plot(average,)

min(salary)

max(salary)
abline(salary_inmilions, points)

lines(salary_inmilions, points)

b1<- cor(x,y)*c

b0<-y-(b1*x)

cc<-b0+b1*y
