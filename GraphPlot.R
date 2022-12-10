myData <- read.csv("C:/Users/Student/Downloads/Dataset_2.csv",header=TRUE,sep=",")
myData <- na.omit(myData)

#bar plot
counts <- table(myData$Type)
barplot(counts,
        main="Bar plot",
        xlab="room Type", 
        ylab="Freq")

#horizontal bar plot
counts <- table(myData$Type)
barplot(counts,
        main="Bar plot",
        xlab="room Type",  
        ylab="Freq",
        horiz= TRUE)

#histogram
hist(myData$Price, xlim = c(0,2500000))

#scatter plot
plot(myData$Rooms, myData$Price,
     main="scatter",
     xlab="x", ylab="y")