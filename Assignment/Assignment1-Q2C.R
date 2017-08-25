a=c('10-20', '20-30', '30-40', '40-50')
a
a1=c(15,25,35,45)
a1
b=c(5, 7, 9, 8)
b
df=data.frame(a,a1,b)
df
c=a1*b
c
d=sum(c)
d
mean=d/sum(b)
mean
freq.a=a1/sum(a1)
freq.a
pie(freq.a)
hist(freq.a)
freq.b=b/sum(b)
freq.b
pie(freq.b)
hist(freq.b)
