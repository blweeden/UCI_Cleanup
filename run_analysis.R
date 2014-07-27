library(plyr)

##Read the data
setwd("test")
testData <- read.table("X_test.txt")
testSubjects <- read.table("subject_test.txt")
testActivities <- read.table("y_test.txt")
setwd("../train")
trainData <- read.table("X_train.txt")
trainSubjects <- read.table("subject_train.txt")
trainActivities <- read.table("y_train.txt")

##Trim down to these columns.  please See README for more information.
##Combine test and training data as weel as subject and activity data into one data set
columns <- c(1:6, 
             41:46, 
             81:86, 
             121:126, 
             161:166, 
             201:202,
             214:215,
             227:228, 
             240:241, 
             253:254, 
             266:271,  
             345:350,  
             424:429,  
             503:504, 
             516:517,  
             529:530,  
             542:543)
data <- testData[,columns]
data <- cbind(testSubjects, data, testActivities)
trainData <- trainData[,columns]
trainData <- cbind(trainSubjects, trainData, trainActivities)
data <- rbind(data, trainData)

##Set activities to values in English rather than numeric
setwd("../")
activities <- read.table("activity_labels.txt")
data[,68] <- factor(data[,68], labels=activities[,2])

##Get column names, remove special characters
features <- read.table("features.txt", colClasses = c("numeric", "character"))
features <- features[columns, 2]
features <- gsub("-(.)", "\\U\\1", features, perl=TRUE)
features <- gsub("\\()", "", features)
features <- gsub("BodyBody", "Body", features)
names(data) <- c("Subject", features, "Activity")

##Take means per subject / activity combination and create new, tidy data set from this
tidyData <- ddply(data, c("Subject", "Activity"), function(df) sapply(df[,2:67], mean))
write.table(tidyData, "Tidy_Data.txt", row.names = FALSE)
