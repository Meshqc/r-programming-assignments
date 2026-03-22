# Dataset: BankWages (job, education, gender, minority)

# Load dataset
BankWages <- read.csv("/Users/animeshsingh/Documents/r-programming-assignments-main/r-programming-assignments/data/BankWages.csv")
head(BankWages)


#Base R Graphics

# 1. Histogram of education levels
hist(BankWages$education,
     main   = "Base: Distribution of Education",
     xlab   = "Years of Education",
     col    = "steelblue",
     border = "white")

# 2. Bar plot of job categories by gender
counts <- table(BankWages$gender, BankWages$job)
barplot(counts,
        beside  = TRUE,
        main    = "Base: Job Category by Gender",
        xlab    = "Job",
        ylab    = "Count",
        col     = c("steelblue", "salmon"),
        legend  = rownames(counts))


#Lattice Graphics 

library(lattice)

# 3. Conditional histogram of education by job type
histogram(~ education | job,
          data  = BankWages,
          main  = "Lattice: Education Distribution by Job",
          xlab  = "Years of Education")

# 4. Box-and-whisker plot of education by gender
bwplot(education ~ gender,
       data  = BankWages,
       main  = "Lattice: Education by Gender",
       xlab  = "Gender",
       ylab  = "Years of Education")


#ggplot2

library(ggplot2)

# 5. Bar chart of job counts colored by minority status
ggplot(BankWages, aes(x = job, fill = minority)) +
  geom_bar(position = "dodge") +
  labs(title = "ggplot2: Job Category by Minority Status",
       x     = "Job",
       y     = "Count",
       fill  = "Minority")

# 6. Faceted histogram of education by job
ggplot(BankWages, aes(x = education, fill = gender)) +
  geom_histogram(binwidth = 1, color = "white") +
  facet_wrap(~ job) +
  labs(title = "ggplot2: Education Distribution by Job and Gender",
       x     = "Years of Education",
       y     = "Count",
       fill  = "Gender")
