rollno = rep(c(10,11,12,13),4)
rollno
sname = rep(c("Achal", "Apoorva", "Goldie", "Hitesh"),4)
sname
examunit = rep(c("u1","u2", "u3", "u4"), each=4)
examunit
set.seed((1234))
rpgm = ceiling(rnorm(16, 60,10))
rpgm
sql = ceiling(rnorm(16,60,10))
sql
df1= data.frame(rollno, sname, examunit,rpgm,sql)
df1


#reshape

md = reshape::melt(df1, id = c('rollno', 'sname', 'examunit'))
md
md[md$rollno==13,]

#cast
#without aggregation----
reshape::cast(md, rollno + sname + examunit ~ variable)
reshape::cast(md, rollno + sname + variable ~ examunit)
reshape::cast(md, rollno + sname ~ variable ~ examunit)

# Better way to do it
md2 = reshape::melt(df1, id.vars=c("rollno", "sname", "examunit"),
           measure.vars=c("rpgm", "sql"),
           variable.names="subject", variable.names="marks")
md2
head(md2)

