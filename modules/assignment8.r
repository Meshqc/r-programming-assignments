# Import dataset
studentX <- read.table("/Users/animeshsingh/Documents/r-programming-assignments-main/r-programming-assignments/data/Assignment_Dataset.txt",
  header = TRUE, sep = ",", stringsAsFactors = FALSE)
print(studentX)

# Load plyr and compute mean Grade by Sex
library(plyr)
gender_mean <- ddply(studentX, "Sex", summarise, GradeAverage = mean(Grade, na.rm = TRUE))
print(gender_mean)

# Write grouped means to a text file
write.table(gender_mean, file = "gender_mean.txt", sep = "\t", row.names = FALSE)

# Filter rows where Name contains "i" or "I"
i_students <- subset(studentX, grepl("i", Name, ignore.case = TRUE))
print(i_students)

# Write just the names to a CSV
write.csv(i_students$Name, file = "i_students.csv", row.names = FALSE, quote = FALSE)

# Export full filtered dataset to CSV
write.csv(i_students, file = "i_students_full.csv", row.names = FALSE)

# Confirm files exist
print(file.exists("gender_mean.txt"))
print(file.exists("i_students.csv"))
print(file.exists("i_students_full.csv"))
