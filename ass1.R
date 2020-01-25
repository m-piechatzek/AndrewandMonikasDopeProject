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
boxplot( data = autompg, 
         lPer100km,  
         ylab = "Litres per 100km", 
         xlab = "Vehicles",
         main = "Litres per 100km for All Vehicles")