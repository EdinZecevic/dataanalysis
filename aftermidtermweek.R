HairEyeColor
x <- margin.table(HairEyeColor, c(1, 2))
x

mosaicplot(x, main = "Relation between hair and eye color")

assocplot(x, main = "Relation between hair and eye color")

plot(iris[ , 1:4])

pairs(iris[ , 1:4])

matplot(iris[ , 1:4])
iris

stars(iris[ , 1:4])

max(iris[,3])

image(t(volcano)[ncol(volcano):1, ])

x <- 10*(1:nrow(volcano))
y <- 10*(1:ncol(volcano))
image(x, y, volcano, col = terrain.colors(100), axes = FALSE)
contour(x, y, volcano, levels = seq(90, 200, by = 5),
        add = TRUE, col = "peru")
axis(1, at = seq(100, 800, by = 100))
axis(2, at = seq(100, 600, by = 100))
box()
title(main = "Maunga Whau Volcano", font.main = 4)

symbols(iris[, 1], iris[, 2], circles = iris[, 3]/100,inches = FALSE)

origin <- 'http://archive.ics.uci.edu/ml/machine-learning-databases/abalone/abalone.data'
destination <- 'abalone.data'
download.file(origin, destination)

abalone <- read.table("abalone.data", sep = ",")

head(abalone)

str(abalone, vec.len = 1)

abalone[abalone=="V1"] <- "Sex"


abalone[,1]
