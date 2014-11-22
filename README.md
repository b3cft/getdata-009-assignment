# Getting and Cleaning Data - Coursera Assignment

## The Task
The purpose of this assignment is to demonstrate the ability to collect, work with, and clean a data set.
The goal is to prepare tidy data that can be used for later analysis.

## The Data

One of the most exciting areas in all of data science right now is wearable computing.
Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. 
The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. 
A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

*Taken from the downloaded data readme*

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

## The Analysis
In this repo there is a script called run_analysis.R
This script performs the following steps required by the assignment

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

### In more detail

Once you have downloaded the referenced dataset above and decompressed it into the working directoy where the run_analysis.R script resides you should be able to load and run the run_analysis function.

This will firstly merge the training and test data, adding the correct column names from the features file.

Then it converts the activity column to a factor and loads the activity names from the acivity_labels file.

This data can be separately returned by calling the 'merge_data' function from the run_analysis.R script.

The 'run_analysis' function then subsets the data from the full data set.
The subsetted data is the first two columns which contain the subject (person in the test) and the activity they were performing, then any column which has the column name containing "mean.." or "std.." indicating from the orginal dataset those mean and standard deviations calculations of the raw data.

The subsetted data is then grouped by subject and activity, then all the data columns summarised with the mean function.

## License
The dataset used in this assignment is hereby ackowledged as referencing the following [1]

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

The dataset referenced above is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.
