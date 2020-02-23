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