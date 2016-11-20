# scaling-eureka

Explanation of scripts used to create traintestsum.txt from the raw data
======================================================================================
 downloaded from zip file
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
(Human Activity Recognition Dataset)

*  Output summary file created: traintestsum.txt (space delimited text file)
*  The final summarized dataset contains 2790 rows and 88 columns.
*  To read file into R use this code:
   traintestread <- read.table("traintestsum.txt", sep = " ", header = TRUE)

Scipt run_analysis.R

1. Reads in table features.txt containing list of all features and create a list of 
 feature descriptions to be used as descriptive column names for the test and 
 train data.

2. Does some clean-up of the features list to create a vector to use as descriptive
   column names.

3. Reads in activity_labels.txt to be used to assign the descriptive labels
   for the six activities.

4. Read in subjects for test data

5. Read in activity labels for test data

6. Read in table containing list of all features for the test dataset,
   using the vector of column names created above.

7. Read in files with inertial signals for test data, looping through the 
   9 files and creating 128 variables for each.

8. Combine together all elements of test data: subject, activity labels,
   feature vector, and inertial signals using cbind.

9) Merge activity labels with test data to give the descriptive activity 
   names.

Repeat steps 4 through 9 for train data.

10. Combine the train and test datasets into one dataset.

11. Use dplyr function select o select all Columns based on names containing
   mean or std (standard deveiation) as well as variables identifying subject
   and activity 

12. Use group_by dplyr function to group the data by subject and activity

13. Use dplyr function summarise_each with function mean to compute the 
    mean of each variable by subject and activity.

14. Output this data using write.table
write.table(traintest_summ, "traintestsum.txt", sep = " ", row.names = FALSE,
            eol = "\r\n")



