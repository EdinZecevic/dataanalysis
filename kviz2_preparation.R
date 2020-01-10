num_vec <- (c(1:10))^2
plot(num_vec)

# plot factor
set.seed(4)
abc <- factor(sample(c('A', 'B', 'C'), 20, replace = TRUE))
plot(abc)

abcde

abc_table <- table(abc)
plot(abc_table)

abcd <- sample(c('A', 'B', 'C'), 20, replace = TRUE)
abce <-factor(abcd)
plot(abce)

barplot(num_vec)
ab <- sample(c('A', 'B', 'C'), 20, replace = TRUE)
pie(num_vec:abce)

dotchart(num_vec)

boxplot(num_vec)


boxplot(num_vec)
# pie chart
hist(num_vec)
# dot plot
stripchart(num_vec)
# stem-and-leaf
stem(num_vec)

boxplot(iris$Sepal.Length)

hist(iris$Sepal.Length)

# kernel density curve
dens <- density(num_vec)
plot(dens)

scatterplot(num_vec)

plot(iris$Petal.Length, iris$Sepal.Length)

plot(iris$Petal.Length, iris$Species)
     
# some fake data
set.seed(1)
# hair color
hair <- factor(sample(c('blond', 'black', 'brown'), 100, replace = TRUE))
# eye color
eye <- factor(sample(c('blue', 'brown', 'green'), 100, replace = TRUE))

plot(hair, eye)

sunflowerplot(num_vec, num_vec) 
boxplot(hair, eye) 
dotchart(hair, eye) 
sunflowerplot(hair, eye) 

m <- matrix(1:8, 4, 2)
barplot(m)
barplot(m, beside = TRUE)

x <- margin.table(HairEyeColor, c(2, 1))
     
mosaicplot(x, main = "Relation between hair and eye color")     

plot(iris[ , 1:4])


head(mtcars)

plot(mtcars$mpg,mtcars$hp)

# xlab and ylab
plot(mtcars$mpg, mtcars$hp, xlab = "miles per gallon",
     ylab = "horsepower")

# title and subtitle
plot(mtcars$mpg, mtcars$hp, xlab = "miles per gallon",ylab = "horsepower", main = "Simple Scatterplot",
     sub = 'data matcars')

plot(mtcars$mpg, mtcars$hp, xlim = c(10, 35), ylim = c(50, 400))

# using 'type' (e.g. lines)
plot(mtcars$mpg, mtcars$hp, type = "l")

# character expansion 'cex'
# and 'point character'
plot(mtcars$mpg, mtcars$hp, cex = 3.5, pch = 20)#cex is the weight of elemnts and pch is style we have them in R many

plot(mtcars$mpg, mtcars$hp,cex=5, pch = "@")

plot(mtcars$mpg, mtcars$hp, cex=3, pch = 1:25)

plot(mtcars$mpg, mtcars$hp, pch = 19, col = "red", cex = 1.2)#red colour

plot(mtcars$mpg, mtcars$hp, pch = 19, col =  1:25, cex = 1.2)#colour in sequence

plot(mtcars$mpg, mtcars$hp,
     xlim = c(10, 35), ylim = c(50, 400),
     xlab = "miles per gallon",
     ylab = "horsepower",
     main = "Simple Scatterplot",
     sub = 'data matcars',
     pch = 1:25, cex = 1.2, col = "blue")

# simple scatter-plot
plot(mtcars$mpg, mtcars$hp)

# adding text
text(mtcars$mpg, mtcars$hp, labels = rownames(mtcars))

# dummy legend
legend("topright", legend = "a legend")
title("Miles Per Galon -vs- Horsepower")

# simple scatter-plot
plot(mtcars$mpg, mtcars$hp, type = "n",
     xlab = "miles per gallon", ylab = "horsepower")
