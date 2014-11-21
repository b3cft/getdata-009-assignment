require(dplyr)

# You should create one R script called run_analysis.R that does the following.

# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names.
# 5. From the data set in step 4, creates a second, independent tidy data  set with the average of each variable for each activity and each subject.

# Good luck!

run_analysis <- function(all=NULL) {
    # Complete step 1 - merge all the test and train data into
    # one data set. See merge_data() function for more details.
    if (is.null(all)) {
        all <- merge_data()
    }

    # Complete step 2. Extract all the mean() and std() measurements
    # It isn't stated but we must have subject and activity for step 5.
    means_and_stds <- all %>% select(1, 2, contains("mean.."), contains("std.."))

    # Tidy up the column names
    colnames(means_and_stds) <- gsub("_$", "", gsub("\\.+","\\_",tolower(colnames(means_and_stds))))

    # get the result required for step 5
    means_and_stds %>%
        group_by(subject, activity) %>%
        summarise_each(funs(mean), -subject, -activity)
}

merge_data <- function () {

    # Load the featutres, which are our column names for the test and train data.
    # Only need the second column with the actual names in.
    features <- read.table('UCI HAR Dataset/features.txt', header=F)[,2]
    # Load the activity lables, not as a factor but as a character array for setting factors in the data set
    activities <- read.table('UCI HAR Dataset/activity_labels.txt', header=F, stringsAsFactors = F)[,2]

    # Load the subjects for the test data. Adding "subject" as the column name.
    Subjects_test <- read.table('UCI HAR Dataset/test/subject_test.txt', header=F, col.names = c("subject"))
    # Load the activities the subjects were undertaking during the test. Add "activity" as the column name.
    Activities_test <- read.table('UCI HAR Dataset/test/y_test.txt', header=F, col.names =c("activity"))
    # Load the actual test data, using the features vector as the column name. Satisfies step 3.
    X_test <- read.table('UCI HAR Dataset/test/X_test.txt', header = F, col.names = features)

    # Load the subjects for the test data. Adding "subject" as the column name.
    Subjects_train <- read.table('UCI HAR Dataset/train//subject_train.txt', header=F, col.names = c("subject"))
    # Load the activities the subjects were undertaking during the test. Add "activity" as the column name.
    Activities_train<- read.table('UCI HAR Dataset/train/y_train.txt', header=F, col.names =c("activity"))
    # Load the actual training data, using the features vector as the column name. Satisfies step 3.
    X_train <- read.table('UCI HAR Dataset/train//X_train.txt', header = F, col.names = features)

    # merge all the data sets
    all <- rbind(cbind(Subjects_test, Activities_test, X_test), cbind(Subjects_train, Activities_train, X_train))

    # Convert the activites to a factor and add the labels
    # This is step 4, but makes sense to do it here.
    all$activity <- as.factor(all$activity)
    levels(all$activity) <- activities

    #return everything
    all
}