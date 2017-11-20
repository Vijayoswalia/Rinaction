mtcars
dim(mtcars)
#forwar
#Blank model
(mtcars.lm=lm(mpg~1,data=mtcars))
summary(mtcars.lm)
#Find best predictor
add1(mtcars.lm, mtcars, test="F")
#Add best predictor
(mtcars.lm = lm(mpg~wt, data=mtcars))
summary(mtcars.lm)
#next best predictor
add1(mtcars.lm, mtcars, test="F")
#Add best predictor
(mtcars.lm = lm(mpg~wt + cyl, data=mtcars))
summary(mtcars.lm)
#next best predictor
add1(mtcars.lm, mtcars, test="F")


fit.full = lm(mpg~wt+cyl+hp+am, data=mtcars)
summary(fit.full)
drop1(fit.full,test="F")
drop1(update(fit.full,~.-am), test="F")
summary(fit.full)
drop1(update(fit.full,~.-am -hp), test = "F")


fit1 = lm(mpg~wt, data=mtcars)
fit2 = lm(mpg~wt+cyl, mtcars)
anova(fit1,fit2) #more,less

AIC(fit1,fit2)

coefficients(fit2)
confint(fit2, level=0.95)
fitted(fit2)
residuals(fit2)
anova(fit2)
vcov(fit2)


library(MASS)
names(mtcars)
fit = lm(mpg~wt+cyl+hp+am, data=mtcars)
step = stepAIC(fit, direction = "both")
step$anova
