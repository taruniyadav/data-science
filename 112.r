
mydata<-read.csv("http://www.karlin.mff.cuni.cz/~pesta/prednasky/NMFM404/Data/binary.csv")

head(mydata)

summary(mydata)

mydata$rank<-factor(mydata$rank)

mylogit<-glm(admit~gre+gpa+rank,data=mydata,family="binomial")

newdata=data.frame(gre=520,gpa=2.93,rank=4)

predict(mylogit,newdata,type="response")

View(mydata)

newdata=data.frame(gre=650,gpa=6.01,rank=2)

predict(mylogit,newdata,type="response")

##all the discrete prediction called as classification 
## all the continuous called as prediction
data<-mtcars[,c("mpg","disp","hp","drat")]
head(data)
pairs(data,pch=0,col="black")
