sup1 = c(18.5,24,17.2,19.9,18)
sup2 = c(26.3,25.3,24,21.2,24.5)
sup3 = c(20.6,25.2,20.8,24.7,22.9)
sup4 = c(25.4,19.9,22.6,17.5,20.4)
df1 = cbind(sup1,sup2,sup3,sup4)
df1
df2 = data.frame(df1)
df2
class(df2)
colMeans(df2)
colSums(df2)
addmargins(df1, c(1,2),FUN = list(mean,sd))
