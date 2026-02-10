#create matrices A and B
A <- matrix(1:100, nrow = 10)
B <- matrix(1:1000, nrow = 10)
#check dimensions of A and B
dim(A) #10x10
dim(B) #10x100

#determinant and inverse of matrix A
det(A) #0
solve(A) #error

#matrix B is not a square matrix, so it does not have an inverse or determinant
det(B) #error
solve(B) #error
