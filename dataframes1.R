airquality[1,]
airquality[2,]
airquality[seq(3,50,1),]
rep(c(TRUE,TRUE,FALSE),50)
seq(3,50,1)
airquality[-seq(3,153,3),]
airquality[-seq(3,153,3),]
airquality[c(100,102,106), c(3,6)]#gives the exact columns with raws
df[-2,-2]#show wverything exact this row an column
df[-2,-2]
df[c(-2),c(-2)]#only this one cell
airquality[airquality$Month==5,]#print ste all rows with month number 5

df[df$name<"male", ]

airquality[c(TRUE,FALSE), ]#prints the odd numbers, like in sequence just set the true false

these = c('Day', 'Wind', 'Rain', 'Temp', 'XY', 'Snow') # look for these names
Q = names(airquality) %in% these  # query logical selection
airquality[ ,Q]# selecting corresponding columns

airquality[Q,]# selecting corresponding rows

str(airquality[[1]])

str(airquality[[1]])#gives thr whole osone