install.packages("ggplot2")
# load ggplot2
library(ggplot2)

plot(factor(berlin$review_scores_rating), factor(berlin$host_listings_count),
     pch = 19, col =  1:5, cex = 0.1)

ggplot(data = berlin,aes(x=factor(review_scores_rating), y=factor(host_listings_count)))+
  geom_point(aes(color =factor(host_listings_count), size =1), alpha=0.7)+
  title("Corelation between review based score and number of listing for each host")+
  xlab("review_scores_rating")+
  ylab("host_listings_count")

ggplot(data = berlin,aes(x=factor(price), y=factor(host_listings_count)))+
  geom_point(aes(color =factor(host_listings_count), size =1), alpha=0.7)+
  xlab("price")+
  ylab("host_listings_count")

scatter.smooth(x=berlin$availability_365, y=berlin$minimum_nights, 
               main="Linear Realtion")  # scatterplot

cor(berlin$availability_365, berlin$minimum_nights)#corelation


ggplot(data = berlin, aes(x=berlin$availability_365, y=berlin$minimum_nights)) +
  geom_point(aes(color = "red")) +
  geom_smooth(method = "lm")#Linear regresion x = berlin$availability_365, y = berlin$minimum_nights

ggplot(data = newBerlin, aes(x=availabilityPercentage, y=newBerlin$minimum_nights)) +
  geom_point(aes(color = "red")) +
  geom_smooth(method = "lm")#Linear regresion x = availabilityPercentage(using function), y = berlin$minimum_nights