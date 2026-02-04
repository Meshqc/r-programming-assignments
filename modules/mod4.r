# A. Creating the Dataset
Frequency <- c(0.6, 0.3, 0.4, 0.4, 0.2, 0.6, 0.3, 0.4, 0.9, 0.2)
BP <- c(103, 87, 32, 42, 59, 109, 78, 205, 135, 176)
# First assessment(bad=1, good=0)
First <- c(1, 1, 1, 1, 0, 0, 0, 0, NA, 1)
# Second assessment(low=0, high=1)
Second <- c(0, 0, 1, 1, 0, 0, 1, 1, 1, 1)
# Final decision(low=0, high=1)
FinalDecision <- c(0, 1, 0, 1, 0, 1, 0, 1, 1, 1)

# Display the data
cat("\n=== Hospital Patient Data ===\n")
data.frame(Frequency, BP, First, Second, FinalDecision)

# B. Creating Boxplot and Histogram
par(mfrow = c(1, 2)) #for two plots side by side
# 1. Boxplot for Blood Pressure
boxplot(BP,
        main = "Boxplot of Patient Blood Pressure",
        ylab = "Blood Pressure (mmHg)",
        col = "lightblue",
        border = "#1f1fab")

# Statistics for the plot
abline(h = median(BP), col = "red", lty = 2, lwd = 2)
text(1.3, median(BP), paste("Median:", median(BP)), col = "red")

# 2. Histogram for Blood Pressure
hist(BP,
     main = "Histogram of Patient Blood Pressure",
     xlab = "Blood Pressure (mmHg)",
     ylab = "Frequency",
     col = "#365050",
     border = "#1a1b1c",
     breaks = 5)

# Reset plotting parameters
par(mfrow = c(1, 1))

# C.Exploring MD Ratings vs Blood Pressure
cat("\n\n=== Summary Statistics ===\n")
cat("Blood Pressure Statistics:\n")
cat("  Mean BP:", mean(BP), "\n")
cat("  Median BP:", median(BP), "\n")
cat("  Min BP:", min(BP), "\n")
cat("  Max BP:", max(BP), "\n")
cat("  Standard Deviation:", sd(BP), "\n")
