# Getting and Cleaning Data Course Project

## Review criteria 
The submitted data set is tidy.
The Github repo contains the required scripts.
GitHub contains a code book that modifies and updates the available codebooks with the data to indicate all the variables and summaries calculated, along with units, and any other relevant information.
The README that explains the analysis files is clear and understandable.
The work submitted for this project is the work of the student who submitted it.

## Instructions
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

You should create one R script called run_analysis.R that does the following.

* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement.
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive variable names.
* From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Input
Human Activity Recognition Using Smartphones Dataset: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## run_analysis script
The script can be run as long as the Human Activity Recognition Using Smartphones Dataset is in your working directory. It takes the input data and produces an text file output.

1. The script first loads the required packages (dplyr and data.table)     
2. The files from the input data folder in your working directory are read into R
3. Activity numbers in the data are reassigned to the new activity labels
4. Train x/y data, test x/y data, and the test subjects and train subjects are binded to the test and train data
5. The two datasets are stacked, and then the feature.txt file is used to name the columns
6. Only the measurements on the mean and standard deviation for each measurement are extracted from the merged data set
7. The script then appropriately labels the data set with descriptive variable names
8. creates a second, independent tidy data set with the average of each variable for each activity and each subject
9. The resulting independent tidy data set is saved as text file using write.table, row.name = FALSE

## Output
TidyDataSet.txt: tidy data set with the average of each variable for each activity and each subject 

* When reading file into R use read.table with header = TRUE


## Code Book
CodeBook.md: a code book that describes the variables, the data, and any transformations or work that was performed to clean up the data# Getting-and-Cleaning-Data-Course-Project
