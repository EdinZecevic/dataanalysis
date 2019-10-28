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

