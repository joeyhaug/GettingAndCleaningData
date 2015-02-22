This code book is for my tidydata.txt.

The variables in this data set are subjects (1 to 30) and activities (Standing, Sitting, laying, walking, upstairs, and downstairs).

I only used the data for the means and standard deviation. 
In order to do this I used the grep commandto delete the columns that had the mean frequency.

These signals were used to estimate variables of the feature vector for each pattern: 
‘-XYZ’ is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ tGravityAcc-XYZ tBodyAccJerk-XYZ tBodyGyro-XYZ tBodyGyroJerk-XYZ tBodyAccMag tGravityAccMag tBodyAccJerkMag 
tBodyGyroMag tBodyGyroJerkMag fBodyAcc-XYZ fBodyAccJerk-XYZ fBodyGyro-XYZ fBodyAccMag fBodyAccJerkMag fBodyGyroMag 
fBodyGyroJerkMag

For all combinations of subject and activity type, the average of both the means and standard deviations for multiple trials for each of these trials where reported 
in each row.
