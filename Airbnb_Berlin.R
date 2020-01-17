berlin <- read.csv("Airbnb_Berlin.csv")
berlin[11]#amenities

berlin$price
length(berlin$price)
v<-c(berlin$price)
v[22464]

sum<-function(x){    #sum(x) function converts data to vector adn return sum
  vector<-c(x)
  total=0
  for (i in vector) {
    total=total+i
  }
  s<-total
  return(s)
}

sum(berlin$price)

average<-function(x){       #returns average number 
  average<-sum(x)/length(x)
  return(average)
}

average(berlin$price)
average(berlin$host_response_rate)
average(berlin$host_listings_count)
factor(berlin$accommodates)
factor(berlin$review_scores_rating)

plot(factor(berlin$review_scores_rating), factor(berlin$host_listings_count),
     pch = 19, col =  1:10, cex = 0.1)

install.packages("ggplot2")
# load ggplot2
library(ggplot2)

max(berlin$price)

max(berlin$accommodates)

ggplot(data = berlin,aes(x=factor(review_scores_rating), y=factor(host_listings_count)))+
  geom_point(aes(color =factor(host_listings_count), size =1), alpha=0.7)+
  title("Corelation between review based score and number of listing for each host")+
  xlab("review_scores_rating")+
  ylab("host_listings_count")

ggplot(data = berlin,aes(x=factor(price), y=factor(host_listings_count)))+
  geom_point(aes(color =factor(host_listings_count), size =1), alpha=0.7)+
  title("Corelation between review based score and number of listing for each host")+
  xlab("price")+
  ylab("host_listings_count")

availabilityPercentage<-function(x){ #function that calculates the
  new<-c(x)                         #availability in percentage of a year
  newNew<-c()
  for (i in new) {
    singleElement=(new[i]*100)/365
    newNew[i]=singleElement
  }
  return(newNew)
}
availabilityPercentage<-availabilityPercentage(berlin$availability_365)
average(availabilityPercentage)# average availability of all accomodations in Berlin

scatter.smooth(x=berlin$availability_365, y=berlin$minimum_nights, 
               main="Linear Realtion")  # scatterplot

cor(berlin$availability_365, berlin$minimum_nights)#corelation

max(berlin$mirenimum_nights)


ggplot(data = berlin, aes(x = berlin$availability_365, y = berlin$minimum_nights)) +
  geom_point() +
  geom_smooth(method = "lm")