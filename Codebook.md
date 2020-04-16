
# Code Book

This document contains meaning for all the columns mentioned in the tidy file 
created as part of this project. There are 68 columns and 10299 observations 
in the data file there are 68 columns and 35 observations. This file contains 
the average data which is grouped by subject and activity.
Even though the data it self is different, the columns and their definition is
the same.   

## Issues in Data
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

## Step-by-Step cleanup process:
01. Merge test and  train datasets: This will be done using a purpose built function called mergeTestTrain which is in common_funtions.R in the mergeTestTrain function the following steps are taken:
    1. the call statement will pass the file names for the test and train files
    2. both test and train files will be read to 2 different data.frames by appending the filename with the common path
    3. the data.frames will be merged by using the rbind() function
    4. the original test and train data.frames will be deleted
    5. the combined data.frame will be returned.
02. the mergeTestTrain function will be executed for the subject files i.e. subject_test.txt and subject_train.txt
03. a proper columnname will be assigned to the columns in subject data.frame
04. mergeTestTrain will be used to merge the x files i.e. x_test.txt and x_train.txt
05. mergeTestTrain will be used to merge the y files i.e. y_test.txt and y_train.txt
06. column name "activity" will be assigned to y data.frame
07. activity_labels.txt will be read into data.frame
08. column names will be assigned to activity_labels data.frame
09. features.txt will be read into data.frame
10. "BodyBody" will be converted to "Body" using sub function
11. x data.frame will have column names assigned to it from features data.frame
12. combined data.frame will be created with subject, y and mean() and std() columns from x
13. activty numbers will be replaced with activity names in the activity column
14. unwanted data.frames will be deleted
15. group by and summerization will be done to get the final "solution" data.frame
   <BR><BR>

## Column Definitons

subject <BR><BR>
This is the code number for the subject. There are 30 subjects as part of this
test. Hence the value of subject will vary from 1 to 30  <BR><BR>
                
activity <BR><BR>
activity which was performed as part of the experimental calculation. There are 
a total of six activities. They are as follows: <BR>
&nbsp;&nbsp;&nbsp;&nbsp;WALKING<BR>
&nbsp;&nbsp;&nbsp;&nbsp;WALKING_UPSTAIRS<BR>
&nbsp;&nbsp;&nbsp;&nbsp;WALKING_DOWNSTAIRS<BR>
&nbsp;&nbsp;&nbsp;&nbsp;SITTING<BR>
&nbsp;&nbsp;&nbsp;&nbsp;STANDING<BR>
&nbsp;&nbsp;&nbsp;&nbsp;LAYING<BR><BR>

From here on out all the variables are the averages of the different measurements
that have been taken.<BR><BR>

*from the original document: features_info.txt. Emphasis is my own and the text has been 
reduced to include only required information*<BR><BR>

The features selected for this database come from the accelerometer and gyroscope 
3-axial raw signals **tAcc-XYZ** and **tGyro-XYZ**. <BR>
These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz.<BR> 
Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner 
frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then 
separated into body and gravity acceleration signals (**tBodyAcc-XYZ** and 
**tGravityAcc-XYZ**) using another low pass Butterworth filter with a corner frequency 
of 0.3 Hz. <BR>
Subsequently, the body linear acceleration and angular velocity were derived in time
to obtain Jerk signals (**tBodyAccJerk-XYZ** and **tBodyGyroJerk-XYZ**). Also the magnitude 
of these three-dimensional signals were calculated using the Euclidean norm 
(**tBodyAccMag**, **tGravityAccMag**, **tBodyAccJerkMag**, **tBodyGyroMag**, **tBodyGyroJerkMag**). <BR>
Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing 
**fBodyAcc-XYZ**, **fBodyAccJerk-XYZ**, **fBodyGyro-XYZ**, **fBodyAccJerkMag**, **fBodyGyroMag**, 
**fBodyGyroJerkMag**. (Note the 'f' to indicate frequency domain signals). <BR>

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.<BR>

