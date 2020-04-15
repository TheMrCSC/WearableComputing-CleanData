library(dplyr)
source(".\\Scripts\\common_functions.R")


#merging data from the subject_test and subject_train files
#contains the code number used for each subject
subject <- mergeTestTrain("subject_test.txt","subject_train.txt")


#this is a single column data.frame; updating the column name to sensible value
colnames(subject) <- "subject"


#merging data from x_test and x_train files
#contains the values for the features mentioned in features.txt
x <- mergeTestTrain("x_test.txt","x_train.txt")


#merging data from y_test and y_train files
y <- mergeTestTrain("y_test.txt","y_train.txt")


#this is a single column data.frame;updating the column name to sensible value
colnames(y) <- "activity"


#reading activity_labels file
#this file contains the activity name mentioned in y_test and y_train files
activity_labels <- read.table(".\\Source\\UCI HAR Dataset\\activity_labels.txt")


#updating the column names to sensible values 
colnames(activity_labels)<- c("act_code", "act_label")


#reading features file
#this file contains the list of features in x_train and x_test files 
features <- read.table(".\\Source\\UCI HAR Dataset\\features.txt")


#there are feature names where Body is repeated in the name. This is incorrect
#as it is not mentioned in features_info.txt
#correcting this issue here
features$V2 <- sub("BodyBody", "Body", features$V2)


#assigning the actual feature names as column names
colnames(x) <- features[,2]


#combining subject code, activity code, and all mean and standard deviation 
#features mentioned in the features file
compData <- cbind(subject,y,x[,grep("mean\\(\\)|std\\(\\)",features$V2)])


#updatin the activity code with the activity lables from the activity lable 
#data.frame
compData$activity<- merge(compData, activity_labels, by.x = "activity", 
                  by.y = "act_code", all = FALSE)[,"act_label"]


#deleting data.frames that are not required to save memory
#rm(x);rm(y);rm(subject);rm(features);rm(activity_labels)


#creating a data.frame with a group by on subject and activity and summarized to
#take mean for all other columns
solution <- compData %>% group_by(subject, activity) %>% summarise_all(mean, 
                                                                  na.rm = TRUE)
                 
