# Apply Function


a1 = array(1:24, dim = c(4,3,2))
a1
dimnames(a1) = list(c('c1', 'c2', 'c3', 'c4'), c('d1','d2','d3'), c('s1', 's2'))
a1

#Matrix----
m1 = matrix(c(10:1, rep(5,10), rep(c(5,6),5), 1:10), byrow = F, ncol = 4)
m1
colnames(m1) = paste("sub", 1:4, sep ='')
rownames(m1) = paste("R", 1:10, sep = '')
m1



# Apply----
?apply
#apply(X, Margin, FUN,...)
#X = array or matrix MARGIN = 1: 2
#FUN = mean, median, UDF, .... others
#Applies a function over the margins


#array
(X=a1)
apply(X, 1, sum)  #dimention=1 :c
apply(X, 1, mean) #dimention=1 :c
X
apply(X,2,sum)    #d
apply(X,3,sum)    #s
apply(X, c(1,2), sum)    #c&d
apply(X, c(1,2,3), sum)  #not working
apply(X, c(1,2,3), sqrt) #working
apply(X, c(2,3), sum)    #sum over 2 & 3rd 



class(apply(X, 1, sum))    #Integer Vector
addmargins(X,1, sum)   #row margin=1
addmargins(X,2, sum)   #col margin=1
addmargins(X,3, sum)   #sum s1+s2
addmargins(X, c(1,2), sum)    #row & col
addmargins(X, c(1,3), sum) 
addmargins(X, c(2,2), sum) 



m1
round(addmargins(m1, c(1,2), 
           FUN=list(list(sum,sd),
            list(mean,var))), 2 )
(m2 = matrix(1:12, nrow=3))
addmargins(m2, c(1,2),
           FUN = list(list(sum,sd),
                      list(mean,var,IQR, sum)))
