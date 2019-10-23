lst <-list(
  c(1,2,3),
  matrix(1:9, nrow=3, ncol=3),
  list(1:2, c(TRUE, FALSE), c("a","b"))
)
lst

names(lst)

lst[[3]][[3]][2]

lst[[3]][[1]][rep(c(TRUE, FALSE),2)]

rep(c(TRUE, FALSE),2)

lst[[3]][[1]][c(TRUE,TRUE, FALSE, FALSE)]

lst[[3]][[1]]<-c(2, 8, 10, 7)

names(lst)<-c("a", "b", "c")

lst[[a]]

lst[[1]]

df<- data.frame(
  name =c('Anakin', 'Padme', 'Luke', 'Leia'),
  gender = c('male', 'female', 'male', 'female'),
  height = c(1.8, 1.65, 1.72, 1.50),
  weight = c(84, 45, 77, 49)
)

df[1]

df[[1]] [2]

df[[1]] [[2]]