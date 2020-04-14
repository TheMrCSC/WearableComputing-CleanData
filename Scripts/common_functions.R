################################################################################
#FUNCTION: mergeTestTrain                                                      #
#                                                                              #
#This function is used to automate the Test and Train file mergers.            #
################################################################################
#INPUTS:                                                                       #
#test_file_name         :This is the filename with the test data               #
#train_file_name        :This is the corresponding filename with the train data#
################################################################################
#OUTPUT:                                                                       #
#comb                   :This data.frame contains merged test and train dataset#
################################################################################

mergeTestTrain <- function(test_file_name, train_file_name){
        
        #reading test file from system
        test <- read.table(paste(".\\Source\\UCI HAR Dataset\\test\\"
                                 ,test_file_name,sep = ""))
        
        #reading train file from system
        train <- read.table(paste(".\\Source\\UCI HAR Dataset\\train\\"
                                  ,train_file_name,sep = ""))
        
        #combining both, test and train file such that test data is above
        #train data
        comb <- rbind(test, train)
        
        #removing test and train data from memory
        rm(test); rm(train)
        
        #returning dataframe with combined file data
        return(comb)
}