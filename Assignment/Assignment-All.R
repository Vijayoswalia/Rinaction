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
bks=seq(0,100,10)                        # if in ()i.e (bks=seq(0,100,10), 
                                         #it will print the value also.
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







x[c(1,2,3,4,5)] <- c(0,10,11,99,100)
(bks=seq(0,100,10))
classint1<-cut(x,breaks=bks) #defaultright=T
head(classint1,n=5)
head(x,n=5)
table(classint1)
table(classint1, useNA='ifany')
classint2=cut(x,breaks=bks,right=F)   #default right=T
head(classint2, n=5)
head(x, n=5)
table(classint2, useNA='ifany')


#correct the problem of NA
classint1a=cut(x, breaks=bks, include.lowest=T)  #default right
as.character(head(classint1a, n=5))
head(x, n=5)
table(classint1a, useNA='ifany')



classint2a=cut(x, breaks=bks, include.lowest=T, right=F)  #default 
as.character(head(classint2a, n=5))
head(x, n=5)
table(classint2a, useNA='ifany')


#Giving labels
#length(bks)
#levels(classint1)
#LETTERS[1:length(bks)-1]
#LETTERS[1:5]; letters[1:8]; month.abb[1:5]

classint1b=cut(x, breaks=bks, include.lowest=T,
              labels=LETTERS[1:length(bks)-1])    #default right
classint1b

as.character(head(classint1b , n=5))
head(x,n=5)
table(classint1b, useNA = 'ifany')




x1=c(0,2,5.1,3,10,14.5,15,16,10,10,20,14.5)
x1
cut(x1,breaks=4, include.lowest=T)
table(x1)
hist(table(x1))
