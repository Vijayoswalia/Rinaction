df1 = read.csv(file = './data/DS-Students.csv')
df1
head(df1[4:8,1:2])


df2 = read.csv(file = './data/DS-Students.csv', row.names = 1)
head(df2[,1:2])
df2$rollno2 = row.names(df2)
df2[,c('rollno2')]
str(df2)
head(df2[,1:2])


df3 = read.csv(file = './data/DS-Students.csv', row.names = c(paste('R',1:11, sep = '')))
head(df3[,1:2])


df3 = read.csv(file = './data/DS-Students.csv', row.names = c(paste('R',1:11, sep = '')))
