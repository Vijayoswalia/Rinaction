v <- c(1:100)
v
quantile(v, c(.25,.5,.75))

#Quantile
set.seed(1234)
x= ceiling((rnorm(100,50,10)))
x
quantile(x, c(0.25, 0.5, 0.75))
quantile(x)
IQR(x)

#decile
quantile(x, seq(.1,1,by=0.1))

#percentile
quantile(x,seq(.01, 1, by=0.01))


#summary
summary(x)
fivenum(x)
hist(x)

# Mean
set.seed(1234)
x = rnorm(100, 50, 10)  # 100 random nos, mean-50, sd-10
x = ceiling(x)
x
meanx = sum(x)/length(x)
meanx
mean(x)
summary(x)

 # Trimming Values
x
x = ceiling(runif(100,50,100)) #extreme values
x
mean(x)
mean(x, trim=1)

# NA values - Remove
x[c(1,20,30)] = NA
x
length(na.omit(x))  #3 values
mean(x) #error
mean(x, na.rm=T)

# Mean Deviatiion
x = c(3,6,6,7,8,11,15,16)
(mx = mean(x))
(mdev = x - mx)
abs(mdev)
(mabsdev = sum(abs(mdev)))/length(x)
mad(x)

x = c(7,4,10,9,15,7,9,7)
mean(x)
median(x)


# model
x = c(2,3,4,4,4,5,5)
library(modeest)

library(timeSeries)
library(timeDate)
library(timeSeries)
colQuantiles(mtcars)


mtcars
str(mtcars)
vars <- c("mpg", "hp", "wt")
vars
head(mtcars[vars])
str(mtcars)
summary(mtcars[vars])
sapply(mtcars[vars],mean)
sapply(mtcars,fivenum)


library(Hmisc)
library(Rcmdr)
library(rattle)
data(mtcars)
