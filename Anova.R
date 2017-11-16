sup1 = c(18.5,24,17.2,19.9,18)
sup2 = c(26.3,25.3,24,21.2,24.5)
sup3 = c(20.6,25.2,20.8,24.7,22.9)
sup4 = c(25.4,19.9,22.6,17.5,20.4)
df = data.frame(sup1,sup2,sup3,sup4)
df1 = cbind(sup1,sup2,sup3,sup4)
df1
df2 = data.frame(df1)
df2
class(df2)
colMeans(df2)
colSums(df2)
addmargins(df1, c(1,2),FUN = list(mean,sd))
round(addmargins(as.matrix(df),c(1,2),FUN =  list(list(mean,sd),list(mean))),2)
dfstack = stack(df)
unstack(stack(df))
str(dfstack)
aggregate(dfstack$values, by=list(dfstack$ind), FUN=mean)
aggregate(dfstack$values, by=list(dfstack$ind), FUN=sd)
fit_anova = aov(values~ind, data=dfstack)  #anova
fit_anova
summary(fit_anova)
qf(p=0.95, df1=3, df2=16)
boxplot(dfstack$values)
boxplot(df)
boxplot(values~ind, data=dfstack)

library(gplots)
gplots::plotmeans(values~ind, data = dfstack)
abline(h = c(19.52, 24.26, 22.84, 21.16))
abline(h = c(colMeans(df2)))
TukeyHSD(fit_anova)
#there is large diff b/w sup1 and sup2
plot(TukeyHSD(fit_anova))

library(multcomp)
tuk = glht(fit_anova, linfct = mcp(ind = 'Tukey'))
tuk
plot(cld(tuk, level=0.05))

car::qqPlot(fit_anova, simulate=T, labels=F) #test for normal distribution
bartlett.test(values~ind, data = dfstack) # test for variance
car::outlierTest(fit_anova) # test for outliers



x = c(1,3,5,7,9,2,4,6,8,10)
(x1 = scale(x, scale=F, center = F)) # print vertical
as.vector(x1)
(xc = scale(x, scale = F, center = T))
(xc = scale(x,scale=F, center = 5.5))
(xc1 = scale(x,scale=F, center = 4))
cbind(x,-4,xc1)
(xs = scale(x,scale=T, center = F))
(rmse = sqrt(sum(x^2)/(length(x)-1)))
(xsc = scale(x, scale=T,center = T))
(x2 = x-mean(x))
(x2-mean(x2))/sd(x2)
(x = matrix(1:10, ncol=2))
(centered.x = scale(x, center=T, scale=F))


url = "https://archive.ics.uci.edu/ml/machine-learning-databases/wine/wine.data"
wine = read.csv(url)
wine
colnames(wine) <- c('Type','Alcohol', 'Malic', 'Ash', 'Alcalinity', 'Magnesium',
                    'Phenols', 'Flavanoids','Nonflavanoids', 'Proanthocyanins', 
                    'Color', 'Hue', 'Dilution', 'Proline')
head(wine)
library(car)
scatterplotMatrix(wine[2:6])
