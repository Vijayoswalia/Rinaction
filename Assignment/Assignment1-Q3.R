x=c(12, 63, 61, 63, 87, 65, 1, 24, 67, 52, 70, 55, 29, 93, 30, 84, 29, 27, 19,24, 32, 31, 16, 4, 22, 82, 53, 92, 84, 5, 46, 27, 31, 51, 19, 76, 21, 26, 100, 81, 56, 65, 32, 63, 33, 51, 68, 49, 25, 77)
table(x)
breaks=seq(0,100,by=10)
x
x.cut=cut(x,breaks)
x
x.cut
cat(x)
range(x)
x.table=table(x.cut)
x.table
hist(x.table)
pie(marks)
