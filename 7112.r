#variable declaration
name="taruni"
name

#usage of for loop 
for (x in 1:10){
  print(x)
}

#assignment of variables
5->x
x
x<-12
x

#sum of the range numbers

#NOTE: the sizes should be same ,otherwise you will get a warning
1:5+5:10

#sum of the vectors
c(1,3,6,10,15)+c(10,11,13,16,20,45)

#sum of the range numbers
sum(1:10)

#the middle value within a range
median(1:5)

#subtraction of number with vectors
c(2,3,4,5,6,7)-2

#multiplying the numbers in the given range 
-2:2*-2:2

#squaring of a number
2^3
3**9
3**2

#every element in the range is divided by 3
1:10/3

#equality 
c(6,5+1,5-1)==6

#exponential function (e^x)
exp(1:2)
3

#checks the condition
(1:5)^2>=16

#equality operator
c("pop","push","time","can")=="can"

x=1:5
y=6:10
x+2*y-3

#rnorm generates the random numbers from the given range
z<-rnorm(5)
z
# runif generates a normal random numbers

runif(1:5)#0.5667032 0.9005318 0.9415221 0.2838113 0.8837484
#special numbers

#infinity
c(Inf+1,Inf-1,Inf-Inf)#Inf Inf NaN

#not a number
c(NA+1,NA*5,NA+Inf)#NA NA NA


#checks the boolean conditions
(x<-1:10>=5)#FALSE FALSE FALSE FALSE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE

#percentile calculates the remainder 

#all the even numbers will be written true

(y<-1:10%%2==0)#FALSE  TRUE FALSE  TRUE FALSE  TRUE FALSE  TRUE FALSE  TRUE

#usage of a function
a=5
square<-function(x){
  return(x^2)
}
square_of_a<-square(a)
square_of_a#25

#calculating descriptive statics in r

#create a data frame
df=data.frame(x=c(1,2,3,4),
              y=c(5,6,7,8),
              z=c(9,1,2,3))
df

#summary statistics
summary(df)
