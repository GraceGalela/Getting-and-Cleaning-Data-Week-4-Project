#CodeBook.md

This code book describes the variables, the data, and any transformations or 
work that was performed to clean up the data in TidyDataSet.txt after executing 
run_analysis.R script.

The goal is to prepare tidy data that can be used for later analysis by 
creating a R script called run_analysis.R that does the following:

1. Merges the training and test sets
that were loaded:
 - X_train.txt
 - y_train.txt
 - subject_train.txt
 - X_test.txt
 - y_test.txt
 - subject_test.txt
 - features.txt
 - activity_labels.txt

2. Extracts only the measurements on the mean and standard deviation for each measurement - gets the mean and std of each variables in the data

3. Uses descriptive activity names to name the activities in the data set 

4. Labels the data set with descriptive variable names. 
 - used the activity labels for the activity

5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
 - saved it to a local file named tidydataset.txt

The data set composed of:
rows: 180 observations 
columns: 88 variables

 - Column 1 is the activity labels
 - Column 2 is the subject id
 - Columns 3-88 the mean and standard deviation numeric variables in the data set
