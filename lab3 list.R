studentName=c("Siddiky","Kamol","Shanto","Akash","Takib")
studentID =c(19,22,20,21,16)
age <- c(20,22,22,19,21)
status <- c("poor","improved","okay","poor","overcoming")

studentdata <- data.frame(studentName, studentID,age,status)
studentGrade<-c("A","A+","B","C","A")
studentdata <-cbind(studentdata,studentGrade)

studentdata[c(1,3),c(1,2)]
studentdata$age

#Factors
studentGrade<-factor(c("A","A+","B","C","A"))
studentGrade

studentGrade[2]="C"

#List
g<-"This is a list"
h<-c(25,26,21,12)
j<-matrix(1:10,nrow=5)
k<-c("one","Two","Three")

myList<-list(title=g, ages=h,j,k)
myList

fruitList <-list("Apple","Mango","Orange")
fruitList <-append(fruitList,"Banana")
fruitList <-append(fruitList,"Papaya",after=2)

studentdata<-edit(studentdata)
