################################################################################
#################### Getting and Cleaning Data #################################
#########################   Course Projecct   ##################################
################################################################################
### Data Download from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip ########################
### extract in your local working directory ###################################

################################## Task 1  ###################################
## Read data sets and combine
## Merges the training and the test sets to create one data set.
train.x.train <- read.table('./train/X_train.txt')
test.x.test <- read.table('./test/X_test.txt')
x <- rbind(train.x.train, test.x.test)
rm(train.x.train)
rm(test.x.test)

train.subject.train <- read.table('./train/subject_train.txt')
test.subject.test <- read.table('./test/subject_test.txt')
subj <- rbind(train.subject.train, test.subject.test)
rm(train.subject.train)
rm(test.subject.test)

train.y.train <- read.table('./train/y_train.txt')
test.y.test <- read.table('./test/y_test.txt')
y <- rbind(train.y.train, test.y.test)
rm(train.y.train)
rm(test.y.test)

################################## Task 2  ###################################
# Extracts only the measurements on the mean and standard deviation for each measurement. 
features <- read.table('features.txt')
mean.std <- grep("-mean\\(\\)|-std\\(\\)", features[, 2])
x.mean.std <- x[, mean.std]

# Uses descriptive activity names to name the activities in the data set
names(x.mean.std) <- features[mean.std, 2]
names(x.mean.std) <- tolower(names(x.mean.std)) 
names(x.mean.std) <- gsub("\\(|\\)", "", names(x.mean.std))

################################## Task 3  ###################################
activities <- read.table('activity_labels.txt')
activities[, 2] <- tolower(as.character(activities[, 2]))
activities[, 2] <- gsub("_", "", activities[, 2])

y[, 1] = activities[y[, 1], 2]
colnames(y) <- 'activity'
colnames(subj) <- 'subject'

################################## Task 4  ###################################
# Appropriately labels the data set with descriptive activity names.
data <- cbind(subj, x.mean.std, y)
str(data)
write.table(data, 'mean-std.txt', row.names = F)

################################## Task 5  ###################################
# Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
average.tidy.data <- aggregate(x=data, by=list(activities=data$activity, subj=data$subject), FUN=mean)
average.tidy.data <- average.tidy.data[, !(colnames(average.tidy.data) %in% c("subj", "activity"))]
str(average.tidy.data)
write.table(average.tidy.data, 'tidy-data.txt', row.names = F)

