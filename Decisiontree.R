 #simple examole in CT

train1 = data.frame(rollno=c(1,2,3), gender=c("M","M","F"), play=c("play","not","play"))
train1
library(rpart)
mytree = rpart(play~gender, data=train1, method = "class")
mytree
train2 = data.frame(rollno=c(1,2,3,4),gender=c("M","M","F","F"),play=c("not","not","play","play"))
train2
mytree2 = rpart(play~gender, data=train2, method = "class", minsplit=1, minbucket=1)
mytree2
train3 = data.frame(rollno=c(1,2,3,4,5,6,7,8),gender=c("M","M","M","F","F","F","M","M"),play=c("not","play","play","play","not","play","not","play"))
mytree3 = rpart(play~gender, data=train3, method = "class", minsplit=2, minbucket=2, cp=-1)
mytree3
table(train3$gender,train3$play)
library(rattle)
library(rpart.plot)
library(RColorBrewer)
fancyRpartPlot(mytree3)

