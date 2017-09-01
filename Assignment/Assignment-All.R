x=c(1:12,1,5,5)
x
table(x)
sort(table(x),decreasing = T)
names1=names(sort(table(x),decreasing = T))
names1[1]

set.seed(1234)
x=ceiling(rnorm(100,60,15))              #60=mean,15=standard deviation        
                                         #runif(100,0,10) (randomCuniform)
x
mean(x)
range(x)
bks=seq(25,99,10)                        #breaks=seq(min,Max,10)
bks=seq(0,100,10)
bks
?cut
x.cut=cut(x,bks)
x.cut
x.table=table(x.cut)
x.table
cbind(x.table)
x
hist(x, breaks=20)
hist(x)
