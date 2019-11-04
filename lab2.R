plot(log_area, log_water)

plot(log(area), log(water))#cleare picture of the plot

plot(area, water) #wider more complicated

abline(a=3.3 , b=0.4398)#line which says about average

text(log(area), log(water), labels=state, cex=0.4)#names of the states

abbreviate(state ,3)

sqrt(area[5])

sum(area)

sum(log(area))

units <- c(0.386, 247.105)#making new line of data with 2 numbers
new_area <- area*units

new_units <- rep(c(0.386, 247.105), length(area))#fill the new units repeating
#the numbers from the brackets till the fill the lenght of array

num_vector<-c(1,2,3,1,2,3,2)
first_factor <- factor(num_vector)
first_factor


str_vector <- c('a', 'b', 'c', 'b', 'c', 'a', 'c', 'b')
str_vector

storage.mode(first_factor)
storage.mode(str_vector)

load('salary-points.RData')

salary

salary(digits=2)

salary_inmilions<-round(salary/1000000, 2)#showing the salary in milions

replace(experience, 'R', 0)

replace(experience_int, 0, 'R')

experience_int

replace(experience_int, 4, 0) #specific elemt replacinge

experience_int<-c(replace(experience, , 0))

factor(experience)


experience[experience=='R']

experience_int<-c(replace(experience, experience=='R', 0)) #repleacing all r with 0

experience_int<-as.integer(experience_int)#converting from char to integer 

position[position=='C']
position<-c(replace(position, position=='C', 'center'))
position<-c(replace(position, position=='SF', 'small_fwd'))
position<-c(replace(position, position=='PF', 'power_fwd'))
position<-c(replace(position, position=='SG', 'shoot_guard'))

salary<-round(salary/1000000,2)
experience<-strtoi(experience)
experience[is.na(experience)]<-0


position[position=="C"] <- "center"
position[position=="SF"] <- "small_fwd"
position[position=="PF"] <- "power_fwd"
position[position=="SG"] <- "shoot_guard"
position[position=="PG"] <- "point_guard"

position<-factor(position)

points<-points1+points2+points3

plot(points,salary_inmilions)

plot(log(points),log(salary_inmilions))

plot(log(points),log(salary_inmilions),pch = 0:18)#plotting with characters
plot(log(points),log(salary_inmilions),pch = 0:18)#plotting with characters

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


