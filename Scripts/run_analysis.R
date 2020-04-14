library(dplyr)
#the below script contains the mergeTestTrain function which merges the two 
#datasets. This function is created since this process has to be done 
#individually for each and every file.
source(".\\Scripts\\CommonFunction.R")

subject <- mergeTestTrain("subject_test.txt","subject_train.txt")
colnames(subject) <- "subject"

x <- mergeTestTrain("x_test.txt","x_train.txt")

y <- mergeTestTrain("y_test.txt","y_train.txt")
colnames(y) <- "activity"

activity_labels <- read.table(".\\Source\\UCI HAR Dataset\\activity_labels.txt")
colnames(activity_labels)<- c("act_code", "act_label")

features <- read.table(".\\Source\\UCI HAR Dataset\\features.txt")

colnames(x) <- features[,2]

compData <- cbind(subject,y,x[,grep("mean()|std()",features$V2)])

compData$activity<- merge(compData, activity_labels, by.x = "activity", 
                  by.y = "act_code", all = FALSE)[,"act_label"]

compData_group <- group_by(compData, subject, activity)
sol <- summarise_all(compData_group,mean, na.rm = TRUE)
                 
