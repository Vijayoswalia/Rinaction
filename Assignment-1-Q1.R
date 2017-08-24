markk1=c(10, 10, 10, 20, 20, 20, 20, 20, 30, 30, 10, 10, 40, 40, 40, 40, 50, 50, 50, 50)
x =sum(markk1)
x
y=markk1/x
y
duration.cumfreq = cumsum(markk1)
duration.cumfreq
cat(y)
mean(markk1)
hist(markk1)
pie(markk1)
hist(y)
cbind(y)
old=options(digits=1)
cbind(y)
order(y)
range(y)
