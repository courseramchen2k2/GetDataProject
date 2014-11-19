## load package and clear environment for data processing
library(dplyr)
rm(list=ls())
        
FileName <- "./HARDataSet.zip"
FileURL <- "http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "
Activity <-"./UCI HAR Dataset/activity_labels.txt"        ##    6 obs,   2 variables
ColumnLabel<- "./UCI HAR Dataset/features.txt"            ##  561 obs,   2 variables (column lable)
TrainFile1 <- "./UCI HAR Dataset/train/X_train.txt"       ## 7352 obs, 561 variables (training data set)
TrainFile2 <- "./UCI HAR Dataset/train/Y_train.txt"       ## 7352 obs,   1 variables (ActivityID)
TrainFile3 <- "./UCI HAR Dataset/train/subject_train.txt" ## 7352 obs,   1 variables (subject ID)
TestFile1 <- "./UCI HAR Dataset/test/X_test.txt"          ## 2947 obs, 561 variables (test data)
TestFile2 <- "./UCI HAR Dataset/test/Y_test.txt"          ## 2947 obs,   1 variables (ActivityID)
TestFile3 <- "./UCI HAR Dataset/test/subject_test.txt"    ## 2947 obs,   1 variables (subject ID)
DFile <- "./DescriptiveName.txt"

## download binary zip data to current working directory if file not present.
if (!file.exists(FileName)){
        download.file(FileURL, destfile=FileName, mode="wb")
}
## Extract Dataset zip file if not present.
if (!file.exists("./UCI HAR Dataset")) {
   message("Extracting file.....")
   unzip(FileName, overwrite=TRUE)
}
ColumnName <- read.table(ColumnLabel)
ColumnName$V2 <- as.character(ColumnName$V2)

## Part 1, Merge the training and test sets to create one data set
## The first cbind combines the Training Data and the second cbind combines 
## the Test Data, the rbind combines both data into one then converted to tbl_df
Data <- tbl_df(rbind(cbind(read.table(TrainFile3, col.names="SubjectID"),
                           read.table(TrainFile2, col.names="ActivityID"), 
                           read.table(TrainFile1)),
                     cbind(read.table(TestFile3, col.name="SubjectID"),
                           read.table(TestFile2, col.name="ActivityID"),
                           read.table(TestFile1))))

## Part 2, Extracts only the measurements on the mean and std deviation
## select from list of columnnames using regular expression and find only
## instances containing "mean", "Mean", and "std", and the +2 is adjustment 
## for column index due to cbined "Subject ID" & "Activity ID" in Part 1.
## this way also has the advantage of perserving the original order of
## the column instead of mixing it up when I first tried to use the 
## contains("mean"), contains("std") inside the select statment. 
Data2 <- Data %>% select(c(1,2), ColumnName$V1[grepl("mean", ColumnName$V2)|
                                      grepl("Mean", ColumnName$V2)|
                                      grepl("std", ColumnName$V2)]+2) %>%

## Part 3, Uses descriptve activity names to name the activities in the data set
## merge the activity data (only contains the 6 activities and index number) with 
## complete data set, sort the rows and rearange the columns
merge(tbl_df(read.table(Activity, col.names=c("ActID", "Activity"))), 
        by.x="ActivityID", by.y="ActID") %>%
          arrange(SubjectID, ActivityID) %>%
          select(SubjectID, Activity, V1:V561)
        
## Part 4, lebel the data set with descriptive variable names.
## descriptive variable namess are read from an external file.
names(Data2) <- c("SubjectID","Activity",as.character(read.table(DFile)[,"V1"]))
        
## Part 5, create independent tidy data set with the average of each variable
## for each activity and each subject.
Data3 <- Data2 %>%
        group_by(SubjectID, Activity) %>% 
        summarise_each(funs(mean),3:88)
write.table(Data3, file="./TidyData.txt", row.name=FALSE)