
a=matrix(c(10, 12, 13, 14, 17),nrow=5,ncol=1)
a
b=matrix(c(5, 7, 9, 8, 4),nrow=5,ncol=1)
b
c=a*b
c
d=sum(c)
d
e=d/sum(b)
e
mean=e




x=cbind(a,b)
x
matrix(x)
colnames(x, do.NULL = TRUE, prefix = "col")
colnames(x) = c("marks","students")
x
mean(a)
mean(b)
mean(x)
table(x)
totalmarks=sum(a)
totalmarks
totalstudents=sum(b)
totalstudents
marks.freq=a/totalmarks
marks.freq
students.freq=b/totalstudents
students.freq
cumulativemarks.freq=cumsum(a)
cumulativemarks.freq
cumulativestudents.freq=cumsum(b)
cumulativestudents.freq
pie(marks.freq)
hist(marks.freq)
pie(students.freq)
hist(students.freq)
breaks=seq(9,17,by=1)
marks.cut=cut(marks,breaks)
marks.cut
table(marks.cut)
pie (table(marks.cut))
hist(table(marks.cut))
