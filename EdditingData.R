berlin <- read.csv("Airbnb_Berlin.csv")

#host_response_rate EDDITING
#Response rate all NA to 0 becouse 0 is more than one day and for us
#is meaningfull ins response in one day or more than one day but not
#in how many days
host_response_rate<-as.character(berlin$host_response_rate)# Converting factors to character
host_response_rate[host_response_rate=="N/A"] <- "0" # Replace N/A with 0
factor(host_response_rate) #Factorising again 


#bathrooms EDDITING
#If bathroom ins null or N/A it mean that it is not setted, impssible to have accomodation
#without bathroom, it is possible but unuseless and we do not need it and wee will set to 1
bathrooms<-as.character(berlin$bathrooms)# Converting numeric to character
bathrooms[is.na(bathrooms)] <- "NA" # Replace NULL with NA
bathrooms[bathrooms=="NA"] <- "1" # Replace NA with 1
bathrooms<-as.numeric(bathrooms) #Converting bathrooms from character to numeric

#bedrooms EDDITING
#Same edditing like in bathrooms but here if there is null or NA can be allso input error
#the bedroom can be allso living space where are all other facilities like one apartment
#with only one room and bathroom and kitchen
bedrooms<-as.character(berlin$bedrooms)# Converting numeric to character
bedrooms[is.na(bedrooms)] <- "NA" # Replace NULL with NA
bedrooms[bedrooms=="NA"] <- "1" # Replace NA with 1
bedrooms<-as.numeric(bedrooms) #Converting bedrooms from character to numeric

newBerlin <- berlin[berlin$beds!=0,]#Deleted all accomodations that have 0 beds
newBerlin <- newBerlin[!is.na(newBerlin$beds),]#Deleted all accomodations that have NULL beds
newBerlin <- newBerlin[newBerlin$price!=0,]#Deleted all accomodations that have price 0
newBerlin <- newBerlin[!is.na(newBerlin$price),]#Deleted all accomodations that have NULL price


#deposit EDDITING
#if deposit is empty or NA it can be setted to 0, becouse if it is not mentioned
#on listing you do not have to pay it
deposit<-as.character(berlin$deposit)# Converting numeric to character
deposit[is.na(deposit)] <- "NA" # Replace NULL with NA
deposit[deposit=="NA"] <- "0" # Replace NA with 1
deposit<-as.numeric(deposit) #Converting deposit from character to numeric

#cleaning EDDITING
#if cleaning is empty or NA it can be setted to 0, becouse if it is not mentioned
#on listing you do not have to pay it
cleaning<-as.character(berlin$cleaning_fee)# Converting numeric to character
cleaning[is.na(cleaning)] <- "NA" # Replace NULL with NA
cleaning[cleaning=="NA"] <- "0" # Replace NA with 1
cleaning<-as.numeric(cleaning) #Converting cleaning from character to numeric

newBerlin <- newBerlin[newBerlin$minimum_nights!=0,]#Deleted all accomodations that have minimum stay nights 0
newBerlin <- newBerlin[!is.na(newBerlin$price),]#Deleted all accomodations that have NULL minimum stay nights

#newBerlin <- newBerlin[newBerlin$availability_365!=0,]#Deleted all accomodations that have availability 0
#newBerlin <- newBerlin[!is.na(newBerlin$availability_365),]#Deleted all accomodations that have NULL availability


