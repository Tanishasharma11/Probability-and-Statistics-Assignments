#q1
#delay of freedom n-1
#distribution is random deviates rt
n=100
df=n-1
y=rt(n,df)
y
hist(y)
#q2
#degree of freedom is given 3 so make array of these 3 numbers 2,10,25
#chisquare 
n=100
df=c(2,10,25)
rchisq(n,df[1])
rchisq(n,df[2])
rchisq(n,df[3])
#q3
#create a vector of values from -6 to 6 .Explicitly mention length otherwise only one value will be mentioned.
X=seq(-6,6,length=100)
X
#degree of freedom vector
df=c(1,4,10,30)
#t distribution but we use d alongside t as dt because it finds t value at each value from vector
dt(X,df[1])
dt(X,df[2])
dt(X,df[3])
dt(X,df[4])
colour=c("black","orange","blue","red")
plot(X,dt(X,df[4]),type='l',main="Graph",col=colour[4])
#4th colour from vector so red colour curve
#Now to show for comparison
# lines means in the same graph different coloured lines for other degrees of freedom
#without lines we get different graphs
for(i in 1:3){
  lines(X,dt(X,df[i]),type='l',col=colour[i])}

#q4
#i)
#degree of freedom given at 95 percent
#qf used when percentage is given
qf(0.95,df1=10,df2=20)
#ii)
#area under curve
#P(x<=1.5) so we use pf for f distribution for both 1st and 2nd degree of freedom
#P(X>=1.5) it will be 1-p(X<=1.5)
#to find area just add s1 and s2
X=1.5
v1=10
v2=20
s1=pf(X,df1=v1,df2=v2)
s1
#this is 1-p(x>=1.5)
s2=pf(X,df1=v1,df2=v2,lower.tail=FALSE)
s2
s1+s2

#iii)
q=c(0.25,0.5,0.75,0.999)
v1=10
v2=20
q1=qf(q[1],df1=v1,df2=v2)
q2=qf(q[2],df1=v1,df2=v2)
q3=qf(q[3],df1=v1,df2=v2)
q4=qf(q[4],df1=v1,df2=v2)
q1
q2
q3
q4

#iv)
# Set the degrees of freedom
v1 = 10
v2 = 20

# Generate 1000 random values from the F-distribution
random_values <- rf(n = 1000, df1 = v1, df2 = v2)

# Create a histogram
hist(random_values, main = "F-Distribution Histogram", xlab = "Random Values", ylab = "Frequency", col = "lightblue")
