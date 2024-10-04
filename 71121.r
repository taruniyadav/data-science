
mydata <- read.csv("http://www.karlin.mff.cuni.cz/~pesta/prednasky/NMFM404/Data/binary.csv")

#view the first few rows

head(mydata)

#summarize the data
summary(mydata)

mydata$rank<-factor(mydata$rank)

mylogit <-glm(admit ~ gre + gpa + rank, data = mydata ,family = "binomial")

summary(mylogit)

dim(mydata)
