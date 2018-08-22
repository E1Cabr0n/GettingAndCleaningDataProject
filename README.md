# Coursera Getting and Cleaning Data course project

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to 
prepare tidy data that can be used for later analysis.

One of the most exciting areas in all of data science right now is wearable computing. Companies like Fitbit, Nike, and 
Jawbone Up are racing to develop the most advanced algorithms to attract new users.

The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S 
smartphone.

The repository contains the following files:

* README.md - the current file, provides an overview of the projects, dataset description and its cleaning steps 
* tidy_data.txt - contains the cleaned data set, the result of this project
* CodeBook.md - the code book, describes the content of the tidy data set
* run_analysis.R - the R script used for the dataset cleaning

## Sudy design

The dataset source was obtained from the [Human Activity Recognition Using Smartphones Data Set]
(http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
The data for the project were taken here:
[getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

The data were collected by the nex way:

> The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
> Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) 
> wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 
> 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been 
> video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, 
> where 70% of the volunteers was selected for generating the training data and 30% the test data. 
> 
> The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in 
> fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which 
> has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration 
> and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz 
> cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time 
> and frequency domain.

The data set was created by nerging training and test datasets. The mean and standart deviation measurements were selected for each measurement
(79 variables extracted from the original 561). Then the measurements were averaged for each subject and activity and the 
result was saved in the final data set (tydy_data.txt).

## The dataset creating

The R script run_analysis.R was used to create the tidy data set. The script gets the data source and transoforms it 
according the next steps:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set (tidy_data.txt) with the average of each variable for each activity and each subject.

The script run_analysis.R was run by R version 3.5.1 on Windows 10 64-bit and uses dyplr package 0.7.6