library(ggplot2)
# Insert the autompg file
autompg = read.csv(file="autompg.ssv",sep=" ")

# Make sure you remove NA
completeRows = complete.cases(autompg)
autompg = autompg[completeRows,]
dim(autompg)

# Question 1
hist(
  main="Frequency of Miles per Gallon",
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

# Question 3
boxplot(autompg$lPer100km ~ autompg$cyl, 
        col="orange", 
        main="Number of Cylinders for L/100KM", 
        ylab="Litres Per 100KM",
        xlab="Number of cylinders") 

# Question 4
boxplot(autompg$mpg ~ autompg$cyl, 
        col="orange", 
        main="Number of Cylinders for MPG", 
        ylab="MPG",
        xlab="Number of cylinders") 

# Question 5
blueOrange = blueOrange <-colorRampPalette(c("orange","blue"))
theColours = blueOrange(length(lPer100km)) #returns an actual collection of colours, for as many data points we have
coloursToPaint = theColours[rank(lPer100km)] #orders the colours according to the rank of the fuel efficiency

parcoord(autompg[,1:9],col=coloursToPaint)


# Question 11
pop = read.csv(file="pop.csv")
plot(pop[,1:2], type="l", main="Population Growth Over Time")

