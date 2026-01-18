assignment2 <- c(16, 18, 14, 22, 27, 17, 19, 17, 17, 22, 20, 22)
myMean <- function(assignment2) {
  return(sum(assignment) / length(someData))
}
#run myMean(assignment2) and record the output or error.
myMean(assignment2)
#The error is "Error in myMean(assignment2) : object 'assignment' not found"
#The error is because the function is not defined correctly.
#The function should be defined as:
myMean <- function(assignment2) {
  return(sum(assignment2) / length(assignment2))
}
#result is 19.25