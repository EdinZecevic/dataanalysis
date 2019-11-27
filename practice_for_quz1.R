typeof(age) # type int, double, char, bool

mode(age) # numeric, character, logical

mode(player)

mode(b1)

x <- c(1, 2, 3, 4, 5) #array x

x <- c(1, 2, 3, "four", "five") # vector is atomic and have to have onlt one type
                                #if character is in vector all will be the cahr type



x <- c(1, 2, 3, TRUE , FALSE)

as.character(x)# set the vector of x in vector

as.logical(x)

x <- c(2, 4, 6, 8)

names(x) <- letters[1:4] #giving the name of the "columns" over numbers in X a-d
names(x) #show 

x[1]# first ilement in vector

x

x[length(x)]#last element in vector

x[2:3]#show from 2-3 elemnts

x[c(4,2,3,1)]#sort it in 4,2,3,1 elemt

x[c(TRUE, FALSE, TRUE, FALSE)]#true shows elemnt false not

x[x==2]# all elements eqals 2

x[x!=2]# all elements not eqals 2

x["a"]# all column a

x[rep("a", 5)] #repeat a column 5 times

x[x>1]#all over 1

x[TRUE]#ispis

x[FALSE]

x[as.logical(c(0, 1, pi, -10))]#take as a bool and first is 0 and only that is not shown

as.logical(c(0, 1, pi, -10))

z<-c(1, 2, 3) + c(3, 2, 1)
z<-c(1, 2, 3) * c(3, 2, 1)
z<-c(1, 2, 3) ^ c(3, 2, 1)

w<-c(2, 1) + c(1, 2, 3)

w<-c(1, 2, 3, 4) + c(1,2)#if arary is smaller then it repeat numbers 
                          #smaller array will look like c(1,2,1,2)

w<- x*3#product of vector and 3

x <- 1:8 #making vector for 1-8
dim(x) <- c(2,4)#the dimensions of the vector like matrix when printed row*column

A <- matrix(x, nrow = 2, ncol = 4, byrow = TRUE) #store matrix in A 2*4 sorted by 
                                                  #row becouse column is default

size <- c("sm", "md", "lg", "md") #vector of type char

size <- factor(size)# factoring size it compare the character and give them
                            #numeric value

lst <- vector(mode = "list")#give to vector mode of list

lst <- list(
  c(1, 2, 3),
  matrix(1:9, nrow = 3, ncol = 3, byrow = TRUE),#list of lenght 3
  list(1:2, c(TRUE, FALSE), c("a", "b"))
)

lst[3]#element 3

lst[[3]]# object 3

lst[[1]][2]#object 1 element 2
lst[[2]][2,2]#object 2, becouse it is mtrix we locate exact elemt 2x2
lst[[2]][,2]#list columns
lst[[2]][2,]#list row
lst[[3]][2]#show the 2 elemnt of object 3

lst[[3]][[2]][c(TRUE, FALSE)]#show only 1 element of 2 in object 3


lst <- list(
  vec = c(1, 2, 3),
  mat = matrix(1:9, nrow = 3, ncol = 3),
  lis = list(1:2, c(TRUE, FALSE), c("a", "b"))
)

lst$vec[1] #short for list vector elemnt 1
lst$mat[2,2]
lst$mat[,2]
lst$mat[2,]
lst$lis[[2]][2]

df <- data.frame(
  name = c('Anakin', 'Padme', 'Luke', 'Leia'),
  gender = c('male', 'female', 'male', 'female'),
  height = c(1.88, 1.65, 1.72, 1.50),
  weight = c(84, 45, 77, 49)
)

str(df)
head(df)
tail(df)
summary(df)
dim(df)
nrow
names(df)
colnames(df)
rownames(df)
dimnames(df)

load('usa-states.RData')

str(airquality)

str(airquality, vec.len = 1)
head(airquality, n = 5)


summary(airquality)

object.size(airquality)
attributes(airquality)

airquality[1]
airquality[1,2]

airquality[airquality$Month==5, ]

object.size(airquality)

attributes(airquality)

airquality[2:4, 2:4]

airquality[ ,"Ozone",drop=FALSE]

airquality$"Ozone"
airquality$Ozone


these = c('Day', 'Wind', 'Rain','Temp', 'XY', 'Snow')
Q = names(airquality) %in% these
airquality[ ,Q]


cols3 = c(rep(TRUE, 3),rep(FALSE, 3))
airquality[ ,cols3]

dimnames(airquality)

airquality[,1,drop=FALSE]

airquality[1, "Ozone"]

airquality["Ozone"]

airquality$"Ozone"
airquality$Ozone

airquality[["Ozone"]]

df <- data.frame(
  name = c( "Anakin" , "Padme" , "Luke" ,"Leia"),
  gender = c("male", "female", "male", "female"),
  height = c(1.88, 1.65, 1.72, 1.50),
  weight = c(84, 45, 77, 49)
)

df$eyecolur<-c("Red", "Blue", "Pink", "Brown")

str(df)

factor(df$eyecolur)

haircolour<-c("Red", "Blue", "Pink", "Brown")

df<-cbind(df, haircolour)

new<-c("Edin", "male", 1.78, 76)

df<-rbind(df, new)

df$x<-c(1:5)

df[ , c("w", "y")] <- cbind(1:5,6:10)

df$x<-NULL

df<-df[,1:4]

df[df$name == "Luke", ]

sort(df$weight)

df[order(df$weight),]

df$name[[5]]<-c("Edin")

df[5,1]="Edin"

#continious 
#generic is plot
