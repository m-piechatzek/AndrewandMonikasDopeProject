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