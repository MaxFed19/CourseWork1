## load dplyr package (should be installed, if not, 
## execute install.packages('dplyr')
library(dplyr)
library(stringr)

## Read features names, detect mean and std columns
Features <- read.table("features.txt")
targetCols <-  which(as.logical(str_count(Features$V2, pattern = "mean")
                                +str_count(Features$V2, pattern = "std")))



## Read test data: Parameters (X), Activities(Y) and Subject
xTest <- read.table("X_test.txt")
xTrain <- read.table("X_train.txt")
xComplete <- rbind(xTest,xTrain)
## delete unused vars
rm(xTest); rm(xTrain)
yTest <- read.table("Y_test.txt")
yTrain <- read.table("Y_train.txt")
yComplete <- rbind(yTest,yTrain)
## delete unused vars
rm(yTest); rm(yTrain)
SubjectTest <- read.table("subject_test.txt")
SubjectTrain <- read.table("subject_train.txt")
SubjectComplete <- rbind(SubjectTest,SubjectTrain)
## delete unused vars
rm(SubjectTest); rm(SubjectTrain)

## cleaning data: excluding all non mean and stdev parameters
## and renaming columns  

xComplete2 <- select(xComplete, targetCols)
names(xComplete2) <- Features[targetCols,2]
## delete unused vars
rm(xComplete); rm(Features)

## add activity and subject
xComplete2$Activity = as.factor(yComplete[,1])
xComplete2$Subject = as.factor(SubjectComplete[,1])
## delete unused vars
rm(yComplete); rm(SubjectComplete)

## Grouping by activity and subject
xComplete2 <- group_by(xComplete2, Activity, Subject)
## generating output tidy data
Output <- summarise_each(xComplete2, funs(mean))

