
library(dslabs)
data("murders")

class(murders)

#to know structure
str(murders) 

head(murders)

murders$population

#access the variable names

names(murders)

pop<-murders$population
class(pop)

class(murders$state)

class(murders$region)

levels(murders$region)

region<- murders$region       
value<- murders$total
region<-reorder(region, value, FUN=sum)
levels(region)

sort(murders$total)
murders$state[1:10]

ind<-order(murders$total)
murders$abb[ind]

max(murders$total)

i_max<-which.max(murders$total)
murders$state[i_max]

murders$state[which.max(murders$population)]

murder_rate<-murders$total / murders$population * 10000

ind<-murder_rate < 0.71

ind<-murder_rate <= 0.71

ind

murders$state[ind]

x<- murders$population / 10^6
y<- murders$total

plot(x,y)

with(murders, plot(population, total))

x<-with(murders, total/population * 100000)
hist(x)

murders$state[which.max(x)]



