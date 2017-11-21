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

library(relaimpo)
calc.relimp(fit, type = c("lmg", "last", "first", "pratt"), rela = TRUE)
boot = boot.relimp(fit, b=1000,type=c("lmg", "last", "first", "pratt"),rank=TRUE, diff=TRUE, rela=TRUE)
booteval.relimp(boot)
plot(booteval.relimp(boot,sort = TRUE))


glm = glm(mpg~wt+cyl+hp+am, data=mtcars) 
table(mtcars$am)
dim(mtcars)
names(mtcars)
mtcars$am

(t = table(mtcars$am))
(amt = addmargins(t))
(ppt = prop.table(t))
(base = glm(am~1,data=mtcars,family=binomial))
summary(base)
(odds=exp(-0.3795))
odds
(fit1 = glm(am~mpg+disp+hp+wt, data=mtcars, family = binomial()))
fit1
summary(fit1)

layout(matrix(c(1,2,3,4),2,2))
plot(fit1)
(fit2=glm(am~mpg+hp+wt, data = mtcars, family = binomial()))
summary(fit2)
anova(fit1,fit2)
(fit3=glm(am~hp+wt, data = mtcars, family = binomial()))
summary(fit3)
(fit4 = glm(am~mpg+disp+hp+wt+drat, data=mtcars, family = binomial()))
summary(fit4)
(fit5 = glm(am~disp+hp+wt+drat, data=mtcars, family = binomial()))
summary(fit5)
(fit6 = glm(am~hp+wt+drat, data=mtcars, family = binomial()))
summary(fit6)
(fit7=glm(am~hp+wt, data = mtcars, family = binomial()))
summary(fit7)
predict(fit7, type = "response", newdata = mtcars[, c(4,6)])
(newdata = data.frame(wt=2, hp=150))
predict(fit7, newdata, type="response")
(p1 = predict(fit7, newdata=mtcars[c("wt","hp")], type="response"))
(p1=round(p1,2))
(p1a = ifelse(p1>0.5,1,0))
(cbind(mtcars$am, mtcars$wt, mtcars$hp, p1,p1a))
(xtab = table(mtcars$am,p1a))
caret::confusionMatrix(xtab)
car::vif(fit7)
sqrt(car::vif(fit7))>2
