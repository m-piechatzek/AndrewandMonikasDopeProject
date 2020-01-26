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

# Question 5
blueOrange = blueOrange <-colorRampPalette(c("orange","blue"))

#returns a customized function which takes parameters:

# n = the number of (ordered) colours you want on the scale

theColours = blueOrange(length(lPer100km)) #returns an actual collection of colours, for as many data points we have

coloursToPaint = theColours[rank(lPer100km)] #orders the colours according to the rank of the fuel efficiency

parcoord(autompg[,1:9],col=coloursToPaint)

# Question 6

# Vehicles that tend do have good fuel efficiency have low displ, low hp, low wt, and high modYr

# Question 7

# lPer100km and mpg has negative correlation
# mpg and cylinder have negative correlation
# displ and hp have positive correlation
# hp and wt have positive correlation
# wt and acc have negative correlation
#
# There are no other strong correlations with side-by-side variables

# Question 8
# Removed from assignment

# Question 9
# a) From the looks of the election map blue (right-wing) seems like it had the majority of wins

# b) The winner is not as obvious in the third graph due to seemly equal amounts of red versus blue.

# Question 10
# An area would have grown in the third graph because the population in that area is quite dense 
# whereas in an area that has shrunken means there is a low volume of people.

# The color that occurs more in the third graph is red, which means that the areas where red
# has more votes is where there is a higher population of people, even though it is a small area
# physically. That is vice versa for blue areas, meaning blue covers more land physically but has less
# density of people living in it.

# Question 11
pop = read.csv(file="pop.csv")
plot(pop[,1:2], type="l", main="Population Growth Over Time")

# Question 12

# There was a stop in population growth during 1200 to 1400 due to the Black Death which killed
# around 50 million people in Europe.

# Bibliography
# 
