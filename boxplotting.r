
#boxplots
data(iris)

#create separate boxplots for each attribute
par(mfrow=c(1,4))
for(i in 1:4){
  boxplot(iris[,i],main=names(iris)[i])
}
View(iris)

#data distribution using scatter plots
install.packages("ggplot2")
library("ggplot2")
ggplot(iris,aes(Sepal.Length,Sepal.Width))+geom_point()

#load the data
data(iris)

#pair-wise scatterplots of all 4 attributes 
pairs(iris)

#creating histogram

#make this example reproducible
set.seed(1)

#define data
x1 = rnorm(1000,mean=0.8,sd=0.2)
x2 = rnorm(1000,mean=0.4,sd=0.1)

#plot two histograms in same graph
hist(x1, col='red',xlim =c(0,1.5),main='multiple histograms',xlab='x')
hist(x2, col='green',add=TRUE)

#add legend 
legend('topright',c('x1 variable','x2 variable'),fill = c('red','green'))

#creating bar graphs
ggplot(mtcars,aes(x=cyl))+geom_bar()

#creating bar graphs
count <-c(7,25,16,12,10,30)
pie(count,labels = count)
pie(count,labels = paste0(count,"%"))

#creating coorelation matrix
#a correlation matrix is a square table that shows the correlation coefficients between variables in data
#it offers a quick way to understand the strength of the linear relationships that exists  

df<-data.frame(assists=c(4,5,5,6,7,8,8,10),
               rebounds=c(12,14,13,7,8,8,9,13),
               points=c(22,24,26,26,29,32,20,14))

#create correlation matrix
#we cause the corrplot() func from the corrplot package in r to visual the correlation
install.packages("corrplot")
library(corrplot)

#visualize correlation matrix 
corrplot(cor(df))
cor(df)