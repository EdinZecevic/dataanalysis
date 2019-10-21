rdata <- "https://github.com/ucb-stat133/stat133-fall-2016/raw/master/data/usa-states.RData"
download.file(url = rdata, destfile = 'usa-states.RData')
load('usa-states.RData')
ls()
state[area>400000]
PA<-area/sum(area)
PS<-seats/sum(seats)
cbind(PA,PS)
hist(PA-PS)

state[(PA-PS)==max(PA-PS)]
state[(PA-PS)==min(PA-PS)]

state.name(Alaska)

typeof(state)
str(state)

object.size(capital)

tail(state) 

names(state)<-state
names(state)

log_area <- log(area)
log_water <- log(water)
plot(log_area, log_water)

plot(area, water)

plot(log_area, log_water)
text(log_area, log_water, labels = state)

plot(area, water)

dat<- data, frame(are)

(log(area)/area) <-logarea
plot(logarea)

plot(log_area, log_water)

plot(log(area), log(water))

abline(a=3.3 , b=0.4398)

text(log(area), log(water), labels=state, cex=0.4)

abbreviate(state ,3)

names(state)<- state
names(state)

