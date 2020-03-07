# Regression & Association Rules


autompg = read.csv(file="~/DATA SCIENCE/STAT3990/ASS1/AndrewandMonikasDopeProject/ASS1/autompg.ssv",sep=" ")
# Remove column 'name'
autompg = autompg[ , !(names(autompg) %in% c("name"))]
# Transform orig into Factor
autompg$orig = factor(autompg$orig)

#1
mp = lm(mpg ~ wt, data=autompg)
summary(mp)
with(autompg, plot(wt, mpg))
abline(mp)
#2
#3
#4

# Missing Items & association rules

#5
#a
#b
#c

# Congressional Voting

#6
#7