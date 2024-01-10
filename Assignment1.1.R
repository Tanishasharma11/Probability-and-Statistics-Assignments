#Experiment 1.1

#q1
c<-c(5,10,15,20,25,30)
max(c)
min(c)
print(paste("max_value=",max(c)))
print(paste("min_value=",max(c)))

#q2
fac=as.integer(readline(prompt = "Enter a no."))
factorial=1
if(fac<0){
  print("error")
}else if(fac==0) {
  print("factorial of 0 is 1")
}else{
  for(i in 1:fac){
    factorial=factorial*i
  }
  print(paste("factorial is ",factorial))
}

#q3

nterms <- as.integer(readline(prompt = "How many terms?"))
n1 <- 0
n2 <- 1
count <- 2

if (nterms <= 0) {
  print("Enter a positive number")
} else {
  if (nterms == 1) {
    print("Fibonacci sequence:")
    print(n1)
  } else {
    print("Fibonacci sequence:")
    print(n1)
    print(n2)
    
    while (count < nterms) {
      nth <- n1 + n2
      print(nth)
      n1 <- n2
      n2 <- nth
      count <- count + 1
    }
  }
}

#q4
add<- function(x,y){
  print(paste("addition is",x+y))
}
sub<-function(x,y){
  print(paste("subtraction is",x-y))
}
mul<- function(x,y){
  print(paste("multiplication is",x*y))
}
div<- function(x,y){
  print(paste("division is",x/y))
}
x<-as.numeric(readline(prompt="x="))
y<-as.numeric(readline(prompt="y=") )

count<-as.numeric(readline(prompt="count="))

if(count==1){
  add(x,y)
}
if(count==2){
  sub(x,y)
}
if(count==3){
  mul(x,y)
}
if(count==4){
  div(x,y)
}


#q5
x<-c(1,5,7)
y<-c(2,6,8)
plot(x,y)

plot(1:5,type='l')
plot(1:5,main="garph",xlab="x-axis",ylab="y-axis",col="red",cex=2,pch=17)

x1=c(1,2,3,4,5,6,7)
y1=x1+3
x2=c(4,5,6,7,8,9,10)
y2=y1+4
plot(x1,y1,pch=11,col="red",type="l")
points(x2,y2,pch=8,col="blue")#use points to plot two things in graph

#piechat

categories <- c("Category A", "Category B", "Category C", "Category D")
values <- c(30, 20, 15, 35)

pie(values, labels = categories, main = "Sample Pie Chart")

#barplot
categories <- c("Category A", "Category B", "Category C", "Category D")
values <- c(30, 20, 15, 35)

barplot(values, names.arg = categories, main = "Sample Bar Plot", xlab = "Categories", ylab = "Values", col = "skyblue")