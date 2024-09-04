library(rpart)
library(class)

setwd("C:\\Users\\Laxman\\Desktop\\Portfolio")
seeds <- read.csv("seeds_dataset_class.csv")
seeds_rand=seeds[sample(209,209),]

seedsclass = seeds[,1]
seedsvalues = seeds[,-1]

#set up a training set
seedclassTrain = seedsclass[1:167]
seedvaluesTrain = seedsvalues[1:167,]

#and test set
seedclassTest = seedsclass[167:209]
seedvaluesTest = seedsvalues[167:209,]

fit <- rpart(seedclassTrain~., method="class", data=seedvaluesTrain)
plot(fit, uniform=TRUE, main="Decision Tree for SeedDataset")
text(fit, use.n=TRUE, all=TRUE, cex=.8)

pfit<- prune(fit, cp=0.1)
plot(pfit, uniform=TRUE, main="Pruned Decision Tree for SeedDataset")
text(pfit, use.n=TRUE, all=TRUE, cex=.8)

for (x in 1:3) {
  pfit<- prune(fit, (x/10))
  treepred <-predict(pfit, seedvaluesTest, type = 'class')
  n = length(seedclassTest) #the number of test cases
  ncorrect = sum(treepred==seedclassTest) #the number of correctly predicted
  accuracy=ncorrect/n
  print(accuracy)
}

predictions <- predict(fit, type = "class")
plot(seeds$Width, seeds$Length, 
     xlab = "Width",             
     ylab = "Length",            
     main = "Scatterplot of Width vs. Length",
     col = predictions,              
)


for (x in 1:5) {
  knn3pred = knn(seedvaluesTrain, seedvaluesTest, seedclassTrain, x)
  n = length(seedclassTest) #the number of test cases
  ncorrect = sum(knn3pred==seedclassTest) #the number of correctly predicted
  accuracy=ncorrect/n
  print(accuracy)
}
