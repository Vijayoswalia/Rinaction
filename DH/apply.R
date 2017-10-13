m1= matrix(1:16, nrow = 4)
m1
mean(m1[1,])

for (i in 1:nrow(m1)) {
  print(mean(m1[i,]))
}
addmargins(m1)
rowMeans(m1)
colmean = colMeans(m1)


addmargins(m1,1,mean)
addmargins(m1,2,mean)
addmargins(m1,c(1,2,2,1),c(sum,sum,mean,mean))

# apply

apply(m1,1,mean)
apply(m1,2,mean)
apply(m1,2,median)
apply(m1,1,sum)
apply(m1,2,prod)
apply(m1,2,cumsum)
m1
a1 = array(1:(3*4*2),dim = c(3,4,2))
a1
apply(a1,1,sum)
apply(a1,2,sum)
apply(a1,3,sum)
apply(a1,c(1,2),sum)
apply(a1,c(2,1),sum)
apply(a1,c(3,1),sum)
apply(a1,c(3,2),sum)
apply(a1,c(2,3),sum)
a1
apply(a1,c(1,2,3),sum)
apply(a1,c(1,3),sum)
apply(a1,1,sum)
apply(a1,2,sum)
apply(a1,c(3,1),sum)


# lapply
#list apply

x <- list(a = 1, b = 1:3, c = 10:100)
x
lapply(x, FUN=length)


sapply(x, FUN = length)
sapply(1:5, function(x) rnorm(3,x))


func1 = function(x){
  rnorm(3,x)
}
func1(1)

mapply(function(x,y) x/y, x=c(2,4), y=c(3,2))
mapply(function(x,y) x^y, x=c(2,4), y=c(3,5))
mapply(function(x,y) x^y, x=c(2:10), y=c(3:5))

mapply(function(x,y) x^y, x=c(a=2,b=3), y=c(A=4,B=5))
mapply(function(x,y,z,k) {(x+k)^(y+z)}, x=c(a=2,b=3), y=c(A=3,B=4), MoreArgs= list(z=1,k=2))

A<-c(1,3,5,7,9)
B<-c(0,3,6,9,12)
C<-list(x=1,y=2)
D<-function(x){x+1}
ls()
lsf.str()
eapply(.GlobalEnv, is.function)


mtcars
mtcars$am
mtcars$am;mtcars$mpg
by(mtcars$am,mtcars$mpg, FUN=mean)
split(mtcars$am,mtcars$mpg)

library(MASS)
school=painters$School
painters  
tapply(painters$Composition, painters$School, mean)


M = matrix(1:12, ncol=3)
M+1
M
M+c(1,2,3)
cbind(M, M+c(1,2,3))


dx=colMeans(M)
dx
colSums(M)

sweep(M, 2, dx, FUN="-")
sweep(M,c(1,2),3, FUN = "+")
M
sweep(M,1,3, FUN = "+")
sweep(M,c(1,2),1:12, FUN = "+")
M
sweep(M,2,1:12, FUN = "+")
