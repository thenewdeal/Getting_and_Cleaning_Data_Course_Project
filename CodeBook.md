Getting and Cleaning Data Course Project 
CodeBook.md

Preface
Wearable computers (or wearables) are miniature electronic devices which is able to be worn by the bearer on top of clothing. The purpose of this project is to present an individual’s ability to work with and clean a Wearable computers data set.

Study Design and Data Processing

1. Collection of the raw data
Human Activity Recognition Using Smartphones Dataset is the original source of this data collection with the download address of https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip. 

This dataset is an experiment has been conducted in a group of 30 people where each one of them is wearing a smartphone on the waist. With the smartphone’s embedded accelerometer and gyroscope, the researcher captured 3-axial linear acceleration and angular velocity data while those 30 people were perform the following six activities: walking, walking_upstairs, walking_downstairs, sitting, standing, and laying.

The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

2. Dataset. The dataset includes the following files:
　　2.1: 'README.txt'
　　2.2: ‘features_info.txt': Shows information about the variables used on the feature vector. The features selected for        this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. 
　　2.3: 'features.txt': List of all 561 features, for example 1 tBodyAcc-mean()-X
　　2 tBodyAcc-mean()-Y3 tBodyAcc-mean()-Z
　　2.4: 'activity_labels.txt': Links the class labels with their activity name. For example, 
　　1WALKING2WALKING_UPSTAIRS3WALKING_DOWNSTAIRS4SITTIN	G5STANDING6LAYING
　　2.5: 'train/X_train.txt': Training set. Total 7352 obs with 561 variables
　　2.6: 'train/y_train.txt': Training labels. Total 7352 obs with 1 variables
　　2.7: 'test/X_test.txt': Test set. Total 2947 obs with 561 variables
　　2.8: 'test/y_test.txt': Test labels. Total 2947 obs with 1 variables
　　2.9: ‘subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30

Project Description
This CodeBook is for the course project of Getting and Cleaning Data, where a student is requested to create one R script called run_analysis.R that does the following. 
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
The tidy data set created in step 5 of the instructions is upload as a txt file, named “tidy-data.txt.”

Tidy Data Creation
1. Unzip the dataset source (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) and put in your local working directory for R
2. Unzip that file then you should see a folder, named “UCI HAR Dataset” with several txt files and two sub-folders, test and train
3. Create a R script file and name it as ‘run_analysis.R’
4. Reads a file in table format and creates a data frame from it, read.table()
5. Combine by rows to form a new dataset, rbind()
The above functions produces 10,299 obs
6. Remove unneeded objects from Global Environment, with rm() function
Search for matches to argument, mean and std, in this exercise, to extract required data, grep()
The above function generates required measurements of 66 (66 out of 561 attributes are measurements on the mean and stand deviation)
7. Apply descriptive activity names on activity_labels.txt 
8. Character Translation using descriptive activity names to name the activities in the data set, tolower()
9. Replace all matches of a string with gsub() function
10. Retrieve the column names of a matrix-like object using colnames() function
11. Write data frame to a file with write.table() function (File Name: mean-std.txt)
12. Create a second dataset by compute average summary statistics of each measurement for each activity using aggregate() function
13. Write data frame to a file of “tidy-data.txt” and upload the output (File Name: tidy-data.txt)

