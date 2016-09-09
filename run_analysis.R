################################################################
##                    Handle train data                        ##
################################################################

##read in all the related data files
setwd("E:/Coursera/getdataAssignment")
features <- read.table("features.txt")

setwd("E:/Coursera/getdataAssignment/train")
xtrain <- read.table("X_train.txt")
ytrain <- read.table("y_train.txt")
strain <- read.table("subject_train.txt")

##Get the variable names for X_train
names(xtrain) <- features[,2]
##get only the mean & sd variable into traindata
xtrain <- xtrain[, grepl("mean()|std()", names(xtrain))]

##Rename variable & set values for y_train
names(ytrain) <- "activity"
ytrain[ytrain=="1"] <- "WALKING"
ytrain[ytrain=="2"] <- "WALKING_UPSTAIRS"
ytrain[ytrain=="3"] <- "WALKING_DOWNSTAIRS"
ytrain[ytrain=="4"] <- "SITTING"
ytrain[ytrain=="5"] <- "STANDING"
ytrain[ytrain=="6"] <- "LAYING"

##Generate a variable set to "train"
ytrain$label <- "train"

##Rename variable for strain
names(strain) <- "volunteersno"


##combind data in one
traindata <- cbind(strain, ytrain, xtrain)

################################################################
##                    Handle test data                        ##
################################################################
setwd("E:/Coursera/getdataAssignment/test")
xtest <- read.table("X_test.txt")
ytest <- read.table("y_test.txt")
stest <- read.table("subject_test.txt")

##Get the variable names for X_train
names(xtest) <- features[,2]
##get only the mean & sd variable into traindata
xtest <- xtest[, grepl("mean()|std()", names(xtest))]

##Rename variable & set values for y_train
names(ytest) <- "activity"
ytest[ytest=="1"] <- "WALKING"
ytest[ytest=="2"] <- "WALKING_UPSTAIRS"
ytest[ytest=="3"] <- "WALKING_DOWNSTAIRS"
ytest[ytest=="4"] <- "SITTING"
ytest[ytest=="5"] <- "STANDING"
ytest[ytest=="6"] <- "LAYING"

##Generate a variable set to "test"
ytest$label <- "test"

##Rename variable for strain
names(stest) <- "volunteersno"


##combind data in one
testdata <- cbind(stest, ytest, xtest)

##combind traindata & testdata
finaldata <- rbind(traindata, testdata)

##get average of each variable for each activity and each subject.
finalavg <- aggregate(finaldata[,4:82], list(finaldata$volunteersno, finaldata$activity), mean)
names(finalavg)[1] <- "subject"
names(finalavg)[2] <- "activity"