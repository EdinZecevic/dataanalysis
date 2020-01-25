berlin <- read.csv("Airbnb_Berlin.csv")

#host_response_rate EDDITING
#Response rate all NA to 0 becouse 0 is more than one day and for us
#is meaningfull ins response in one day or more than one day but not
#in how many days
berlin$host_response_rate<-as.character(berlin$host_response_rate)# Converting factors to character
berlin$host_response_rate[berlin$host_response_rate=="N/A"] <- "0" # Replace N/A with 0
factor(berlin$host_response_rate) #Factorising again 


#bathrooms EDDITING
#If bathroom ins null or N/A it mean that it is not setted, impssible to have accomodation
#without bathroom, it is possible but unuseless and we do not need it and wee will set to 1
berlin$bathrooms<-as.character(berlin$bathrooms)# Converting numeric to character
berlin$bathrooms[is.na(berlin$bathrooms)] <- "NA" # Replace NULL with NA
berlin$bathrooms[berlin$bathrooms=="NA"] <- "1" # Replace NA with 1
berlin$bathrooms<-as.numeric(berlin$bathrooms) #Converting bathrooms from character to numeric

#bedrooms EDDITING
#Same edditing like in bathrooms but here if there is null or NA can be allso input error
#the bedroom can be allso living space where are all other facilities like one apartment
#with only one room and bathroom and kitchen
berlin$bedrooms<-as.character(berlin$bedrooms)# Converting numeric to character
berlin$bedrooms[is.na(berlin$bedrooms)] <- "NA" # Replace NULL with NA
berlin$bedrooms[berlin$bedrooms=="NA"] <- "1" # Replace NA with 1
berlin$bedrooms<-as.numeric(berlin$bedrooms) #Converting bedrooms from character to numeric

berlin$host_listings_count<-as.character(berlin$host_listings_count)# Converting numeric to character
berlin$host_listings_count[is.na(berlin$host_listings_count)] <- "NA" # Replace NULL with NA
berlin$host_listings_count[berlin$host_listings_count=="NA"] <- "1" # Replace NA with 1
berlin$host_listings_count<-as.numeric(berlin$host_listings_count) #Converting host_listings_count from character to numeric

berlin <- berlin[berlin$beds!=0,]#Deleted all accomodations that have 0 beds
berlin <- berlin[!is.na(berlin$beds),]#Deleted all accomodations that have NULL beds
berlin <- berlin[berlin$price!=0,]#Deleted all accomodations that have price 0
berlin <- berlin[!is.na(berlin$price),]#Deleted all accomodations that have NULL price

#deposit EDDITING
#if deposit is empty or NA it can be setted to 0, becouse if it is not mentioned
#on listing you do not have to pay it
berlin$deposit<-as.character(berlin$deposit)# Converting numeric to character
berlin$deposit[is.na(berlin$deposit)] <- "NA" # Replace NULL with NA
berlin$deposit[berlin$deposit=="NA"] <- "0" # Replace NA with 0
berlin$deposit<-as.numeric(berlin$deposit) #Converting deposit from character to numeric

#cleaning EDDITING
#if cleaning is empty or NA it can be setted to 0, becouse if it is not mentioned
#on listing you do not have to pay it
berlin$cleaning<-as.character(berlin$cleaning_fee)# Converting numeric to character
berlin$cleaning[is.na(berlin$cleaning)] <- "NA" # Replace NULL with NA
berlin$cleaning[berlin$cleaning=="NA"] <- "0" # Replace NA with 1
berlin$cleaning<-as.numeric(berlin$cleaning) #Converting cleaning from character to numeric

berlin <- berlin[berlin$minimum_nights!=0,]#Deleted all accomodations that have minimum stay nights 0
berlin <- berlin[!is.na(berlin$minimum_nights),]#Deleted all accomodations that have NULL minimum stay nights


