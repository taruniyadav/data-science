
data<-read.table(file="D:/7112/i am taruni.txt",header=TRUE,sep=",")
print(data)

url<-"sample.txt"
data<-read.table(url,header = TRUE)
view(data)

d<-data.frame(var1=c(1,2,3,4),
              var2=c(7,7,8,9),
              var3=c(3,5,6,7))
write.table(d,file="D:/7112/abc.txt")
d

df<-data.frame(name=c("deva","raja","shekar"),
               age=c(23,34,56))
#write .csv to export the data frame to disk
write.csv(df,"D:/7112/New Text Document.csv",row.names=FALSE)
df

install.packages('readxl')
library(readxl)

#import excel file into R

data<-read_excel("D:/7112/Book1.xlsx")
View(data)

#reading xml file
install.packages("XML")
library(methods)
