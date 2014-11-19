Getting and Cleaning Data Course Project
========================================
Summary Description
-------------------
Create R script called run_analysis.R that does the following. 

1. Merges the training and the test sets to create one data set.

2. Extracts only the measurements on the mean and standard deviation for each measurement. 

3. Uses descriptive activity names to name the activities in the data set

4. Appropriately labels the data set with descriptive variable names. 

5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


Steps to execute run_analysis.R script
--------------------------------------
###Assumption
-------------
1. dplyr package is installed, if not please type install.packages("dplyr") on either R or R Studio console and hit Enter to download online and install it.

2. You must have internet access to either allow the script to download the original dataset or obtain the files manually yourself.

3. Your current working directory is already setup and the environment is clean (meaning there are no other work, data, variables in the environment, environment will be wiped clean when running script, be WARNED).

4. run_analysis.R is in current working directory.

###Automatic method
-------------------
Note: elapsed run time around 6 minutes, time may vary depending on CPU and download speed

1. Just source run_analysis.R by typing source("./run_analysis.R") and hit Enter.

###Manually obtain the dataset yourself
---------------------------------------
Note: elapsed run time around 1 minute, time may vary depending on CPU speed

1. Click on this [LINK](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) to download the dataset and save it to your current working directory then rename it to HARDataSet.zip.

2. Right click on this [LINK](https://raw.githubusercontent.com/courseramchen2k2/GetDataProject/master/DescriptiveName.txt) and choose Save Link As, save DescriptiveName.txt in your current working directory.

3. Source run_analysis.R by typing source("./run_analysis.R") and hit Enter.