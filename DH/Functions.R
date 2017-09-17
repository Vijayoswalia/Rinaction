#functions----

rm(list=ls())
load(file='./data/funcdata.Rdata')


#Creat functions

x=2 ; y=3

(Sumofnos = x + y)

x1 =c(1:10)
(x1=c(1:10))
Sumofnos = sum(x1)
sum(x1)
fsums1 <- function(x1){
  Sumofnos = sum(x1)/length(x1)
}
fsums1
fsums1(1:10)


fsum1(x1)
(sumout = fsum1(x1))  #output seen: value assigned to a variable

#print output fronm function call

fsum2 <- function(x1){
  Sumofnos = sum(x1)
  return(Sumofnos)
}

fsum2(x1)  # output seen

x1=1:10 ; y1=100:200
sumofnos <- function(x3, y3) {
  sum2a <- sum(x3) * mean(y3)
  return(sum2a)
}
sumofnos(x1,y1)


#another way.. printing value 

fsum3 <- function(x1){
  sumofnos = sum(x1)
  print(sumofnos)
  print(paste('sum of my object is', sumofnos, sep=' '))
  cat(paste('sim of my object is', sumofnos, sep = '-'))
}
fsum3(x1)


#check structure of function
body(fsum3)
body(fsums1)
args(fsum3)

args('bxp')
body('bxp')


#creating a new function
pi
CircleArea <- function(pi, r) {
  AreaOfCircle <- pi*(r^2)
  return(AreaOfCircle)
}
CircleArea(pi,7)


CircleArea(r=4, pi=9)  #overwright the value of pi


# Structures of functions

lsf.str()
search()
ls()
lsf.str(pos=-1)
lsf.str(pos=1)
lsf.str(pos=2)


library(plyr)

save(CircleArea, fsum3, file='./data/Funcdata.Rdata')

# R commands and object name into Character Strings

args(CircleArea)
(ch1 = deparse(args(CircleArea)))


CircleArea2 <-function(constant = 3.14, r){
  CircleArea = constant* r^2
  invisible(CircleArea)
}
CircleArea2(r=5)  #no output is shown
(ch = CircleArea2(r=5))  #assign and print


# Print type

sname = c("Achal","vijay", "lalit", "shuham")
sname
print(sname, quote = F)
