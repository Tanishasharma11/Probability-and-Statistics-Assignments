#q1
#a
data=read.csv(file.choose())
#b
dim(data) #gives number of rows and columns
head(data,10)
#c
#mean of rows
mean(data$Wall.Thickness)
hist(data$Wall.Thickness,xlab='X-Axis')
#d
abline(v=12.8,col='red')

#q2
#a
S10=c()
n=9000 #this is population size
for(i in 1:n){
S10[i]=mean(sample(data$Wall.Thickness,10,replace=TRUE))#here 10 is sample size
}
hist(S10,col='red')
abline(v=mean(S10),col='blue')
abline(v=12.8,col='pink')
#b
S10=c()
n=9000 #this is population size
for(i in 1:n){
  S10[i]=mean(sample(data$Wall.Thickness,50,replace=TRUE))#here 50 is sample size
}
hist(S10,col='red')
abline(v=mean(S10),col='blue')
abline(v=12.8,col='pink')

S10=c()
n=9000 #this is population size
for(i in 1:n){
  S10[i]=mean(sample(data$Wall.Thickness,500,replace=TRUE))#here 50 is sample size
}
hist(S10,col='red')
abline(v=mean(S10),col='blue')
abline(v=12.8,col='pink')

S10=c()
n=9000 #this is population size
for(i in 1:n){
  S10[i]=mean(sample(data$Wall.Thickness,9000,replace=TRUE))#here 50 is sample size
}
hist(S10,col='red')
abline(v=mean(S10),col='blue')
abline(v=12.8,col='pink')

