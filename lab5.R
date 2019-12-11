install.packages("ggplot2")

library(ggplot2)


?ggplot
tents <- read_csv("https://raw.githubusercontent.com/ucb-stat133/stat133-fall-2015/master/data/tents1.csv")
tents1 <- read_csv("tents1.csv")
tents<-tents <- read_csv("PercOpposedHarsheGunLaw.csv")

tents[2]

ggplot(data = tents, aes(x = Year, y = Percent_opposed)) +
  geom_line(aes(size=Race, color = "red")) +
  geom_line(aes(size=Race, color = "blue")) +
  geom_line(aes(size=Race, color = "green")) +
  xlab("Year") +
  ylab("%Opposed to harsher gun law") +
  ggtitle("Would you oppose harsher gun law?") +
  theme_bw()
