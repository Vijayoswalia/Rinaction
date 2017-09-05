hist(mtcars$mpg)
par()
par(pin=c(4,3))             #per Inch
par(col.lab='red')
par(col.main='blue')
par(bg="cyan")
par(fg='red')
hist(mtcars$mpg)
opar=par(no.readonly = T)
opar
par(opar)
hist(mtcars$mpg)
#mar=margin in cms
#mai=margin in inches

par('mar')
par('mai')    
par(mar=c(1,1,1,1))
par('mar')
hist(mtcars$mpg)

attach(mtcars)
hist(mpg, main='1')
hist(cyl, main='2')
hist(wt, main='3')
hist(hp, main='4')
par(mfrow=c(2,2))        #multiple frame per row
par(mfcol=c(2,2))        #multiple frame per row

str(mtcars)
pie(mpg, main='1')
pie(cyl, main='2')
pie(wt, main='3')
pie(hp, main='4')


layout(matrix(c(1,1,2,3), byrow = T, nrow=2))
hist(mpg, main='1')
hist(cyl, main='2')
hist(wt, main='3')

pie(mpg, main='1')
pie(cyl, main='2')
pie(wt, main='3')


layout(matrix(c(1,2,3,3,4,5), byrow = T, nrow=3))
hist(mpg, main='1')
hist(cyl, main='2')
hist(wt, main='3')
hist(hp, main='4')
hist(hvs, main='4')

#for hight and width ratio                       width ratio=3:1, height ratio=1:2
layout(matrix(c(1,2,3,3,4,5), byrow = T, nrow=3), widths =c(3,1),heights=c(1,2))
hist(mpg, main='1')
hist(cyl, main='2')
hist(wt, main='3')
hist(hp, main='4')
hist(vs, main='5')

