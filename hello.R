A <- c(5,9,7,11)
B <- c(4,6,8,10)
A+B

A*3
B/2
sort(A)
order(A)
sort(A,decreasing = TRUE)
sort(A,decreasing = FALSE)
A[4]
A[c(1,3)]

mymatrix <- matrix(1:16,nrow=4,ncol=4)
mymatrix

cells <- c(1:4)
rnames<- c("R1","R2")
cnames<- c("C1","C2")
mymatrix <- matrix(cells,nrow=2,ncol=2, byrow=TRUE, dimnames=list(rnames,cnames))
mymatrix

cells <- c(1:25)
rnames<- c("R1","R2","R3","R4","R5")
cnames<- c("C1","C2","C3","C4","C5")
mymatrix <- matrix(cells,nrow=5,ncol=5, byrow=TRUE, dimnames=list(rnames,cnames))
mymatrix

mymatrix[2,]
mymatrix[2,3]
mymatrix[1,c(2,3)]

cells <- c(1:4)
rnames<- c("R1","R2")
cnames<- c("C1","C2")
mymatrix <- matrix(cells,nrow=2,ncol=2, byrow=TRUE, dimnames=list(rnames,cnames))
mymatrix
cells <- c(5:8)
rnames<- c("R1","R2")
cnames<- c("C1","C2")
mymatrix2 <- matrix(cells,nrow=2,ncol=2, byrow=FALSE, dimnames=list(rnames,cnames))
mymatrix2

mymatrix+mymatrix2
