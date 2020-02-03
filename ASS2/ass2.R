library(ggplot2)
# Insert the mortality file
mortality = read.csv(file.choose())

# Question 1
plot(mortality[,1:2], type="l", main="Child Mortality Over Time")

# Question 2

# Create a new column with elderly probability
mortality$old = with(mortality, 1 - mortality)
oldMortality = data.frame("X" = "P(X)", "02" = mortality[1, "mortality"], "70" = mortality[1, "old"])
mean((oldMortality$X02[1]*2) + (oldMortality$X70[1]*70))

# Question 3
# Calculate the life expectancy
mortality$lifeExpectancy = with(mortality, 70-68 * mortality$mortality)

# View life expectancy in a table
View(mortality$lifeExpectancy)


# Question 4

# Question 5
# Open File
lungdata = read.csv(file.choose())

#Age compairison to Smoker vs non-smoker
boxplot(lungdata$age~lungdata$smoke, ylab= "Age", xlab= "Non-Smoker vs Smoker", main = "Age compaired to Smoker vs Non-smoker" )

# Age comparision to FEV for smokers vs non-smokers
ggplot(lungdata, aes(x=lungdata$age, y=lungdata$fev, color=lungdata$smoke)) + geom_point() + scale_color_brewer(palette = "Set1")

# Gender comparison within FEV and age
ggplot(lungdata, aes(x=lungdata$age, y=lungdata$fev, color=lungdata$sex)) + geom_point() + scale_color_brewer(palette = "Set2")

# Height comparied to fev and smoke vs non

ggplot(lungdata, aes(x=lungdata$ht, y=lungdata$fev, color=lungdata$smoke)) + geom_point() + scale_color_brewer(palette = "Set2")





