#set the path
setwd("D:/7112")

#download mtcars.csv dataset
sdata <-read.csv("mtcars.csv",header=TRUE,sep=",")
sdata

#views the data frame formed from the csv file
View(sdata)

summary(sdata)

#use of str() function(structure of the dataset) 
str(sdata)

#usage of quantile
res<-quantile(sdata$mpg,probs=c(0,0.25,0.5,0.75,1))
res

#download iris.csv dataset
sdata2<-read.csv("iris.csv",header=TRUE,sep=",")
sdata2

#extracting the rows based on the conditions given 
subset(sdata2,PetalLengthCm>1.7)

subset(sdata2,Species=="setosa"&PetalLengthCm>1.7)

#find mean points by team 
aggregate(sdata2$PetalLengthCm, by=list(sdata2$Species), FUN=mean)

#importing the csv file from github
data2<-read.csv("https://raw.githubusercontent.com/Statology/Miscellaneous/main/basketball_data.csv")
head(data2)
View(data2)

#reading text file from disk
data <-read.table(file ="C:/Users/Student/Desktop/wt/abc.txt",header=TRUE )
print(data)

#reading the text url
url<-"http://courses.washington.edu/b517/Datasets/string.txt"
data1<-read.table(url,header=TRUE)
head(data1)
View(data1)
df<-data1.frame(var1=c(1,3,3,4,5),
               var2=c(7,7,8,3,2),
               var3=c(3,3,6,6,8),
               var4=c(1,1,2,8,9))