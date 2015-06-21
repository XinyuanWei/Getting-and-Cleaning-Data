library(plyr)
# 1. Merges the training and the test sets to create one data set.
## read data
X_train <- read.table("train/X_train.txt")
y_train <- read.table("train/y_train.txt")
subject_train <- read.table("train/subject_train.txt")

X_test <- read.table("test/X_test.txt")
y_test <- read.table("test/y_test.txt")
subject_test <- read.table("test/subject_test.txt")
## merges
X_merged <- rbind(X_train, X_test)
y_merged <- rbind(y_train, y_test)
subject_merged <- rbind(subject_train, subject_test)
# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
## read data
features <- read.table("features.txt")
features_InNeed <- grep("-(mean|std)\\(\\)",features[,2])
X_InNeed <- X_merged[,features_InNeed]
names(X_InNeed) <- features[features_InNeed, 2]
# 3. Uses descriptive activity names to name the activities in the data set
activity_labels <- read.table("activity_labels.txt")
y_merged[, 1] <- activity_labels[y_merged[, 1], 2]
names(y_merged) <- "activity"
# 4. Appropriately labels the data set with descriptive variable names.
names(subject_merged) <- "subject"
data <- cbind(X_merged, y_merged, subject_merged)
# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
data_aver <- ddply(data, .(subject,activity), function(x) colMeans(x[, 1:66]))
write.table(data_aver, "average_data.txt", row.name = FALSE)
