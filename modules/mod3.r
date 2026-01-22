#data.frame
Name <- c("Jeb", "Donald", "Ted", "Marco", "Carly", "Hillary", "Bernie")
ABC_poll <- c(4, 62, 51, 21, 2, 14, 15)
CBS_poll <- c(12, 75, 43, 19, 1, 21, 19)

polls <- data.frame(Name, ABC_poll, CBS_poll) #to create the data frame
polls$Difference <- CBS_poll - ABC_poll #this adds a new column to the data frame and calculates the difference between the two polls
polls #to display the data frame with the new column