# grid lines
abline(v = seq(from = 10, to = 30, by = 5), col = 'gray')
abline(h = seq(from = 50, to = 300, by = 50), col = ' gray')
# plot points
points(mtcars$mpg, mtcars$hp, pch = 19, col = "blue")
# plot text
text(mtcars$mpg, mtcars$hp, labels = rownames(mtcars),
     pos = 4, col = "gray50")
# graphic title
title("Miles Per Galon -vs- Horsepower")

plot(mtcars$mpg, mtcars$hp, type = "n")

points(mtcars$mpg, mtcars$hp,col="red", pch=4, cex=2)

lines(mtcars$mpg, mtcars$hp, lty = "solid", lwd = 2, col = "red")

plot(mtcars$mpg, mtcars$hp, type = "n")
lines(mtcars$mpg, mtcars$hp, type = "l", lwd = 2)

x <- 2005:2015
y <- c(81, 83, 84.3, 85, 85.4, 86.5, 88.3, 88.6, 90.8, 91.1, 91.3)
plot(x, y, type = 'n', xlab = "Time", ylab = "Values")
lines(x, y, lwd = 2)
points(x,y, pch=3, cex=3, col="blue")
title(main = "Line Graph Example")

# drawing straight lines
plot(mtcars$mpg, mtcars$hp, type = "n")
abline(v = seq(10, 30, by = 5), h = seq(50, 300, by = 50))
points(mtcars$mpg, mtcars$hp, pch = 19, col = "red")
text(mtcars$mpg, mtcars$hp, row.names(mtcars))

n <- 11
theta <- seq(0, 2 * pi, length = n + 1)[1:n]
x <- sin(theta)
y <- cos(theta)
v1 <- rep(1:n, n)
v2 <- rep(1:n, rep(n, n))
plot(x, y, type = 'n')
segments(x[v1], y[v1], x[v2], y[v2])

plot(0.5, 0.5, xlim = c(0, 1), ylim = c(0, 1), type = 'n')
abline(h = c(.2, .5, .8),
       v = c(.5, .2, .8), col = "lightgrey")
text(0.5, 0.5, "srt = 45, adj = c(.5, .5)",
     srt = 45, adj = c(.5, .5))
text(0.5, 0.8, "adj = c(0, .5)", adj = c(0, .5))
text(0.5, 0.2, "adj = c(1, .5)", adj = c(1, .5))
text(0.2, 0.5, "adj = c(1, 1)", adj = c(1, 1))
text(0.8, 0.5, "adj = c(0, 0)", adj = c(0, 0))

plot.new()
plot.window(xlim = c(0, 10), ylim = c(-2, 4), xaxs = "i")
axis(1, col.axis = "grey30")
axis(2, col.axis = "grey30", las = 1)
title(main = "Main Title",
      col.main = "tomato",
      sub = "Plot Subtitle",
      col.sub = "orange",
      xlab = "x-axis", ylab = "y-axis",
      col.lab = "blue", font.lab = 3)
box("figure", col = "grey90")

set.seed(5)
x <- rnorm(200)
y <- x + rnorm(200)
plot.new()
plot.window(xlim = c(-4.5, 4.5), xaxs = "i",
            ylim = c(-4.5, 4.5), yaxs = "i")
z <- lm(y ~ x)
abline(h = -4:4, v = -4:4, col = "lightgrey")
abline(a = coef(z)[1], b = coef(z)[2], lwd = 2, col = "red")
points(x, y)
axis(1)
axis(2, las = 1)
box()
title(main = "A Fitted Regression Line")

plot.window(xlim = c(0, 1), ylim = c(0, 1))

plot.new()
plot.window(xlim = c(0, 1), ylim = c(0, 1))
arrows(.05, .075, .45, .9, code = 1)
arrows(.55, .9, .95, .075, code = 2)
arrows(.1, 0, .9, 0, code = 3)
text(.5, 1, "A", cex = 1.5)
text(0, 0, "B", cex = 1.5)
text(1, 0, "C", cex = 1.5)

install.packages("ggplot2")
# load ggplot2
library(ggplot2)


starwars

ggplot(data = starwars) +
  geom_point(aes(x = height, y = weight, color = jedi,))

