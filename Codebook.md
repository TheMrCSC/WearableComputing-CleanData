
## Code Book

This document contains meaning for all the columns mentioned in the tidy file 
created as part of this project. There are 68 columns and 10299 observations 
in the data file there are 68 columns and 35 observations. This file contains 
the average data which is grouped by subject and activity.
Even though the data it self is different, the columns and their definition is
the same.  

This code book contains the column definitions for the averaged dataset.  
***
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
redued to include only required information*<BR><BR>

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
fBodyGyroJerkMag<BR><BR>

The set of variables that were estimated from these signals are: <BR>
<BR>
mean(): Mean value<BR>
std(): Standard deviation<BR><BR>

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
fBodyGyroJerkMag-std()  <BR>

