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

# Congressional Voting

#7
votes = read.csv(file.choose(), header=F)
summary(apriori(votes, parameter = list(supp = 0.2, conf = 0.8, maxlen=3)))
# Print the top 4 rules
associationrules = apriori(votes, parameter = list(supp = 0.2, conf = 0.8, maxlen=3))
# sort by lift
inspect(sort(associationrules[1:4], by="lift"))
# ask what to do with ? ***********
associationrules = apriori(votes, parameter = list(supp = 0.2, conf = 0.85, maxlen=3))
inspect(sort(associationrules[1:4], by="lift"))

associationrules = apriori(votes, parameter = list(supp = 0.2, conf = 0.75, maxlen=3))
inspect(sort(associationrules[1:4], by="lift"))