ggplot(data = mtcars, aes(x = mpg, y = hp)) +
  geom_point()

ggplot(data = mtcars) +
  geom_point(aes(x = mpg, y = hp))

ggplot() +
  geom_point(data = mtcars, aes(x = mpg, y = hp))

ggplot(data = mtcars, aes(x = mpg, y = hp)) +
  geom_line()

ggplot(data = mtcars) +
  geom_line(aes(x = mpg, y = hp))

ggplot(data = mtcars, aes(x = mpg, y = hp)) +
  geom_point(size = 3, col="green")

# 'shape' accepts 'pch' values
ggplot(data = mtcars, aes(x = mpg, y = hp)) +
  geom_point(size = 3, color = "tomato", shape = 15)
mtcars<-mtcars
# mapping aesthetic color
ggplot(mtcars, aes(x = mpg, y = hp)) +
  geom_point(aes(color = cyl))

ggplot(mtcars, aes(x = mpg, y = hp)) +
  geom_point(aes(color = carb))

ggplot(data = mtcars, aes(x = mpg, y = hp)) +
  geom_point(size = 3, color = "tomato", shape=24) +
  xlab("miles per gallon") +
  ylab("horse power") +
  ggtitle("Scatter plot with ggplot2")+
theme_bw()

ggplot(data = mtcars,aes(x=mpg, y=hp))+
  geom_point(aes(size=disp),shape=17, color = "tomato")+
  xlab("miles per gallon")+
  ylab("horse power")+
  geom_smooth(method = "lm")

ggplot(data = mtcars, aes(x = mpg, y = hp)) +
  geom_point(aes(color = cyl))

ggplot(data = mtcars, aes(x = mpg, y = hp)) +
  geom_point(aes(color = as.factor(cyl)))

ggplot(data = mtcars, aes(x=mpg, y=disp))+
  geom_point(aes(color =factor(am), size = hp), alpha=0.7)+
  xlab("miles per gallon")+
  ylab("displacement")+
  title("Scatter plot with ggplot2")

ggplot(data = mtcars, aes(x = mpg)) +
  geom_histogram(binwidth = 2)

ggplot(data = mtcars, aes(x = mpg)) +
  geom_density(fill="blue", alpha=0.5)+
  theme_bw()

ggplot(data = mtcars, aes(x = mpg)) +
  geom_line(stat = 'density', col = "#a868c0", size = 2)

mpg_hp <- ggplot(data = mtcars, aes(x = mpg, y = hp)) +
  geom_point(size = 3, color = "tomato")
print(mpg_hp)


# ggplot object
obj <- ggplot(data = mtcars, aes(x = mpg, y = hp, label = rownames(mtcars)))

obj+ ggtitle("Scatter plot") +xlab("miles per gallon")+ ylab("horse power")+ 
  geom_text(aes(color=factor(am)))

ggplot(data = mtcars, aes(x = mpg, y = hp)) +
  geom_point(aes(color = factor(am))) +
  scale_x_continuous(name = "miles per gallon",
                     limits = c(10, 40),
                     breaks = c(10, 15, 20,25,  30,35, 40))+
  scale_y_continuous(name="horse power", 
                     limits=c(0,400), 
                     breaks = c(100,200,300,400))

ggplot(data = mtcars, aes(x = mpg, y = hp)) +
  geom_line(aes(color = factor(am))) +
  scale_color_manual(values = c("orange", "purple"))


ggplot(data = mtcars, aes(x = mpg, y = hp)) +
  geom_point(aes(color = factor(am))) +
  scale_color_manual(values = c("orange", "purple"),
                     name = "transmission",
                     labels = c('no', 'yes'))

ggplot(data = mtcars, aes(x = mpg, y = hp)) +
  geom_point(color = "#3088f0") +
  facet_wrap(~ cyl)

tents <- read.csv("tents1.csv")


