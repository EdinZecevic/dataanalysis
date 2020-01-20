berlin <- read.csv("Airbnb_Berlin.csv")
length(berlin$price)#same amount like id or hostings in this data

sum(berlin$price, na.rm=TRUE)
sum(berlin$host_listings_count, na.rm=TRUE)

mean(berlin$host_listings_count, na.rm=TRUE)

plot(factor(berlin$review_scores_rating), factor(berlin$host_listings_count),
     pch = 19, col =  1:5, cex = 0.1)

install.packages("ggplot2")
# load ggplot2
library(ggplot2)

max(berlin$price)
max(berlin$accommodates)
max(berlin$minimum_nights)

ggplot(data = berlin,aes(x=factor(review_scores_rating), y=factor(host_listings_count)))+
  geom_point(aes(color =factor(host_listings_count), size =1), alpha=0.7)+
  title("Corelation between review based score and number of listing for each host")+
  xlab("review_scores_rating")+
  ylab("host_listings_count")

ggplot(data = berlin,aes(x=factor(price), y=factor(host_listings_count)))+
  geom_point(aes(color =factor(host_listings_count), size =1), alpha=0.7)+
  xlab("price")+
  ylab("host_listings_count")

availabilityPercentage<-function(x){ #function that calculates the
  c <- c()                            #availability in percentage of a year
  for (i in 1:length(x)) {
    c[i]=(x[i]*100)/365
  }
  c
}

availabilityPercentage<-availabilityPercentage(newBerlin$availability_365)# average availability of all accomodations in Berlin

scatter.smooth(x=berlin$availability_365, y=berlin$minimum_nights, 
               main="Linear Realtion")  # scatterplot

cor(berlin$availability_365, berlin$minimum_nights)#corelation


ggplot(data = berlin, aes(x=berlin$availability_365, y=berlin$minimum_nights)) +
  geom_point(aes(color = "red")) +
  geom_smooth(method = "lm")#Linear regresion x = berlin$availability_365, y = berlin$minimum_nights

ggplot(data = berlin, aes(x=availabilityPercentage, y=berlin$minimum_nights)) +
  geom_point(aes(color = "red")) +
  geom_smooth(method = "lm")#Linear regresion x = availabilityPercentage(using function), y = berlin$minimum_nights




listing_Count_Categorised<-cut(berlin$host_listings_count, breaks = 10)
price_Categorised<-cut(berlin$price, breaks = 100)



