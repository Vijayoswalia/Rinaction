#Margin

parties1 = c('bjp', 'congress', 'sp', 'aap')
length((parties1))
states1 = c('up', 'delhi', 'haryana', 'punjab', 'uk')
length(states1)

set.seed(1234)
mps = ceiling(runif(20,25,50))
mps
sum(mps)
col1 = rep(parties1, each=5)
length(col1)
col1
col2 = rep(states1, times=4)
col2
cbind(col1,col2)
party = factor(col1)
state = factor(col2)
cbind(col1,col2,mps)
df1=data.frame(party, state,mps)
df1
table(df1) # will not work
table(df1$party)
ftable(df1)
table(df1[,c('party','state')])
table(df1[,c('party', 'state')],dnn=list('political parties', 'states of india'))


xtabs(mps~party + state, data=df1)   #formula method
xtabs(mps~state+party, data=df1)
statesel= c('up', 'delhi')    #vector of state names(few)
xtabs(mps~party+state, data=df1,subset = state%in%statesel) # column having 0 are also listed
state%in%statesel
xtabs(mps~party+state, data=df1,subset = state%in%statesel, drop.unused.levels = T)
partysel = c('congress', 'bjp')
xtabs(mps~party+state, data=df1,subset = party%in%partysel)
xtabs(mps~party+state, data=df1,subset = party%in%partysel, drop.unused.levels = T)
ftable(df1)
ftable(df1$state, df1$pary, df1$mps) ###not working

##Margins----

matresults = xtabs(mps~party+state, data=df1)
matresults
str(matresults)
margin.table(matresults, margin = NULL)
margin.table(matresults, margin = 1)
margin.table(matresults, margin = 2)


## if matresult was an array : dimensions = 3

margin.table(matresults, margin = 3) # error here

addmargins(matresults, 2, sum)


#proportions table----

prop.table(matresults , margin = NULL)
round(prop.table(matresults , margin = NULL),2)
sum(round(prop.table(matresults , margin = NULL),2))

(p1 = round(prop.table(matresults , margin = 1),2))
rowSums(p1)
addmargins(p1, 2, sum)           
colSums(p1)


(p2 = round(prop.table(matresults , margin = 2),2))
rowSums(p2)
colSums(p2)
addmargins(p2,1,sum)
p2


addmargins((p2))
addmargins(p2,1)
addmargins(p2,2)


#functions----