ggplot(data = tents, aes(x = Year, y = Percent_opposed)) +
  geom_line(aes(color=Race)) +
  scale_color_manual(values = c("red","green","blue"), 
                     labels=c("black", "other", "white"))+
  scale_y_continuous(breaks = c(10,20,30,40,50))+
  xlab("Year") +
  ylab("%Opposed to harsher gun law") +
  ggtitle("Would you oppose harsher gun law?") +
  theme_bw()


median(1:10)

a <- 12345
525 + 34 - 280
median(1:10)

a <- 10
b <- 20
d <- 30

a <- 10; b <- 20; d <- 30

{
  a <- 10
  b <- 20
  d <- 30
}

mtcars[1:10]
{5 + 3; 4 * 2; 1 + 3}

z <- {x <- 4; y <- x^2; x + y}

square <- function(x) {
  x^2
}
square(10)

sum_sqr <- function(x, y) {
  xy_sum <- x + y
  xy_ssqr <- (xy_sum)^2
  list(sum = xy_sum,
       sumsqr = xy_ssqr)
}
sum_sqr(3, 5)

add <- function(x, y) {
  x + y
}
add(2, 3)

# function with 2 arguments
add <- function(x, y) z<-x + y
# function with no arguments
hi <- function() print("Hi there!")
hi()

add(1,1)

hey <- function(x = "") {
  cat("Hey", x, "\nHow is it going?")
}
hey()
## Hey
## How is it going?
hey("Gaston Sinan")

abc <- function(a, b, c = 3) {
  if (missing(b)) {
    result <- a * 2 + c
  } else {
    result <- a * b + c
  }
  result
}
abc(2)
abc(2,2)

abcd <- function(a, b = 2, c = 3, d = NULL) {
  if (is.null(d)) {
    result <- a * b + c
  } else {
    result <- a * b + c * d
  }
  result
}
abcd(2)
abcd(2,2,2,2)

myplot <- function(x, y, col = "#3488ff", pch = 19) {
  plot(x, y, col = col, pch = pch)
}
myplot(1:5, 1:5)

# encapsulate your code
variance <- function(x) {
  sum((x - mean(x))^2) / (length(x) - 1)
}
# check that it works
variance(1:2)


mean(2:8)

# adapt it gradually
variance <- function(x, na.rm = FALSE) {
  if (na.rm) {
    x <- x[!is.na(x)]
  }
  sum((x - mean(x))^2) / (length(x) - 1)
}
variance(c(1:9, NA), na.rm = TRUE)

area_rect <- function(length = 1, width = 1) {
  length * width
}
# default
area_rect()
# specifying argument values
area_rect(length = 10, width = 2)
area_rect(10,2)

x <- 7
if (x >= 0) 
print("it is positive")

set.seed(9)
x <- round(rnorm(1), 1)
if (x > 0) {
  print("x is positive")
} else if (x < 0) {
  print("x is negative")
} else if (x == 0) {
  print("x is zero")
}

true_false <- c(TRUE, FALSE)
ifelse(true_false, "false", "false")

first_name <- "harry"
last_name <- switch(
  first_name,
  harry = "potter",
  ron = "weasley",
  hermione = "granger",
  "not available")
last_name

switch(
  3,
  "one",
  "two",
  "three",
  "four")

student <- "ron"
house <- switch(
  dracoo = "sinan",
  student,
  harry = ,
  ron = ,
  hermione = "gryffindor",
  draco = "slytherin")
house

x <- 1:5
y <- x
for (i in 1:5) {
  y[i] <- x[i]^2
}
y

x <- 1:5
y <- x^2
y

set.seed(6354)
dat <- data.frame(
  replicate(6, sample(c(1:10, -99), 6, rep = TRUE))
)
names(dat) <- letters[1:6]
dat

for (i in 1:5) {
  x[i] <- i
}
x[2]

x <- numeric(5)
x

for (i in 1:5) {
  x[i] <- i
}
x

"%u%" <- function(x, y) {
  union(x, y)
}

1:5 %u% c(1, 3, 5, 7, 9)
