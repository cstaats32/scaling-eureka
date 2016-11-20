# run_analysis.R

# Reads in table features.txt containing list of all features and create a list of 
# feature descriptions to be used as descriptive column names for the test and 
# train data.
# Also reads in activity_labels.txt to be used to assign the descriptive labels
# for the six activities.

# read in table containing list of all features 
features <- read.table("features.txt", sep=" ", col.names=c("fnum","featuredesc"))
head(features,6)

# put the column with the features descriptions into a character vector
# to be used as column names for test and train datasets
featurev <- as.character(features[,c("featuredesc")])

# replace all occurences of close parenthesis with "nothing"
featurev <- gsub(")","",featurev)
# replace all occurences of open parenthesis with "nothing"
featurev <- gsub("\\(","",featurev)
# replace all occurences of dash with underscore
featurev <- gsub("-","_",featurev)
# replace all occurences of comma with underscore
featurev <- gsub(",","_",featurev)


# read in table to match activity labels and activity names
activity_labels <- read.table("activity_labels.txt", sep = " ",
                              col.names=c("activity_num","activity_label"))


# read in table with subjects for test data
subject_test <- read.table("./test/subject_test.txt", col.names=c("subject"))
head(subject_test,6)
dim(subject_test)

# activity labels for test data
activity <- read.table("./test/y_test.txt", col.names=c("activity_num"))
head(activity,6)

# read in test set using features list as column names
features_test <- read.table("./test/X_test.txt",  strip.white = TRUE,
                            col.names=featurev)
head(features_test,3)
tail(features_test,3)
dim(features_test)

# read in inertial signals for test data
intervals <- 1:128

signallist <- c("total_acc_z", "total_acc_y", "total_acc_x",
                "body_acc_z", "body_acc_y", "body_acc_x",
                "body_gyro_z", "body_gyro_y", "body_gyro_x")

testtrain <- "test"
# read in the 9 inertial signal files
# assign column names based on list of signals and integers 1-128
# for measurements over time
for (i in 1:9) {
  meastype = signallist[i]
  intervalst <- paste(meastype,intervals,sep="_")
  filename <- paste("./", testtrain, "/Inertial Signals/", signallist[i],
                    "_", testtrain, ".txt", sep="")
  inertia1 <- read.table(filename, strip.white = TRUE, col.names=intervalst)
  if(i == 1) {
    inertiaf <- inertia1
  } else {
    inertiaf <- cbind(inertiaf, inertia1)
  }
  
}

# Combine together all elements of test data: subject, activity labels,
# feature vector, and inertial signals

testdata <- cbind(testtrain, subject_test, activity, features_test, inertiaf)
dim(testdata)


# merge activity labels for test data with activity names file
testdata2 <- merge(testdata, activity_labels, by.x= "activity_num",
                   by.y = "activity_num", sort = FALSE)


# read in table with subjects for train data
subject_train <- read.table("./train/subject_train.txt", col.names=c("subject"))
head(subject_train,6)

# activity labels for train data
activity <- read.table("./train/y_train.txt", col.names=c("activity_num"))
head(activity,6)

# read in train set using features list as column names
features_train <- read.table("./train/X_train.txt",  strip.white = TRUE,
                             col.names=featurev)

# read in inertial signals for train data
intervals <- 1:128

signallist <- c("total_acc_z", "total_acc_y", "total_acc_x",
                "body_acc_z", "body_acc_y", "body_acc_x",
                "body_gyro_z", "body_gyro_y", "body_gyro_x")

testtrain <- "train"
# read in the 9 inertial signal files
# assign column names based on list of signals and integers 1-128
# for measurements over time
for (i in 1:9) {
  meastype = signallist[i]
  intervalst <- paste(meastype,intervals,sep="_")
  filename <- paste("./", testtrain, "/Inertial Signals/", signallist[i],
                    "_", testtrain, ".txt", sep="")
  inertia1 <- read.table(filename, strip.white = TRUE, col.names=intervalst)
  if(i == 1) {
    inertiaf <- inertia1
  } else {
    inertiaf <- cbind(inertiaf, inertia1)
  }
  
}
# Check that the dimensions are as expected with 9 * 128 columns
dim(inertiaf)

# Combine together all elements of train data: subject, activity labels,
# feature vector, and inertial signals

traindata <- cbind(testtrain, subject_train, activity, features_train, inertiaf)
dim(traindata)

# merge activity labels for train data with activity names file
traindata2 <- merge(traindata, activity_labels, by.x= "activity_num",
                    by.y = "activity_num", sort = FALSE)

# combine the train and test datasets into one dataset

trainandtest <- rbind(traindata2, testdata2)
dim(trainandtest)


# select all variables names containing mean or std (standard deveiation)
# as well as variables identifying subject and activity
library(dplyr)
traintest_select <- 
  select(trainandtest, matches("subject|activity_label|mean|std"))


# Group data by subject and activity
traintest_grouped <- group_by(traintest_select, subject, activity_label)

# Create mean of each variable on grouped data
# This is the final summarized dataset
traintest_summ <- summarise_each(traintest_grouped, funs(mean))

# Output this data using write.table
write.table(traintest_summ, "traintestsum.txt", sep = " ", row.names = FALSE,
            eol = "\r\n")



