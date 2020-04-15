# WearableComputing-CleanData
Cleaning and Tidying up data sets which will be used for Data Analysis.

<i>This is project work done as part of Data Science Specialization by John Hopkins University in Coursera.</i>

The data used is from UCI Machine Learning Repository - <a href="http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones">Human Activity Recognition Using Smartphones Data Set</a><br>
This data is from experiments that have been carried out with the help of 30 volunteers (19 - 48 years). Each person has 
performed six activities: Walking, Walking Upstairs, Walking Downstairs, Sitting, Standing and Laying wearing a smartphone,
Sansung Galaxy SII, on the waist.
<BR><BR>
## Issues
The issues observed in this project are as follows:<br>
1. Data has been split into Test and Train: For analysis it is better for us to have one single data set rather than 2 different data sets.
2. Data in each Test and Train has been split into 3 sections
    1. subject codes - subject_test.txt and subject_train.txt
    2. activity they were performing - y_test.txt and y_train.txt 
    3. contains the data values - x_test.txt and x_train.txt<BR>
  For our purposes it is better to have a single dataset containing data from all three files.
3. There are no column names for the data in any files. Appropriate column names need to be added
4. The activities mentioned in y_test.txt and y_train.txt are in coded form. This will have to be converted to actual activity names.
5. Some feature names mentioned in features.txt have an issue where "Body" is mentioned twice when it should be just once. i.e. it is "BodyBody" it should be "Body". This will be corrected.
<BR><BR>
## Clean up Process:
In the Scripts folder of this repository there are 2 scripts:
1. common_functions.R: This R script contains a single function mergeTestTrain. This is a purpose built function to assist in the Test and Train file mergers.
2. run_analysis.R: This R script contains the actual code which need to be run in order to clean the data.
