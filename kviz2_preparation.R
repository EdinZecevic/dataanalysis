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
points(x,y, pch=3, cex=2, col="blue")
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

