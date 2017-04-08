
######################################
# 1. Merges the training and the test sets to create one data set

library(reshape2)

setwd("~/Desktop/Coursera Specialization")

fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile = "UCI_database", method = "curl")
unzip("UCI_database") 

train <- read.table("UCI HAR Dataset/train/X_train.txt")
train_labels <- read.table("UCI HAR Dataset/train/y_train.txt")
train_subjects <- read.table("UCI HAR Dataset/train/subject_train.txt")
train_all <- cbind(train_subjects, train_labels, train)

test <- read.table("UCI HAR Dataset/test/X_test.txt")
test_labels <- read.table("UCI HAR Dataset/test/y_test.txt")
test_subjects <- read.table("UCI HAR Dataset/test/subject_test.txt")
test_all <- cbind(test_subjects, test_labels, test)

activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")
features <- read.table("UCI HAR Dataset/features.txt")
features_names <- as.character(features[,2])

merge_all <- rbind(train_all, test_all)
colnames(merge_all) <- c("subjects", "activities", features_names)

######################################
# 2. Extracts only the measurements 
#    on the mean and standard deviation for each measurement.
 

new_data <- merge_all[grep("-(mean|std)\\(\\)", colnames(merge_all), 
                           value = TRUE)]
new_data <- cbind(merge_all[,1:2], new_data)


######################################
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names.
#  Following David Hood post for final assignment
# "https://thoughtfulbloke.wordpress.com/2015/09/09/getting-and-cleaning-the-assignment/"

new_data$activities<- factor(new_data$activities, levels = activity_labels[,1],
                    labels = activity_labels[,2])

new_tidy <- melt(new_data, id = c("subjects", "activities"))

######################################

# From the data set in step 4, creates a second,
# independent tidy data set with the average of each variable
# for each activity and each subject.


tidy_data <- tidied <- dcast(new_tidy, subjects + activities ~ variable, mean)
write.table(tidy_data, 
            file= "tidy_data.txt",
            quote = FALSE,
            row.names = FALSE, 
            col.names = TRUE
            )





