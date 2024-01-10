#assignment 4
#Q1
x=c(0,1,2,3,4)
p=c(0.41,0.37,0.16,0.05,0.01)
sum(x*p)
sum
#Q2
f<-function(t){t*0.1*exp(-0.1*t)}
y<-integrate(f,lower=0,upper=Inf)
print(y$value)
#Q3
X<-c(0,1,2,3)
P<-c(0.1,0.2,0.2,0.5)
#y=12X+2(3-X)-18
y=10*X-12
y
sum(y*P)
#Answer 9
#Q4
#0.78177 variance
f<-function(x){
  
  result<-0.5*exp(-abs(x))
  
  return(result)}
a<-1
b<-10
# Calculate the mean (expectation) and variance
mean_f <- integrate(function(x) x * f(x), lower = a, upper = b)$value
variance_f <- integrate(function(x) (x^2) * f(x), lower = a, upper = b)$value - (mean_f^2)
mean_f
variance_f
#Q5
f <- function(y){(3/4)*(1/4)^(sqrt(y)-1)}
x<-3
y = x^2
p <- f(y)
print(p)
#expected value and variance of Y for X = 1,2,3,4,5
f <- function(y){(3/4)*(1/4)^(sqrt(y)-1)}
x<- c(1,2,3,4,5)
y<-x^2
f(9)
#q5 b)
Exp1 <- sum(y*f(y))
print(Exp1)
#
Exp2<-sum(y*y*f(y))
Var<-Exp2-(Exp1)^2
print(Var)