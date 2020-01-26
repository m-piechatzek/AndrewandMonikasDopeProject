library(ggplot2)
# Insert the autompg file
autompg = read.csv(file="autompg.ssv",sep=" ")
# make sure you are in the correct directory on your computer -> use setwd("my/path/")
# to View the csv -> View(autompg)

# Make sure you remove NA
completeRows = complete.cases(autompg)
autompg = autompg[completeRows,]
dim(autompg)

# Question 1
# not done
hist(
  main="Histogram of Mile per Gallon",
  xlab="MPG",
  x=autompg$mpg,
  xlim = c(0,50),
  breaks = 5)

# Question 2
# Missing Summary
boxplot( data = autompg, 
         lPer100km,  
         ylab = "Litres per 100km", 
         xlab = "Vehicles",
         main = "Litres per 100km for All Vehicles")

# Question 3
# Missing Summary
# Theres a small trend in locations of higher number of cylinders rising 
boxplot(autompg$lPer100km ~ autompg$cyl, 
        col="orange", 
        main="Number of Cylinders for L/100KM", 
        ylab="Litres Per 100KM",
        xlab="Number of cylinders") 

# Question 4
# Missing Summary
# its connection is between amount of gas the car needs in order to go a certain distance, all depending on the amount of cylinders
boxplot(autompg$lPer100km ~ autompg$cyl, 
        col="orange", 
        main="Number of Cylinders for L/100KM", 
        ylab="Litres Per 100KM",
        xlab="Number of cylinders") 

