#import dataset
myDataset <- read.csv("C:/Users/V3nom1O/Downloads/water_potability.csv",header=TRUE,sep=",")
myDataset

normDataset <- myDataset
for(i in 1:ncol(myDataset))
{                                  
  normDataset[ , i][is.na(normDataset[ , i])] <- mean(normDataset[ , i], na.rm = TRUE)
}

#declare normalization func
norm_minmax <- function(x){(x- min(x)) /(max(x)-min(x))}

#normalize dataset
normDataset <- as.data.frame(lapply(normDataset, norm_minmax))
normDataset

#fix classifier
normDataset["Potability"][normDataset["Potability"]==0] <- "Not Portable"
normDataset["Potability"][normDataset["Potability"]==1] <- "Portable"
#split dataset into test and train
#install caTools
library(caTools)
sample <- sample.split(normDataset, SplitRatio = 0.7)
trainDataset <- subset(normDataset, sample == TRUE)
testDataset   <- subset(normDataset, sample == FALSE)

#perform knn algorith
#install class
library(class)
trainKnn <- trainDataset[,-10]
testKnn <- testDataset[,-10]

knn <- knn(train=trainKnn, test=testKnn, cl=trainDataset$Potability, k=30)
knn

accuracy <- 100 * sum(testDataset$Potability == knn)/NROW(testDataset$Potability)
accuracy

confusionMatrix <- table(testDataset$Potability, knn)
confusionMatrix