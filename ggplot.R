install.packages("ggplot2")

library(ggplot2)
?ggplot

mtcars

starwars

ggplot(data = mtcars) + 
  geom_point(aes(x = mpg, y = hp), size=3)

ggplot(data = mtcars, aes(x = mpg, y = hp)) +
  geom_point(size = 3, color = "red", shape=17) +
  xlab("miles per gallon") +
  ylab("horse power") +
  ggtitle("Scatter plot with ggplot2") +
  theme_bw()

ggplot(data = mtcars, aes(x = mpg, y = disp)) +
  geom_point(aes(color = as.factor(cyl)))+
  xlab("miles per gallon") +
  ylab("displacement") +
  ggtitle("Scatter plot with ggplot2") +
  theme_bw()
