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
hist(x=autompg$mpg)