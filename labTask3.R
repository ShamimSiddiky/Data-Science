myData <- read.csv("C:/Users/Student/Downloads/data.csv",header=TRUE,sep=",")
myData

names(myData)

names(myData)[2]<-"loan amount"
myData$gender<-factor(myData$gender, levels=c(1,2),labels=c("male","female"))

str(myData)
sd(myData$loan)

install.packages("dplyr")
library(dplyr)
8 %>% summarise_if(is.numeric,sd)

install.packages("matrixStats")
library(dplyr)
library(matrixStats)
myData$score=rowSds(as.matrix(myData[,c(2,3)]))
myData$score

sample_n(myData,3)

myData2=select()