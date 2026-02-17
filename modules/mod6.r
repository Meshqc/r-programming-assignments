cat("\n\nProblem 1:\n")
# define A and B
A <- matrix(c(2, 0, 1, 3), ncol=2)
B <- matrix(c(5, 2, 4, -1), ncol=2)

cat("Matrix A:\n")
print(A)
cat("\nMatrix B:\n")
print(B)

# a) find A + B
cat("\na) A + B:\n")
result_sum <- A + B
print(result_sum)

# b) find A - B
cat("\nb) A - B:\n")
result_diff <- A - B
print(result_diff)

cat("\n\nProblem 2:\n")
#4x4 diagonal matrix with values 4, 1, 2, 3
cat("Diagonal matrix of size 4 with values 4, 1, 2, 3:\n")
diag_matrix <- diag(c(4, 1, 2, 3))
print(diag_matrix)

cat("\n\nProblem 3:\n")
#5x5 diagonal matrix with 3s on the diagonal
matrix3 <- diag(3, 5, 5)
#first row (add 1s in positions [1,2] to [1,5])
matrix3[1, 2:5] <- 1
#first column (add 2s in positions [2,1] to [5,1])
matrix3[2:5, 1] <- 2
print(matrix3)
