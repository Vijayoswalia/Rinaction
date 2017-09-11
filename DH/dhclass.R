df1 = read.csv(file='./data/DS-Students.csv')
df1
#df1a= read.csv(file=file.choose())
#df1a
#df1b = read.csv(file='./data/DS-Students.csv', stringsAsFactors = F)
#df1b
#str(df1b)

str(df1)
names(df1)
colcls= c('numeric', NA, 'factor','factor', 'logical','character',
          'numeric', 'character', 'character','character', 
          rep('numeric', 4) )
df2=read.csv(file='./data/DS-Students.csv',         #as.is for name
             colClasses = colcls, as.is = T)
str(df2)
