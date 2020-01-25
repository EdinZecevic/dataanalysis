newBerlin <- newBerlin[newBerlin$availability_365!=0,]#Deleted all accomodations that have availability 0
newBerlin <- newBerlin[!is.na(newBerlin$availability_365),]#Deleted all accomodations that have NULL availability
