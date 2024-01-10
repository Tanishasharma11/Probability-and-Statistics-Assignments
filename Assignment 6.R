#q1
install.packages('pracma')

library('pracma')
#i)
f<-function(x,y){(4*x)/5+(6*y)/5}
I=integral2(f,xmin=0,xmax=1,ymin=0,ymax=1)
I$Q
#ii)
g <-function(y){f(1,y)}
g1 = integral(g,0,1)
g1
#iii)

h11<-function(x){
  f(x,0)
}
integral(h11,0,1)

#iv)
# Define the function g(x, y)
## Calculate the expected value of g(x, y) = xy

O<-function(x,y){x*y*f(x,y)}
I1=integral2(O,xmin=0,xmax=1,ymin=0,ymax=1)
I1$Q

#q2
#i)
f11<-function(x,y){(x+y)/30}
x<-c(0,1,2,3)
y<-c(0,1,2)
#apply m1 2,1 for row
M1 <- matrix(c(f11(0, 0), f11(1, 0), f11(2, 0), f11(3, 0),
               f11(0, 1), f11(1, 1), f11(2, 1), f11(3, 1),
               f11(0, 2), f11(1, 2), f11(2, 2), f11(3, 2)),
             nrow = 4, ncol = 3, byrow = TRUE)
print(M1)
#answer 0.1
#x=0 y=1 is M[1,2]
#ii)
sum(M1)
#iii)
marginal_x<-apply(M1,1,sum)
marginal_x
#iv)
marginal_y<-apply(M1,2,sum)
marginal_y
#v)
M1[1,2]/marginal_y[2]


#vi)
ex<-sum(x*marginal_x)
ex    
ey<-sum(y*marginal_y)
ey

f2<-function(x,y){
  x*y*(x+y)/30
}
mat2<-matrix(c(f2(0,0:2),f2(1,0:2),f2(2,0:2),f2(3,0:2)),nrow=4,ncol=3,byrow=TRUE)
exy<-sum(mat2)
exy

ex2<-sum(x*x*marginal_x)
var_x=(ex2-ex*ex)
var_x

ey2<-sum(y*y*marginal_y)
var_y=ey2-ey*ey
var_y

cov<-exy-ex*ey
cov

corr<-cov/(sqrt(var_x*var_y))
corr
