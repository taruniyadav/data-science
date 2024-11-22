#Implementation of KNN in R
rm(list=ls())#to clearall variables
setwd('d:/')#setting work directory to 'd' where data is present
library('class')#loading package 'class' for KNN algorithm
#install.packages("caret")
library('caret')#loading package 'caret' for confusion matrix for validation
diabetes=read.csv('diabetes.csv')
class(diabetes$mass)#class() to know the datatype
str(diabetes)#to know the structure
diabetes[,'Outcome']<-factor(diabetes[,'Outcome'])
#converting the 'class' feature
str(diabetes)
mean(diabetes$age)
summary(diabetes)
train=diabetes[1:500,]
#building training data to train knn
test=diabetes[501:768,]
#test data to rest the performance
pred_test=knn(train[,-9],test[,-9],train$Outcome,k=2)
pred_test
#to see the output
confusion=table(pred_test,test$Outcome)
#table() gives us the correct 
sum(diag(confusion))/nrow(test)
#this gives us the accuracy of the model
confusionMatrix(pred_test,test$Outcome)
#confusio matrix gives us the accuracy 