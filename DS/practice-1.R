Student=c('A','A','P','P','A','P','A')
Student
Color=c("Red","Blue","Green","Magenta","Green","Black","Blue","Black")
Color
Siblings=c('2','1','2','4','1','0','1','2','4','2')
Siblings
table(Student)
table(Color)
table(Siblings)
plot(Siblings)
cbind(table(Student))
set.seed(1234)
marks=ceiling(runif(50,0,100))
marks
marks
set.seed(12345)
marks=floor(runif(70,100,1000))
marks
range(marks)
set.seed(1234)
marks=ceiling(runif(50,0,100))
marks
cat(marks)
range(marks)
breaks=seq(0,100,by=10)
marks
marks.cut=cut(marks,breaks)
marks
marks.cut
cat(marks)
range(marks)
marks.table=table(marks.cut)
cbind(marks.table)
hist(marks.table)
pie(marks)
pie(Siblings)
Siblings
Siblings
pie(Siblings)
pie(table(siblings))
pie(table(Siblings))
hist(table(Siblings))
mean(table(Siblings))
median(table(Siblings))
mode(table(Siblings))
counts <- table(mtcars$gear)
barplot(counts, main="Car Distribution", xlab="Number of Gears")
marks.table
table(marks)
marks.table
z=cbind(marks.table)
z
rownames(z)
?barplot

barplot(z, beside = TRUE,
        col = c("lightblue", "mistyrose", "lightcyan",
                "lavender", "cornsilk"),
        legend = rownames(VADeaths), ylim = c(0, 20))
z <- table(rpois(100, lambda=5))
names(z) <- paste("long", names(DD), sep="_")
title(main = "Yo! I made a barplot", font.main = 4)
midpts <- barplot(z, row=rainbow(20), names.arg="")
str(VADeaths)
head(VADeaths)
