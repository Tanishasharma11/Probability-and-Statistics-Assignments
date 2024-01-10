# Assigment 2

#q1(a)
x<-c(rep("gold",20),rep("silver",30),rep("Bronze",50))
sample(x,10)

#q1(b)
x<-c("Success","Failure")
prob=c(0.9,0.1)
sample(x,10,replace=T)

#sample(c("success","Failure",10,replace=T,prob=c(0.9,0.1)))


#q3 ans 0.425
rain=0.2
cloud=0.4
cloud_rain=0.85
weather<-function(rain,cloud,cloud_rain)
  {return ((cloud_rain*rain)/cloud)}
PAB<-weather(rain,cloud,cloud_rain)
print(PAB)

#q4
#a
data(iris)
#b
head(iris)
#c
range(iris$Sepal.Length)
#d
str(iris)
#e
mean(iris$Sepal.Length)
#f
median(iris$Sepal.Length)
#g
sd(iris$Sepal.Length)
#h
var(iris$Sepal.Length)
#for multiple variance 
lapply(iris$Sepal.Length)
#j
summary(iris)
#h
data(iris)
Q1<-sapply(iris[,-5],quantile,probs=0.25)
Q3<-sapply(iris[,-5],quantile,probs=0.75)
IQR<-Q3-Q1
IQR
#q2
M=20; #Number of people in the room
probability1 = 1-(factorial(365))/(((365)^M)*factorial(365-M));
print(probability1)

#q5
mode<-function(x){
  freq_table<-table(x)
  max_freq<-max(freq_table)
  names(freq_table)[freq_table==max_freq]}
x<-c(1,2,2,3)
mode(x)
