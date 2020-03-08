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
mpglog = lm(mpg ~ wt, data=autompg)
summary(mpglog)
with(autompg, plot(wt, mpg, log="y"))
abline(mpglog)

#3
lPer100km = 235/autompg$mpg
autompg = cbind(lPer100km, autompg)

# the results of lp100km with mpg
mp = lm(mpg ~ lPer100km, data=autompg)
summary(mp)
with(autompg, plot(lPer100km, mpg))
abline(mp)
# the results of the logarithm of lp100km with mpg
mp = lm(mpg ~ lPer100km, data=autompg)
summary(mp)
with(autompg, plot(lPer100km, mpg, log="y"))
abline(mp)
# the results of the logarithm of lp100km with the logarithm of mpg
mp = lm(log(mpg) ~ log(lPer100km), data=autompg)
summary(mp)
with(autompg, plot(lPer100km, mpg))
abline(mp)
#4
lm(log(mpg) ~ log(lPer100km), data=autompg)
summary(lm(log(mpg) ~ log(lPer100km), data=autompg))
# Missing Items & association rules

#5
#a
#b
#c

# Congressional Voting

#6
votes = read.csv(file.choose(), header=F)


#7