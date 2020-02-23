#Versicolor & Virginica Irises
#1.
t.test(iris$Sepal.Width[iris$Species=="versicolor"])
#2.
#3.
t.test(iris$Sepal.Width[iris$Species=="virginica"],iris$Sepal.Width[iris$Species=="versicolor"], alternative = "two.sided")
#4.
#5.