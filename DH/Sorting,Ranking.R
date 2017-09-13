#Sort Order Rank
set.seed(1123)
marks = ceiling(runif(11,5,10))
marks
sort(marks)
rank(ceiling(marks))


sort(marks, decreasing = TRUE)
sort(-(-marks))       # (-) doesn't works
rev(sort(marks))


order(marks)
marks
marks[order(marks)]  # similar to sort x

order(marks, decreasing = T)
order(-marks)


length(marks)
marks2 = marks
marks2[5] = NA
marks2
order(marks2)
?order
order(marks2, na.last = NA)
length(marks2)
is.na(marks2)
anyNA(marks2)


mean(marks2)                            # does not work
mean(marks2, na.rm=T)                   #add na.rm=T
order(marks2, na.last = NA)             # 5 removed
order(marks2, na.last = FALSE)          # 5 is first
order(marks2, na.last = TRUE)           # 5 is last
length(order(marks2, na.last = TRUE))   # 5 is there
length(order(marks2, na.last = NA))     # 5 is not there



?rank
table(marks)
marks                                   # 10-4 times, 8,6,9 - 2 times
rank(marks, ties.method = "first")      # 2-6s - 1,2
rank(marks, ties.method = "average")
rank(marks, ties.method = "max")
rank(marks, ties.method = "random")
rank(marks, ties.method = "min")


sort(marks2, na.last = TRUE)
sort(marks2, na.last = FALSE)
sort(marks2, na.last = "keep")   #remove NA2
length(marks)
