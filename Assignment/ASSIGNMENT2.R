#stripchart produces one dimensional scatter plots (or dot plots) of the given data. 
#These plots are a good alternative to boxplots when sample sizes are small.


mtcars
str(mtcars)
stripchart((mtcars$cyl))
stripchart(mtcars$mpg)



stripchart(mtcars$mpg,
           main="Mean mileage in miles per Gallon",
           xlab="Gallons",
           ylab="Miles",
           method="jitter",
           col="blue",
           pch=16
)

#multiple strip charts

mile=mtcars$mpg
mileNorm <- rnorm(200,mean=mean(mile, na.rm=TRUE), sd = sd(mile, na.rm=TRUE))
x <- list("mile"=mile, "norm"=mileNorm)


stripchart(x,
           main="Multiple stripchart for comparision",
           xlab="x-axis",
           ylab="y-axis",
           method="jitter",
           col=c("orange","red"),
           pch=16
)


stripchart(x,
           main="Multiple stripchart for comparision",
           xlab="x-axis",
           ylab="y-axis",
           method="jitter",
           col=c("orange","red"),
           vertical =TRUE,  #FOR MAKING IT VERTICAL
           pch=16
)


#head(mtcars)
#mean(mtcars$mpg)
#sd(mtcars$mpg)
#nnorm(200,20,3)


