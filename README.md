Getting and Cleaning Data Course Project
========================================
##Summary Description
---------------------
Source dataset is based on Human Activity Recognition Using Smartphones Data Set from [UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) and the dataset is obtained from this [LINK](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip), using the dataset to create R script called run_analysis.R that does the following. 

1. Merges the training and the test sets to create one data set.

2. Extracts only the measurements on the mean and standard deviation for each measurement. 

3. Uses descriptive activity names to name the activities in the data set

4. Appropriately labels the data set with descriptive variable names. 

5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

* Output file: TidyData.txt

* Note: for detailed description of what run_analysis.R does, please check on the [section](https://github.com/courseramchen2k2/GetDataProject#detail-description-of-run_analysisr) near the end of this markup file and read the comments in the script code.


##Steps to execute run_analysis.R script
----------------------------------------
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


##Detail Description of run_analysis.R
--------------------------------------
1. Here is a [graphical representation](https://github.com/courseramchen2k2/GetDataProject/blob/master/GraphicalExplainationStep1.jpg) of what the script does for part 1. For the Training Dataset, it column binds X_train.txt, Y_train.txt, and subject_traing.txt together, and it does the same with Test Dataset by column bind X_test.txt, Y_test.txt and subject_test.txt, then finally row bind the Training Dataset and Test Dataset together as one complete dataset.

2. Here is a [graphical representation](https://github.com/courseramchen2k2/GetDataProject/blob/master/GraphicalExplainationStep2.jpg) of what the script does for part 2. Using dplyr package, select from list of column names using regular expression and find only instances containing "mean", "Mean", and "std", and the +2 is adjustment for column index due to cbined "SubjectID" & "ActivityID" in Part 1. This way also has the advantage of preserving the original order of the column instead of mixing it up when I first tried to use the contains("mean"), contains("std") inside the select statement. 

3. Take data from part 2 and merge Activity data (only contains index number and 6 activities names), so that each ActivityID correspond to an activities names, then sort the rows by SubejctID and ActivityID, then remove ActivityID(replaced by Activity name).

4. 

5.