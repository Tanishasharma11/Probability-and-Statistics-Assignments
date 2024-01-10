#lab 3
#use pbinom when dealing with discrete or =
#use dbinom when dealing with range or <=

probability=dbinom(7,12,1/6)+dbinom(8,12,1/6)+dbinom(9,12,1/6)
probability

prob1=pbinom(9,12,1/6)-pbinom(7,12,1/6)
prob1

#2
#given mean 72
#standard deviation 15.2
#>=84

pnorm(84,mean=72,sd=15.2,lower.tail=FALSE)

#Q3 
#a)

#Question - 3 
ppois(0,5) #way - 1
dpois(0,5) #way - 2
ppois(50,50)-ppois(47,50) #way - 1
ppois(50,50)-ppois(48,50)+dpois(48,50) #way - 2
dpois(48,50)+dpois(49,50)+dpois(50,50) #way - 3

#Question 4
dhyper(x=3,n=17,m=233,k=5)
#Question 5
#a
X=seq(0,31)
#b
pmf=dbinom(X,31,0.447)
plot(X,pmf)
#b
cdf=pbinom(x,31,0.447)
plot(x,cdf)
#d
mean(x)
var(x)
sd(x)
