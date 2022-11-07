myDataset <- read.csv("C:/Users/V3nom1O/Downloads/Dataset_1.csv",header=TRUE,sep=",")
myDataset

str(myDataset)
 
names(myDataset)

sapply (myDataset,class)

loan.mean <- mean(myDataset$Loan)
loan.mean
loan.median <- median(myDataset$Loan)
loan.median
val <- as.numeric(myDataset$Loan)
getLoanMode <- function(val){
  uniqv <- unique(val)
  uniqv[which.max(tabulate(match(val, uniqv)))]
}
loan.mode <- getLoanMode(val)
loan.mode

rate.mean <- mean(myDataset$Interest_rate)
rate.mean
rate.median <- median(myDataset$Interest_rate)
rate.median
val2 <- as.numeric(myDataset$Interest_rate)
getRateMode <- function(val2){
  uniqv <- unique(val2)
  uniqv[which.max(tabulate(match(val2, uniqv)))]
}
rate.mode <- getRateMode(val2)
rate.mode
 
loan.range <- (max(myDataset$Loan,na.rm=TRUE)-min(myDataset$Loan,na.rm=TRUE))
loan.range
loan.sd <- sd(myDataset$Loan)
loan.sd

rate.range <- (max(myDataset$Interest_rate,na.rm=TRUE)-min(myDataset$Interest_rate,na.rm=TRUE))
rate.range
rate.sd <- sd(myDataset$Interest_rate)
rate.sd

val3 <- as.character(myDataset$Credit_Score)
getCredMode <- function(val3){
  uniqv <- unique(val3)
  uniqv[which.max(tabulate(match(val3, uniqv)))]
}
cred.mode <- getCredMode(val3)
cred.mode


myData <- read.csv("C:/Users/V3nom1O/Downloads/Dataset_2.csv",header=TRUE,sep=",")
myData[myData == ""] <- NA

apply(is.na(myData), 2, which)

myData$Price[myData$Price > 1600000] = NA
myData$Price[myData$Price < 800000] = NA
myData

myData$Type<-factor(myData$Type, levels=c("h","m","l"),labels=c(1,2,3))
myData

myDataOmit <-  na.omit(myData)
myDataOmit

myDataMean<- myData
myDataMean$Rooms[is.na(myDataMean$Rooms)]<-mean(myDataMean$Rooms,na.rm=TRUE)
myDataMean$Price[is.na(myDataMean$Price)]<-mean(myDataMean$Price,na.rm=TRUE)
myDataMean

myDataMedian<- myData
myDataMedian$Rooms[is.na(myDataMedian$Rooms)]<-median(myDataMedian$Rooms,na.rm=TRUE)
myDataMedian$Price[is.na(myDataMedian$Price)]<-median(myDataMedian$Price,na.rm=TRUE)
myDataMedian

rooms <- myData$Rooms
getRoomMode <- function(rooms){
  uniqv <- unique(rooms)
  uniqv[which.max(tabulate(match(rooms, uniqv)))]
}
room.mode <- getRoomMode(rooms)
myData$Rooms[is.na(myData$Rooms)]<-room.mode


myDataPrice <-  na.omit(myData)
price <- myDataPrice$Price
getPriceMode <- function(price){
  uniqv <- unique(price)
  uniqv[which.max(tabulate(match(price, uniqv)))]
}
price.mode <- getPriceMode(price)
myData$Price[is.na(myData$Price)]<-price.mode
myData
