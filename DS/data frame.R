n=c(2,3,4)
s=c("aa","bb","cc")
b=c(TRUE,FALSE,TRUE)
df=data.frame(n,s,b)
df
n;
s;b
str(df)
summary(df)
d=c('M','F','M')
df1=data.frame(n,s,b,d, stringsAsFactors = T)
df1
summary(df1)
str(df1)
str(mtcars)
?mtcars
head(mtcars)
tail(mtcars)
?head
head(mtcars, n=8)
nrow(mtcars)
nclo(mtcars)
ncol(mtcars)
help(mtcars)
mtcars[1:3]
mtcars[,1:3]
mtcars[2,1:3]
mtcars[1:4,1:5]
mtcars[,"cyl"]
names(mtcars)
rownames(mtcars)
mtcars[c(1,2),]
mtcars$am
mtcars$cyl
mtcars[mtcars$mpg>25,]
mtcars[mtcars$mpg>25, 5]
mtcars[mtcars$mpg>25 || mtcars$mpg<30]
mtcars[mtcars$carb>3 & mtcars$wt>3, c(2,3)]
mtcars[mtcars$mpg>10 & mtcars$mpg<30,]
mtcars[rownames(mtcars)=='Fiat 128',]
subset(mtcars,carbc=='2',)
mtcars[1]
mtcars["mpg"]
install.packages()
library(dplyr)
slice(mtcars, 1L)
file.edit("~/.Renviron")
library(dplyr)
slice(mtcars, 1L)
colnames(df)=c("rollno","name","gender")
df
rownames(df)=c("ID1","ID2","ID3")
df
colnames[3]
colnames(mtcars)[3]
colnames(df)[3]
dim(df)
dim(df)[1]
lentgh(df)
lenght(df)
length(df)
attach(df)
a
df
df$a
df
attach(df)
detach(df)
df
attach(df)
df
dettach(df)
detach(df)
attach(mtcars)
mpg
detach(mtcars)
df=mtcars
str(df)
df$carb=NULL
str(df)
df$gear2=df$gear
str(df)
sort(mtcars)
sort(mtcars[1,])
sort(mtcars[1,], desc=T)
sort(mtcars[1,], desc=F)
sort(mtcars$mpg, decreasing = T)
sort(mtcars$mpg, decreasing = F)
