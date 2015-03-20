# Loading dlpyr and knitr packages.
library(dplyr)
library(knitr)

# Creating file for the dataset.
if(!file.exists("~/Desktop/dataset")) {
  dir.create("~/Desktop/dataset")  
}

# Downloading the dataset.
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
destfile <- "~/Desktop/dataset/Dataset.zip"
download.file(url, destfile, method = "curl")

# Unzipping the dataset.
unzip(zipfile="~/Desktop/dataset/Dataset.zip", exdir="~/Desktop/dataset")

# Merging the training and the test sets. Activity <- y, subject <- subject, features <- x
X_test <- read.table("~/Desktop/dataset/UCI HAR Dataset/test/X_test.txt",
                     header = FALSE)
X_train <- read.table("~/Desktop/dataset/UCI HAR Dataset/train/X_train.txt",
                      header = FALSE)
Y_test <- read.table("~/Desktop/dataset/UCI HAR Dataset/test/y_test.txt",
                     header = FALSE)
Y_train <- read.table("~/Desktop/dataset/UCI HAR Dataset/train/y_train.txt",
                      header = FALSE)
subject_test <- read.table("~/Desktop/dataset/UCI HAR Dataset/test/subject_test.txt",
                     header = FALSE)
subject_train <- read.table("~/Desktop/dataset/UCI HAR Dataset/train/subject_train.txt",
                      header = FALSE)

merged_X <- rbind(X_test, X_train)
merged_Y <- rbind(Y_test, Y_train)
merged_subject <- rbind(subject_test, subject_train)

# Reading the features and activity labels.
features <- read.table("~/Desktop/dataset/UCI HAR Dataset/features.txt",
                            header = FALSE)
activity_labels <- read.table("~/Desktop/dataset/UCI HAR Dataset/activity_labels.txt",
                       header = FALSE)
# Removing IDs.
features <- features[, 2]
activity_labels <- activity_labels[, 2]

# Labels the dataset with descriptive variable names.
names(merged_X) <- features
names(merged_Y) <- c("Activity")
names(merged_subject) <- c("Subject")

# Extracting the measurements on the mean and standart deviation.
# Getting the column numbers of related measurements.
related_columns <- c()
for(i in 1:length(features)) {
  if (length(grep("mean", features[i]) > 0) || length(grep("std", features[i]) > 0)) {
    related_columns <- append(related_columns, i)
  }
}

# Extracting related columns from merged data.
merged_X <- merged_X[, related_columns]

# Naming the activities.
for(i in 1:nrow(merged_Y)) {
  merged_Y[i, 1] <- activity_labels[merged_Y[i, 1]]
}

# Getting the average of each variable.
total_mean <- rowMeans(merged_X)
# Creating a column for total mean.
merged_X["Total_Mean"] <- 0
merged_X$Total_Mean <- total_mean

# Merging subject, activity and feature datasets together.
merged_data <- cbind(merged_X, merged_Y)
merged_data <- cbind(merged_data, merged_subject)

# Writing the tidy dataset and codebook.
write.table(merged_data, file = "~/Desktop/newdataset.txt", row.name = FALSE)