#Linear Regression

data (women)
women


attach(women)
cov(height,weight)
cor(height,weight)
(weight.lm=lm(weight~height, data=women))
#Coefficients:
#      (Intercept)       height  
#       -87.52            3.45  
summary(weight.lm)
plot(height, weight)
abline(weight.lm, col='red')
abline(v=62)
abline(h=140)
abline(v= c(62, 64, 66))

