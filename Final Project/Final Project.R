myDataset <- read.csv("C:/Users/V3nom1O/Downloads/water_potability.csv",header=TRUE,sep=",")
myDataset

normDataset <- myDataset
for(i in 1:ncol(myDataset))
{                                  
  normDataset[ , i][is.na(normDataset[ , i])] <- mean(normDataset[ , i], na.rm = TRUE)
}

norm_minmax <- function(x){(x- min(x)) /(max(x)-min(x))}

normDataset <- as.data.frame(lapply(normDataset, norm_minmax))
normDataset

normDataset["Potability"][normDataset["Potability"]==0] <- "Not Potable"
normDataset["Potability"][normDataset["Potability"]==1] <- "Potable"

library(caTools)
sample <- sample.split(normDataset, SplitRatio = 0.7)
trainDataset <- subset(normDataset, sample == TRUE)
testDataset   <- subset(normDataset, sample == FALSE)

library(class)
trainKnn <- trainDataset[,-10]
testKnn <- testDataset[,-10]

knn <- knn(train=trainKnn, test=testKnn, cl=trainDataset$Potability, k=38)
knn

accuracy <- 100 * sum(testDataset$Potability == knn)/NROW(testDataset$Potability)
accuracy

confusionMatrix <- table(testDataset$Potability, knn)
confusionMatrix