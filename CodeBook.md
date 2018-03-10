# Code Book
This codebook summarizes the resulting variables in TidyDataSet.txt

## Data
The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The initial data set can be found here:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Variables
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals timeAcc-XYZ and timeGyro-XYZ. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (timeBodyAcc-XYZ and timeGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (timeBodyAccJerk-XYZ and timeBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (timeBodyAccMag, timeGravityAccMag, timeBodyAccJerkMag, timeBodyGyroMag, timeBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing frequencyBodyAcc-XYZ, frequencyBodyAccJerk-XYZ, frequencyBodyGyro-XYZ, frequencyBodyAccJerkMag, frequencyBodyGyroMag, frequencyBodyGyroJerkMag. 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The mean and standard deviation (std) were estimated from these signals and were then averaged by each variable for each activity and each subject. The resulting set of variables are:

* timeBodyAcc-mean-XYZ
* timeGravityAcc-mean-XYZ
* timeBodyAccJerk-mean-XYZ
* timeBodyGyro-mean-XYZ
* timeBodyGyroJerk-mean-XYZ
* timeBodyAccMag-mean
* timeGravityAccMag-mean
* timeBodyAccJerkMag-mean
* timeBodyGyroMag-mean
* timeBodyGyroJerkMag-mean
* frequencyBodyAcc-mean-XYZ
* frequencyBodyAccJerk-mean-XYZ
* frequencyBodyGyro-mean-XYZ
* frequencyBodyAccMag-mean
* frequencyBodyAccJerkMag-mean
* frequencyBodyGyroMag-mean
* frequencyBodyGyroJerkMag-mean

* timeBodyAcc-std-XYZ
* timeGravityAcc-std-XYZ
* timeBodyAccJerk-std-XYZ
* timeBodyGyro-std-XYZ
* timeBodyGyroJerk-std-XYZ
* timeBodyAccMag-std
* timeGravityAccMag-std
* timeBodyAccJerkMag-std
* timeBodyGyroMag-std
* timeBodyGyroJerkMag-std
* frequencyBodyAcc-std-XYZ
* frequencyBodyAccJerk-std-XYZ
* frequencyBodyGyro-std-XYZ
* frequencyBodyAccMag-std
* frequencyBodyAccJerkMag-std
* frequencyBodyGyroJerkMag-std

### Identifiers
* subjectject - The ID of the test subject

* activity - The type of activity performed when the corresponding measurements were taken

	1. Walking
	2. Walking Upstairs
	3. Walking Downstairs
	4. Sitting
	5. Standing
	6. Laying

## Transformations
The initial data set included the following files:

* features.txt: List of all features.
* activity_labels.txt: Links the class labels with their activity name.
* train/X_train.txt: Training set.
* train/y_train.txt: Training labels.
* test/X_test.txt: Test set.
* test/y_test.txt: Test labels. 
* train/subject_train.txt: Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.
* test/subject_test.txt: Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.

These files were:

1. Merged to create one data set'
2. Subsetted to include only the mean and standard deviation for each measurement'
3. Replaced the activity code with descripte activity names'
4. Labeled with descriptive variable names'
5. The resulting data set was then summarized by the average of each variable for each activity and each subject'
