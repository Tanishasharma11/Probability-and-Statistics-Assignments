#q1a)
1-punif(45,0,60,lower.tail=FALSE)
#q1 b)
punif(30,0,60)-punif(20,0,60)
#q2
#a)
dexp(3,rate=0.5)
#b)
curve(pexp(x, rate = .5), from=0, to=5, col='blue')
#c)
pexp(3,rate=0.5)
#d)
curve(dexp(x, rate = .5), from=0, to=10, col='blue')
#e)
sim=rexp(1000,rate=0.5)
plot(sim,xlab='X-Axis',ylab='Y-Axis',type=l)
plot(density(sim),xlab='X-Axis',ylab='Y-Axis')

#q3
#shape = alpha, scale=beta
#a)
#pgamma(probability,shape=alpha,scale=beta,lower.tail=FALSE)
pgamma(1,shape=2,scale=1/3,lower.tail=FALSE)
#b)
qgamma(0.7,shape=2,scale=1/3)