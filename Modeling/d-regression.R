women
h = women$height
w = women$weight
fit1 = lm(weight ~ height , data=women)
summary(fit1)
W = fitted(fit1)
R = residuals(fit1)
cbind(h, w, round(W,2), round(R,2))
?fitted
df = data.frame(women)
plot(women)
plot(fit1)
abline(fit1)
layout(matrix(c(2,2,4,4), 2,2, byrow = TRUE))
?layout
plot(h,w)
dev.off()
affair = data.frame(Affairs)
library("AER")
str(affair)
Affairs
str(Affairs)
mydata = Affairs
mydata
x = mydata$affairs
table(x)
round(prop.table(table(x)),2)
round(prop.table(table(x)),2)
mydata$ynaffair[mydata$affairs>0]=1
mydata$ynaffair[mydata$affairs==0]=0
mydata$ynaffair = factor(mydata$ynaffair, levels = c(0,1), labels = c("No", "Yes"))
table(mydata$ynaffair)
?drop
fit1 = glm(formula = ynaffair~1, family = binomial, data = mydata)
fit1
fit2 = glm(formula = ynaffair~., family = binomial, data = mydata)
fit2