tBodyAcc-XYZ<BR>
tGravityAcc-XYZ<BR>
tBodyAccJerk-XYZ<BR>
tBodyGyro-XYZ<BR>
tBodyGyroJerk-XYZ<BR>
tBodyAccMag<BR>
tGravityAccMag<BR>
tBodyAccJerkMag<BR>
tBodyGyroMag<BR>
tBodyGyroJerkMag<BR>
fBodyAcc-XYZ<BR>
fBodyAccJerk-XYZ<BR>
fBodyGyro-XYZ<BR>
fBodyAccMag<BR>
fBodyAccJerkMag<BR>
fBodyGyroMag<BR>
fBodyGyroJerkMag<BR>

The set of variables that were estimated from these signals are: <BR>
<BR>
mean(): Mean value<BR>
std(): Standard deviation<BR>

*there are other calculations in the source which have been ignored as part of the
data tyding process*<BR>

A complete list of all attributes are as follows:<BR>

tBodyAcc-mean()-X       <BR>
tBodyAcc-mean()-Y      <BR>
tBodyAcc-mean()-Z       <BR>
tBodyAcc-std()-X       <BR>
tBodyAcc-std()-Y        <BR>
tBodyAcc-std()-Z       <BR>
tGravityAcc-mean()-X    <BR>
tGravityAcc-mean()-Y   <BR>
tGravityAcc-mean()-Z    <BR>
tGravityAcc-std()-X    <BR>
tGravityAcc-std()-Y     <BR>
tGravityAcc-std()-Z    <BR>
tBodyAccJerk-mean()-X   <BR>
tBodyAccJerk-mean()-Y  <BR>
tBodyAccJerk-mean()-Z   <BR>
tBodyAccJerk-std()-X   <BR>
tBodyAccJerk-std()-Y    <BR>
tBodyAccJerk-std()-Z   <BR>
tBodyGyro-mean()-X      <BR>
tBodyGyro-mean()-Y     <BR>
tBodyGyro-mean()-Z      <BR>
tBodyGyro-std()-X      <BR>
tBodyGyro-std()-Y       <BR>
tBodyGyro-std()-Z      <BR>
tBodyGyroJerk-mean()-X  <BR>
tBodyGyroJerk-mean()-Y <BR>
tBodyGyroJerk-mean()-Z  <BR>
tBodyGyroJerk-std()-X  <BR>
tBodyGyroJerk-std()-Y   <BR>
tBodyGyroJerk-std()-Z  <BR>
tBodyAccMag-mean()      <BR>
tBodyAccMag-std()      <BR>
tGravityAccMag-mean()   <BR>
tGravityAccMag-std()   <BR>
tBodyAccJerkMag-mean()  <BR>
tBodyAccJerkMag-std()  <BR>
tBodyGyroMag-mean()     <BR>
tBodyGyroMag-std()     <BR>
tBodyGyroJerkMag-mean() <BR>
tBodyGyroJerkMag-std() <BR>
fBodyAcc-mean()-X       <BR>
fBodyAcc-mean()-Y      <BR>
fBodyAcc-mean()-Z       <BR>
fBodyAcc-std()-X       <BR>
fBodyAcc-std()-Y        <BR>
fBodyAcc-std()-Z       <BR>
fBodyAccJerk-mean()-X   <BR>
fBodyAccJerk-mean()-Y  <BR>
fBodyAccJerk-mean()-Z   <BR>
fBodyAccJerk-std()-X   <BR>
fBodyAccJerk-std()-Y    <BR>
fBodyAccJerk-std()-Z   <BR>
fBodyGyro-mean()-X      <BR>
fBodyGyro-mean()-Y     <BR>
fBodyGyro-mean()-Z      <BR>
fBodyGyro-std()-X      <BR>
fBodyGyro-std()-Y       <BR>
fBodyGyro-std()-Z      <BR>
fBodyAccMag-mean()      <BR>
fBodyAccMag-std()      <BR>
fBodyAccJerkMag-mean()  <BR>
fBodyAccJerkMag-std()  <BR>
fBodyGyroMag-mean()     <BR>
fBodyGyroMag-std()     <BR>
fBodyGyroJerkMag-mean() <BR>
fBodyGyroJerkMag-std()  <BR><BR>
  
The details about the cleaning process have been mentioned in ReadMe.md.<BR>
This includes the issues in the original data and the steps taken for the cleaning.<BR><BR>
  
END OF DOCUMENT
