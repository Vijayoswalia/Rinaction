# Missing values

df = read.csv(file='./data/dsstudents2.csv')
df
str(df)
summary(df)
is.na(df)
anyNA(df)
table(is.na(df))
all(is.na(df))
all(is.na(df)==F)
all(is.na(df)==T)
all(is.na(df)==F | is.na(df)==T)
df
complete.cases(df)
!complete.cases(df)
sum(complete.cases(df))
sum(!complete.cases(df))

df[complete.cases(df),][1:2]
mean(df$excel)
mean(df$excel, na.rm = T)
mean(df$excel, na.rm = T, trim = .2)
mean(df$excel, na.rm = T, trim = .4)
cat(df$excel, trim=.2)

df$excel
na.omit(df$excel)
na.omit(df)
na.omit(df)[1:2]

colSums(is.na(df))
#there is  no colsums 
apply(df,2,function(x) sum(is.na(x)))
apply(is.na(df), 2, sum)

funModeling::df_status(df,2)
VIM::aggr(df)
Amelia::missmap(df)
length(which(is.na(df['excel']==T))) # particular column
sum(is.na(df$excel))
mean(df$excel,na.rm = T)
df$excel
df$excel[is.na(df$excel)] = mean(df$excel,na.rm = T)
df$excel
df$sql[is.na(df$sql)] = max(df$stats,na.rm = T)
df$sql

library(mice)
library(purrr)
library(dplyr)
#map_df with purrr
x=purrr::map_df()