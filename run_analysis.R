library(dyplr)

#Step 0 - Prepears data
##Download and uzip data
datadir <- "data"
if (!file.exists(datadir)) {
  dir.create(datadir)
}
filename <- "getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(paste("https://d396qusza40orc.cloudfront.net/", filename, sep = ""),
              file.path(datadir, filename))
if(file.exists(file.path(datadir, filename))) {
  unzip(file.path(datadir, filename), exdir = datadir)
}
##read train and test data
datapath <- file.path(datadir, "UCI HAR Dataset")
##train data
subject_train <- read.table(file.path(datapath, "train", "subject_train.txt"))
values_train <- read.table(file.path(datapath, "train", "X_train.txt"))
activities_train <- read.table(file.path(datapath, "train", "y_train.txt"))
##test data
subject_test <- read.table(file.path(datapath, "test", "subject_test.txt"))
values_test <- read.table(file.path(datapath, "test", "X_test.txt"))
activities_test <- read.table(file.path(datapath, "test", "y_test.txt"))
##features
features <- read.table(file.path(datapath, "features.txt"), as.is = TRUE)
##activities
activities <- read.table(file.path(datapath, "activity_labels.txt"))
colnames(activities) <- c("id", "activityLabel")

# Step 1 - Merges the training and the test sets to create one data set
## merge all tables, set column names, remove the old tables

data <- rbind(cbind(subject_train, activities_train, values_train),cbind(subject_test, activities_test, values_test))
colnames(data) <- c("Subject", "Activity", features[,2])
rm(subject_train, activities_train, values_train, subject_test, activities_test, values_test, features)

# Step 3 - Uses descriptive activity names to name the activities in the data set
data$Activity <- factor(data$Activity, levels = activities[,1], labels = activities[,2])

# Step 4 - Appropriately labels the data set with descriptive variable names.
## Cleans up names
dataColNames <- colnames(data)
dataColNames <- gsub("mean\\(\\)|mean", "Mean", dataColNames)
dataColNames <- gsub("std\\(\\)", "StandartDeviation", dataColNames)
dataColNames <- gsub("^t", "time", dataColNames)
dataColNames <- gsub("^f", "frequency", dataColNames)
dataColNames <- gsub("Acc", "Acceleration", dataColNames)
dataColNames <- gsub("Mag", "Magnitude", dataColNames)
dataColNames <- gsub("Freq\\(\\)", "Frequency", dataColNames)
dataColNames <- gsub("Gyro", "Gyroscope", dataColNames)
## Removes special characters and typos
dataColNames <- gsub("-", "", dataColNames)
dataColNames <- gsub("BodyBody", "Body", dataColNames)
colnames(data) <- dataColNames

# Step 5 - From the data set in step 4, creates a second, independent tidy data set
#with the average of each variable for each activity and each subject.


dataMeans <- data %>% 
  group_by(Subject, Activity) %>%
  summarise_all(funs(mean))
write.table(dataMeans, file="tidy_data.txt",row.names = FALSE)

