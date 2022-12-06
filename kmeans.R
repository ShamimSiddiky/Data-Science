myData <- read.csv("C:/Users/Student/Downloads/USArrests.csv", header=TRUE, sep=",")
str(myData)

#normalize data
keeps <- c("Murder","Assault","UrbanPop","Rape")
myData1<- myData[keeps]

myData2 <- scale(myData1)

#install pack
install.packages("factoextra")
install.packages("cluster")

library(factoextra)
library(cluster)

#graph
fviz_nbclust(myData2,kmeans, method="wss")

#kmeans application
km <-kmeans(myData2, centers=4, nstart=25)

#create new data set with cluster value
newData <- cbind(myData, cluster=km$cluster)
newData

#scatter plot
fviz_cluster(km, data=myData1)

#means of cluster
aggregate(USArrests, by=list(cluster=km$cluster),mean)


