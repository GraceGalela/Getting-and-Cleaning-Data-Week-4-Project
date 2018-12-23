# Getting and Cleaning Data Week 4 Project
# run_analysis.R

#nstall.packages("dplyr")
#Install required packages
library(plyr)
library(dplyr)

# READ train data
XTrain <- read.table("./train/X_train.txt")
YTrain <- read.table("./train/y_train.txt")
SubTrain <- read.table("./train/subject_train.txt")

# READ test data
XTest <- read.table("./test/X_test.txt")
YTest <- read.table("./test/y_test.txt")
SubTest <- read.table("./test/subject_test.txt")

# READ data description
variables <- read.table("./features.txt")

# READ activity labels
act_labels <- read.table("./activity_labels.txt")

# STEP 1. Merges the training and test sets
XData <- rbind(XTrain, XTest)
YData <- rbind(YTrain, YTest)
SubjectsData <- rbind(SubTrain, SubTest)

# STEP 2. Extracts only the measurements on the mean and standard deviation for each measurement.
MeanAndStd <- variables[grep("mean\\(\\)|std\\(\\)",variables[,2]),]
XData <- XData[,MeanAndStd[,1]]

# STEP 3. Uses descriptive activity names to name the activities in the data set
colnames(YData) <- "activity"
YData$activitylabel <- factor(YData$activity, labels = as.character(act_labels[,2]))
act_labels <- YData[,-1]

# STEP 4. Labels the data set with descriptive variable names.
colnames(XData) <- variables[MeanAndStd[,1],2]

# STEP 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
colnames(SubjectsData) <- "subject"
TidyData <- cbind(XData, act_labels, SubjectsData)
TidyData_mean <- TidyData %>% group_by(act_labels, subject) %>% summarize_all(funs(mean))
# Save to a local file
write.table(TidyData_mean, file = "./tidydataset.txt", row.names = FALSE, col.names = TRUE)