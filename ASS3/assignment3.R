#Versicolor & Virginica Irises
#1.
t.test(iris$Sepal.Width[iris$Species=="versicolor"])
#2.
#3.
t.test(iris$Sepal.Width[iris$Species=="virginica"],iris$Sepal.Width[iris$Species=="versicolor"], alternative = "two.sided")
#4.
iris2 = iris
iris2$Sepal.Width = sample(iris2$Sepal.Width)
t.test(iris2$Sepal.Width[iris2$Species=="virginica"],iris2$Sepal.Width[iris2$Species=="versicolor"])
#5.
summary(aov(Petal.Length ~ Species, data=iris.2))
summary(aov(Sepal.Length ~ Species, data=iris.2))
summary(aov(Petal.Width ~ Species, data=iris.2))
summary(aov(Sepal.Width ~ Species, data=iris.2))

# ANOVA 
iris.2 = subset(iris, Species!="setosa")
lmSepalWidth = lm(Sepal.Width ~ Species, data=iris.2)
lmSepalLength = lm(Sepal.Length ~ Species, data=iris.2)
lmPetalWidth = lm(Petal.Width ~ Species, data=iris.2)
lmPetalLength = lm(Petal.Length ~ Species, data=iris.2)
summary(lmSepalWidth)
summary(lmSepalLength)
summary(lmPetalWidth)
summary(lmPetalLength)
# TTest 
t.test(iris.2$Sepal.Width[iris.2$Species=="virginica"],iris.2$Sepal.Width[iris.2$Species=="versicolor"], alternative = "two.sided")
t.test(iris.2$Sepal.Length[iris.2$Species=="virginica"],iris.2$Sepal.Length[iris.2$Species=="versicolor"], alternative = "two.sided")
t.test(iris.2$Petal.Width[iris.2$Species=="virginica"],iris.2$Petal.Width[iris.2$Species=="versicolor"], alternative = "two.sided")
t.test(iris.2$Petal.Length[iris.2$Species=="virginica"],iris.2$Petal.Length[iris.2$Species=="versicolor"], alternative = "two.sided")

#CI
#6.
t.test(x)
#7.
# Creating a population of 1000 with 100 1's and 900 0's
y = rep(0,1000)
i = c(1:1000)
for(num in i){
  if(num %% 10 ==0){
    y[num]=1}
}
t.test(y)

#Estimating type I error
#8.
pvaluearray = c()
i = c(1:10000)
for(num in i) {
  m = rexp(5, rate=1)
  pvalue = t.test(m)$p.value
  pvaulearray = append(pvaluearray, pvalue)
}
summaryhist(pvaluearray, breaks = 100, main = "Histogram of P-values", ylab = "Frequency", xlab = "P-values")
#Theoretical
#9.
numSimulationsPern = 1000 # or any reasonably large number
allValuesOfn = 3:30 #good enough range
theoreticalVariance = 25 #or any consistent number you want 
arrayMedians = c()
arrayOfDifferences = c()
theoreticalBias = c()
s.squared.for.n=function(n){
  # simulate a sample of size n with 'theoreticalVariance', 'numSimulationsP # each time, 
  # estimate the variance as shown on the assignment
  
  for(i in 1:numSimulationsPern){
    sample = sample(5000,n, replace=TRUE)
    #cat("n", n)
    diffVar =theoreticalVariance - ((-((var(sample))*((n-1)/n)))/(n-1))
    #theoreticalBias = -(var(sample))*((n-1)/n)
    #cat("cat",var(sample))
    #print(((-((var(sample))*((n-1)/n)))/(n-1)))
    arrayOfDifferences = append(arrayOfDifferences, diffVar)
  }
  meanTemp = median(arrayOfDifferences)
  arrayMedians <<- append(arrayMedians, meanTemp)
  print(meanTemp)

  return(arrayOfDifferences)
  # store the difference estimated - theoreticalVariance in vector to return
}

allBiases = lapply(allValuesOfn,s.squared.for.n) #returns the results as list of vectors
# Median Biases
lines(boxplot(allBiases)$stats[3,], col="green",lwd=3)
# First Quartile
lines(boxplot(allBiases)$stats[2,], col="red",lwd=3)
# Third Quartile
lines(boxplot(allBiases)$stats[4,], col="blue",lwd=3)
# Theoretical Bias

#10.

#Bootstrap
#11.
