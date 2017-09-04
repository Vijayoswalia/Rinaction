read.csv("DS-Students.csv")
getwd()
df1=read.csv(file='./Data/DS-Students.csv')
df1
str(df1)

df2=read.csv(file='./Data/DS-Students.csv', stringsAsFactors = F)
df2
str(df2)
head(df2)[1:4]
head(df2)[1:4,]
df2$course=factor(df2$course)
df2$course
dffactorcourse=factor(df2$course)
dffactorcourse
df2$gender=factor(df2$gender)
dffactorgender
str(df2)
head(df2)[1:4]
table(df2$gender=='M' & df2$course=='MSCDS')
table(df2$course, df2$gender)
df2[c('name', 'gender')]                     #display name and gender
names(df2)                                   # columns names / attributes / variables
row.names(df2)
df2$rollno
df2$rollno[df2$rollno==170113]               #take out the required rollno
df2$rollno[df2$rollno==170113] = 17013       #change the rollno
df2$rollno[df2$rollno==170113]
df2$rollno


df2$name=='Lalit Sahni'                      #check by name
df2$rollno[df2$name== 'Lalit Sahni'] = 17013
df2$rollno


fix(df2)
df2
table(df2)
str(df2)
