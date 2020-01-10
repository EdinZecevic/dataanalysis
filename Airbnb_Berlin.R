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

average(berlin$host_listings_count)

