# Assignment 7
# Load the dataset
df <- read.csv("/Users/r-programming-assignments-main/r-programming-assignments/organizations-100.csv")

print("Testing print():")
print(head(df, 1))

print("Testing summary():")
print(summary(df))

print("Testing plot():")
plot(df$Founded, df$Number.of.employees,
     main = "Number of Employees vs. Founded Year",
     xlab = "Year Founded", ylab = "Number of Employees",
     pch = 19, col = "steelblue")

# Example where generic does NOT dispatch properly
mean(df)  #argument is not numeric or logical, so it gives an error

# Create S3 object
s3_obj <- list(name = "MeshCompany", Funds = 9, Valuation = 39)
class(s3_obj) <- "company_s3"

# Define print method for S3
print.company_s3 <- function(x, ...) {
  cat("Company:", x$name, "\n")
  cat("Funds:", x$Funds, "M\n")
  cat("Valuation:", x$Valuation, "M\n")
  invisible(x)
}

# Test S3 print
print(s3_obj)

# Create S4 class
setClass("company_s4", slots = c(name = "character", Funds = "numeric", Valuation = "numeric"))

# Create S4 object
s4_obj <- new("company_s4", name = "MeshCompany2", Funds = 19, Valuation = 139)

# Define show method for S4 (equivalent to print)
setMethod("show", "company_s4",
          function(object) {
            cat("Company:", object@name, "\n")
            cat("Funds:", object@Funds, "M\n")
            cat("Valuation:", object@Valuation, "M\n")
          })

# Test S4 show
print(s4_obj)
