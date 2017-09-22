df
aggregate(df, list(course=df$course), mean)
aggregate(df$fee, list(DScourse=df$course, Gender=df$gender), sum)
aggregate(cbind(df$fee, df$excel), list(DScourse=df$course, Gender=df$gender), sum)
cat(names(df))
split(df[1:3], df$gender)
split(df[1:3], df$gender)$F
split(df[1:3], df$gender)$M
class(split(df[1:3], df$gender)
