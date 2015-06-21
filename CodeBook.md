#CodeBook
##Variables
* X_train--data read from X_train.txt
* y_train--data read from y_train.txt
* subject_train--data read from subject_train.txt
* X_test--data read from X_test.txt
* y_test--data read from y_test.txt
* subject_test--data read from subject_test.txt
* X_merged -- merged data from X_train and X_test
* y_merged -- merged data from y_train and y_test
* subject_merged -- merged data from subject_train and subject_test
* features-- data read from features.txt contains correct names for the dataset X_merged
* features_InNeed -- the numeric vector used to extract the columns with the mean and standard deviation measues
* X_InNeed -- columns with the mean and standard deviation measures taken from the whole dataset
* activity_labels read from activity_labels.txt
* data--merged from X_merged, y_merged and subject_merged
* data_aver average data

##Data<br />
downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

##run_analysis.R
* 1. Merges the training and the test sets to create one data set.<br />
Using the function rbind()
* 2. Extracts only the measurements on the mean and standard deviation for each measurement. <br />
* 3. Uses descriptive activity names to name the activities in the data set<br />
* 4  Appropriately labels the data set with descriptive variable names. <br />
* 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.<br />
