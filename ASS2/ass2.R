library(ggplot2)
# Insert the mortality file
mortality = read.csv(file.choose())

# Question 1
plot(mortality[,1:2], type="l", main="Child Mortality Over Time")

# Question 2

# Create a new column with elderly probability
mortality$old = with(mortality, 1 - mortality)
oldMortality = data.frame("X" = "P(X)", "02" = mortality[1, "mortality"], "70" = mortality[1, "old"])

# Question 3

# Question 4