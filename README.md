# Getting-and-Cleaning-Data-Week-4-Project

This readme document describes step by step how to prepare and clean the dataset presented in the Course Project.

Unzip the source file with the data in a local directory of your machine (you can find the zip file here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

Copy the "run_analysis.R" script in your R working directory.

Make sure that all the files your are going to read from the unzipped folder, are placed in your working directory.

- features.txt
- activity_labels.txt
- X_train.txt
- subject_train.txt
- y_train.txt
- X_test.txt
- subject_test.txt
- y_test.txt

Run the "run_analysis.R" script.

The run_analysis.R does the following:
1. Merges the training and test sets
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
