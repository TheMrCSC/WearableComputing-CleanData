#Function: mergeTestTrain
#
#This function is used to automate the Test and Train file mergers.
#
#Input Parameters:
#test_file_name -- this is the filename with the test data
#train_file_name -- this is the corresponding filename with the train data
#
#Output:
#comb -- merged test and train dataset
#
#Process:
#first the test file is read, then the train file is read
#both are combined using rbind()
#the individual test and train files are deleted
#the combined file is returned
#
mergeTestTrain <- function(test_file_name, train_file_name){
        test <- read.table(paste(".\\Source\\UCI HAR Dataset\\test\\"
                                 ,test_file_name,sep = ""))
        train <- read.table(paste(".\\Source\\UCI HAR Dataset\\train\\"
                                  ,train_file_name,sep = ""))
        comb <- rbind(test, train)
        rm(test); rm(train)
        return(comb)
}