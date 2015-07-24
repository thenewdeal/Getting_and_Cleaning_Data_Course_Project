# Getting_and_Cleaning_Data_Course_Project
This README file is for the course project of Getting and Cleaning Data Course. Student is requested to utilize a Wearable computers data set to merge data frames into a complete dataset. Then, extract only the measurements on the mean and standard deviation for each measurement. Once this task is finished, student should create a second, independent tidy data set with the average of each variable for each activity and each subject.

The original data is available to download from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

A R scrip is used with several base R functions. The R script is called run_analysis.R and performs the following tasks:
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. (File Name: mean-std.txt)
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject. (File Name: tidy-data.txt)

The run_analysis.R uses the following functions to achieve the requirements
1. read.table()
2. rbind()
3. grep()
4. tolower()
5. gsub()
6. colnames()
7. aggregate(), and
8. write.table()

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.


