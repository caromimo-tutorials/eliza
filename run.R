source("model.R")
source("default_model.R")
source("eliza.R")

input <- ""
cat("Eliza: Hello, I am Eliza!\n")
while (TRUE) {
  cat("\nYou: ")
  input <- readLines(file("stdin"), n=1)
  if (input == "quit") break
  cat("Eliza:", Eliza(input))
}