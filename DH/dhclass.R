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

as.date('1967-20-15')
as.Date('1967-20-15')
as.Date('1967-10-15')

as.Date('05-oct-2015', format="%d-%b-%Y")
str(df2$dob)
head(df2$dob)
(df2$dob = as.Date(df2$dob, format = "%d-%b-%y"))
str(df2$dob)
Sys.Date() - df2$dob
difftime(Sys.Date(), df2$dob, units='weeks')
(df2$age = ceiling(as.numeric (difftime(Sys.Date(),
                                                df2$dob, units='weeks'))/52.25))


df2$age > 30  
df2[df2$age > 30, ] [1:2]
df2[df2$age > 30, ]
df2[df2$age > 30, ] [1:3]


df2[df2$gender == 'M' & df2$course == 'PGDDS', ][1:2]
summary(df2)
str(df2)



write.csv(x=df2, file='./data/vijay.csv')



saveRDS(object= df2,file='./data/vijay.RDS' )


markstotal = runif  (11,50,150)
save(markstotal, df2, file='./data/vijay.Rdata' )
save.image(file = './data/vijay1.Rdata' )
save.image()

readRDS(file='./data/vijay.RDS' )
mydata = readRDS(file='./data/vijay.R' )
load(file='./data/vijay1.Rdata' )


df2[df2$hostel ==TRUE,][1:2]
which(df2$hostel == TRUE)
df2[which(df2$hostel) == TRUE,]
str((df2))
df2[c(1,3,5,7,9), c(1,2)]

df2[,c('rollno','hostel')]
df2[which(df2$hostel) == TRUE,][c(1,2,4)]
df2[which(!df2$hostel == TRUE),][c(1,2,4)]

# Sort

df2
order(df2$age)
df2$name[order(df2$age)]   # sort by age; display names
df2$name[order(-df2$age)]  # sort by descending age; di
sort(df2$age)
rev(order(df2$age))
df2$name[rev(order(df2$age))]
df2[order(df2$age), c('name', 'age')]
df2[order(df2$age),1:4] [1:4,]
df2[order(df2$age)][,1:4]


df2[order(df2$age), c("name", "age")]
df2[order(-df2$hostel, df2$age), c("name", "age", "hostel")]
