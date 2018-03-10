#Course 3 Week 4 Project

#Load required packages
library(dplyr)
library(data.table)

#Read in data

subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
x_train <- read.table("UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("UCI HAR Dataset/train/y_train.txt")

subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
x_test <- read.table("UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")

features <- read.table("UCI HAR Dataset/features.txt")
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")

#Reassign the activity numbers in the data to the new activity labels

y_test[] <- activity_labels$V2[match(unlist(y_test), activity_labels$V1)]
y_train[] <- activity_labels$V2[match(unlist(y_train), activity_labels$V1)]

#Bind train x/y data, test x/y data, and the test subjects and train subjects to the test and train data
xy_train <- cbind(subject_train, y_train, x_train)
xy_test <- cbind(subject_test, y_test, x_test)

#Stack the two datasets, and then use the feature.txt file to name the columns

combined <- rbind(xy_train, xy_test)

features2 <- paste(features$V1, features$V2, sep="") 

cnames <- c("subject", "activity", features2) 

setnames(combined, 1:563, cnames)


#Extracts only the measurements on the mean and standard deviation for each measurement

mean_std <- select(combined, subject, activity, contains("mean()"), contains("std()"))

#Appropriately labels the data set with descriptive variable names

names(mean_std) <- gsub('[[:digit:]]+', '', names(mean_std))
names(mean_std) <- gsub("\\(|\\)", "", names(mean_std), perl  = TRUE)
names(mean_std) <- gsub("^t", "time", names(mean_std))
names(mean_std) <- gsub("^f", "frequency", names(mean_std))
names(mean_std) <- gsub("Acc", "Accelerometer", names(mean_std))
names(mean_std) <- gsub("Gyro", "Gyroscope", names(mean_std))
names(mean_std) <- gsub("Mag", "Magnitude", names(mean_std))
names(mean_std) <- gsub("BodyBody", "Body", names(mean_std))

#creates a second, independent tidy data set with the average of each variable for each activity and each subject.

aggdata <- mean_std %>% group_by(activity, subject) %>% summarise_all(mean) 

#Save Tidy Data set as text file
write.table(aggdata, "TidyDataSet.txt", row.name=FALSE)