Description of mean-std.txt 
Name: mean-std.txt
10299 obs and 68 variables
Variables:
"subject" "tbodyacc-mean-x" "tbodyacc-mean-y" "tbodyacc-mean-z" "tbodyacc-std-x" "tbodyacc-std-y" "tbodyacc-std-z" "tgravityacc-mean-x" "tgravityacc-mean-y" "tgravityacc-mean-z" "tgravityacc-std-x" "tgravityacc-std-y" "tgravityacc-std-z" "tbodyaccjerk-mean-x" "tbodyaccjerk-mean-y" "tbodyaccjerk-mean-z" "tbodyaccjerk-std-x" "tbodyaccjerk-std-y" "tbodyaccjerk-std-z" "tbodygyro-mean-x" "tbodygyro-mean-y" "tbodygyro-mean-z" "tbodygyro-std-x" "tbodygyro-std-y" "tbodygyro-std-z" "tbodygyrojerk-mean-x" "tbodygyrojerk-mean-y" "tbodygyrojerk-mean-z" "tbodygyrojerk-std-x" "tbodygyrojerk-std-y" "tbodygyrojerk-std-z" "tbodyaccmag-mean" "tbodyaccmag-std" "tgravityaccmag-mean" "tgravityaccmag-std" "tbodyaccjerkmag-mean" "tbodyaccjerkmag-std" "tbodygyromag-mean" "tbodygyromag-std" "tbodygyrojerkmag-mean" "tbodygyrojerkmag-std" "fbodyacc-mean-x" "fbodyacc-mean-y" "fbodyacc-mean-z" "fbodyacc-std-x" "fbodyacc-std-y" "fbodyacc-std-z" "fbodyaccjerk-mean-x" "fbodyaccjerk-mean-y" "fbodyaccjerk-mean-z" "fbodyaccjerk-std-x" "fbodyaccjerk-std-y" "fbodyaccjerk-std-z" "fbodygyro-mean-x" "fbodygyro-mean-y" "fbodygyro-mean-z" "fbodygyro-std-x" "fbodygyro-std-y" "fbodygyro-std-z" "fbodyaccmag-mean" "fbodyaccmag-std" "fbodybodyaccjerkmag-mean" "fbodybodyaccjerkmag-std" "fbodybodygyromag-mean" "fbodybodygyromag-std" "fbodybodygyrojerkmag-mean" "fbodybodygyrojerkmag-std" "activity"

Description of tidy-data.txt
Name: tidy-data.txt
180 obs and 68 variables
Variables:
"activities" "subject" "tbodyacc-mean-x" "tbodyacc-mean-y" "tbodyacc-mean-z" "tbodyacc-std-x" "tbodyacc-std-y" "tbodyacc-std-z" "tgravityacc-mean-x" "tgravityacc-mean-y" "tgravityacc-mean-z" "tgravityacc-std-x" "tgravityacc-std-y" "tgravityacc-std-z" "tbodyaccjerk-mean-x" "tbodyaccjerk-mean-y" "tbodyaccjerk-mean-z" "tbodyaccjerk-std-x" "tbodyaccjerk-std-y" "tbodyaccjerk-std-z" "tbodygyro-mean-x" "tbodygyro-mean-y" "tbodygyro-mean-z" "tbodygyro-std-x" "tbodygyro-std-y" "tbodygyro-std-z" "tbodygyrojerk-mean-x" "tbodygyrojerk-mean-y" "tbodygyrojerk-mean-z" "tbodygyrojerk-std-x" "tbodygyrojerk-std-y" "tbodygyrojerk-std-z" "tbodyaccmag-mean" "tbodyaccmag-std" "tgravityaccmag-mean" "tgravityaccmag-std" "tbodyaccjerkmag-mean" "tbodyaccjerkmag-std" "tbodygyromag-mean" "tbodygyromag-std" "tbodygyrojerkmag-mean" "tbodygyrojerkmag-std" "fbodyacc-mean-x" "fbodyacc-mean-y" "fbodyacc-mean-z" "fbodyacc-std-x" "fbodyacc-std-y" "fbodyacc-std-z" "fbodyaccjerk-mean-x" "fbodyaccjerk-mean-y" "fbodyaccjerk-mean-z" "fbodyaccjerk-std-x" "fbodyaccjerk-std-y" "fbodyaccjerk-std-z" "fbodygyro-mean-x" "fbodygyro-mean-y" "fbodygyro-mean-z" "fbodygyro-std-x" "fbodygyro-std-y" "fbodygyro-std-z" "fbodyaccmag-mean" "fbodyaccmag-std" "fbodybodyaccjerkmag-mean" "fbodybodyaccjerkmag-std" "fbodybodygyromag-mean" "fbodybodygyromag-std" "fbodybodygyrojerkmag-mean" "fbodybodygyrojerkmag-std"
