CODE BOOK - Getting and Cleaning Data Course Project
====================================================
Study Design
------------
The tiny data set produced is based on Human Activity Recognition Using Smartphones Data Set from [UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) and the dataset is obtained from the following link [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) 

The Project required us to produce a tidy dataset following the steps below:

1. Merge training and test dataset. 

2. Extracts only the mean and standard deviation for each measurement. 

3. Use descriptive activity names. 

4. Appropriately labels the data set with descriptive variable names. 

5. Produce a Tidy Dataset with the average of each variable for each activity and each subject.

Summary Choices
---------------
I also included variables such as MeanFrequency and other variables that included the word "Mean" in it, due to the fact that tidy data set is also an intermediate step in data processing and someone might be able to use this data down the line.  So I feel it is better to include these extra data that fits the definition of project requirement then not including it, data can always be removed down the line if need be but not vice-versa.

Code Book
---------
There are total of 88 Variables from this tidy data set and they are:

**SubjectID**
- Interger value between 1 to 30
	
**Activity**
- 6 possible activity names:
- LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS

**tBodyAcceleration-MeanValue-X-Axis**                     
- Mean Value of Body Acceleration Signal in X-Axis 
- Original source from tBodyAcc-mean()-X
- Units are in time domain signal

**tBodyAcceleration-MeanValue-Y-Axis**                   
- Mean Value of Body Acceleration Signal in Y-Axis
- Original source from tBodyAcc-mean()-Y
- Units are in time domain signal
	
**tBodyAcceleration-MeanValue-Z-Axis**                    
- Mean Value of Body Acceleration Signal in Z-Axis
- Original source from tBodyAcc-mean()-Z
- Units are in time domain signal
	
**tBodyAcceleration-StandardDeviation-X-Axis**
- Standard Deviation of Body Acceleration Signal in X-Axis
- Original source from tBodyAcc-std()-X
- Units are in time domain signal

**tBodyAcceleration-StandardDeviation-Y-Axis**                     
- Standard Deviation of Body Acceleration Signal in Y-Axis
- Original source from tBodyAcc-std()-Y
- Units are in time domain signal

**tBodyAcceleration-StandardDeviation-Z-Axis**                    
- Standard Deviation of Body Acceleration Signal in Z-Axis
- Original source from tBodyAcc-std()-Z
- Units are in time domain signal

**tGravityAcceleration-MeanValue-X-Axis**
- Mean Value of Gravity Acceleration Signal in X-Axis
- Original source from tGravityAcc-mean()-X
- Units are in time domain signal

**tGravityAcceleration-MeanValue-Y-Axis**
- Mean Value of Gravity Acceleration Signal in Y-Axis
- Original source from tGravityAcc-mean()-Y
- Units are in time domain signal	

**tGravityAcceleration-MeanValue-Z-Axis**
- Mean Value of Gravity Acceleration Signal in Z-Axis
- Original source from tGravityAcc-mean()-Z
- Units are in time domain signal

**tGravityAcceleration-StandardDeviation-X-Axis**
- Standard Deviation of Gravity Acceleration Signal in X-Axis
- Original source from tGravityAcc-std()-X
- Units are in time domain signal

**tGravityAcceleration-StandardDeviation-Y-Axis**
- Standard Deviation of Gravity Acceleration Signal in Y-Axis
- Original source from tGravityAcc-std()-Y
- Units are in time domain signal

**tGravityAcceleration-StandardDeviation-Z-Axis**
- Standard Deviation of Gravity Acceleration Signal in Z-Axis
- Original source from tGravityAcc-std()-Z
- Units are in time domain signal

**tBodyAccelerationJerk-MeanValue-X-Axis**
- Mean Value of Body Acceleration Jerk in X-Axis
- Original source from tBodyAccJerk-mean()-X
- Units are in time domain signal

**tBodyAccelerationJerk-MeanValue-Y-Axis**
- Mean Value of Body Acceleration Jerk in Y-Axis
- Original source from tBodyAccJerk-mean()-Y
- Units are in time domain signal

**tBodyAccelerationJerk-MeanValue-Z-Axis**
- Mean Value of Body Acceleration Jerk Signal in Z-Axis
- Original source from tBodyAccJerk-mean()-Z
- Units are in time domain signal

**tBodyAccelerationJerk-StandardDeviation-X-Axis**                
- Standard Deviation of Body Acceleration Jerk Signal in X-Axis
- Original source from tBodyAccJerk-std()-X
- Units are in time domain signal

**tBodyAccelerationJerk-StandardDeviation-Y-Axis**                 
- Standard Deviation of Body Acceleration Jerk Signal in Y-Axis
- Original source from tBodyAccJerk-std()-Y
- Units are in time domain signal
	
**tBodyAccelerationJerk-StandardDeviation-Z-Axis**                
- Standard Deviation of Body Acceleration Jerk Signal in Z-Axis
- Original source from tBodyAccJerk-std()-Z
- Units are in time domain signal
	
**tBodyGyroscope-MeanValue-X-Axis**
- Mean Value of Body Gyroscope Signal in X-Axis
- Original source from tBodyGyro-mean()-X
- Units are in time domain signal

**tBodyGyroscope-MeanValue-Y-Axis**
- Mean Value of Body Gyroscope Signal in Y-Axis
- Original source from tBodyGyro-mean()-Y
- Units are in time domain signal	

**tBodyGyroscope-MeanValue-Z-Axis**
- Mean Value of Body Gyroscope Signal in Z-Axis
- Original source from tBodyGyro-mean()-Z
- Units are in time domain signal

**tBodyGyroscope-StandardDeviation-X-Axis**
- Standard Deviation of Body Gyroscope Signal in X-Axis
- Original source from tBodyGyro-std()-X
- Units are in time domain signal

**tBodyGyroscope-StandardDeviation-Y-Axis**
- Standard Deviation of Body Gyroscope Signal in Y-Axis
- Original source from tBodyGyro-std()-Y
- Units are in time domain signal

**tBodyGyroscope-StandardDeviation-Z-Axis**
- Standard Deviation of Body Gyroscope Signal in Z-Axis
- Original source from tBodyGyro-std()-Z
- Units are in time domain signal

**tBodyGyroscopeJerk-MeanValue-X-Axis**
- Mean Value of Body Gyroscope Jerk Signal in X-Axis
- Original source from tBodyGyroJerk-mean()-X
- Units are in time domain signal

**tBodyGyroscopeJerk-MeanValue-Y-Axis**
- Mean Value of Body Gyroscope Jerk Signal in Y-Axis
- Original source from tBodyGyroJerk-mean()-Y
- Units are in time domain signal	

**tBodyGyroscopeJerk-MeanValue-Z-Axis**             
- Mean Value of Body Gyroscope Jerk Signal in Z-Axis
- Original source from tBodyGyroJerk-mean()-Z
- Units are in time domain signal

**tBodyGyroscopeJerk-StandardDeviation-X-Axis**  
- Standard Deviation of Body Gyroscope Jerk Signal in X-Axis
- Original source from tBodyGyroJerk-std()-X
- Units are in time domain signal

**tBodyGyroscopeJerk-StandardDeviation-Y-Axis**
- Standard Deviation of Body Gyroscope Jerk Signal in Y-Axis
- Original source from tBodyGyroJerk-std()-Y
- Units are in time domain signal

**tBodyGyroscopeJerk-StandardDeviation-Z-Axis**
- Standard Deviation of Body Gyroscope Jerk Signal in Z-Axis
- Original source from tBodyGyroJerk-std()-Z
- Units are in time domain signal

**tBodyAccelerationMagnitude-MeanValue**
- Mean Value of Magnitude of Body Acceleration
- Original source from tBodyAccMag-mean()
- Units are in time domain signal

**tBodyAccelerationMagnitude-StandardDeviation**
- Standard Deviation of Magnitude of Body Acceleration
- Original source from tBodyAccMag-std()
- Units are in time domain signal

**tGravityAccelerationMagnitude-MeanValue**
- Mean Value of Magnitude of Gravity Acceleration
- Original source from tGravityAccMag-mean()
- Units are in time domain signal

**tGravityAccelerationMagnitude-StandardDeviation**
- Standard Deviation of Magnitude of Gravity Acceleration
- Original source from tGravityAccMag-std()
- Units are in time domain signal

**tBodyAccelerationJerkMagnitude-MeanValue**
- Mean Value of Magnitude of Body Acceleration Jerk
- Original source from tBodyAccJerkMag-mean()
- Units are in time domain signal
	
**tBodyAccelerationJerkMagnitude-StandardDeviation**
- Standard Deviation of Magnitude of Body Acceleration Jerk
- Original source from tBodyAccJerkMag-std()
- Units are in time domain signal

**tBodyGyroscopeMagnitude-MeanValue**
- Mean Value of Magnitude of Body Gyroscope Signal
- Original source from tBodyGyroMag-mean()
- Units are in time domain signal

**tBodyGyroscopeMagnitude-StandardDeviation**
- Standard Deviation of Magnitude of Body Gyroscope Signal
- Original source from tBodyGyroMag-std()
- Units are in time domain signal

**tBodyGyroscopeJerkMagnitude-MeanValue**
- Mean Value of Magnitude of Body Gyroscope Jerk Signal
- Original source from tBodyGyroJerkMag-mean()
- Units are in time domain signal

**tBodyGyroscopeJerkMagnitude-StandardDeviation**
- Standard Deviation of Magnitude of Body Gyroscope Jerk
- Original source from tBodyGyroJerkMag-std()
- Units are in time domain signal	

**fBodyAcceleration-MeanValue-X-Axis**
- Mean Value of Body Acceleration Signal in X-Axis
- Original source from fBodyAcc-mean()-X
- Units are in frequency domain signals

**fBodyAcceleration-MeanValue-Y-Axis**                   
- Mean Value of Body Acceleration Signal in Y-Axis
- Original source from fBodyAcc-mean()-Y
- Units are in frequency domain signals
	
**fBodyAcceleration-MeanValue-Z-Axis**                    
- Mean Value of Body Acceleration Signal in Z-Axis
- Original source from fBodyAcc-mean()-Z
- Units are in frequency domain signals
	
**fBodyAcceleration-StandardDeviation-X-Axis**
- Standard Deviation of Body Acceleration Signal in X-Axis
- Original source from fBodyAcc-std()-X
- Units are in frequency domain signals

**fBodyAcceleration-StandardDeviation-Y-Axis**
- Standard Deviation of Body Acceleration Signal in Y-Axis
- Original source from fBodyAcc-std()-Y
- Units are in frequency domain signals	

**fBodyAcceleration-StandardDeviation-Z-Axis**
- Standard Deviation of Body Acceleration Signal in Z-Axis
- Original source from fBodyAcc-std()-Z
- Units are in frequency domain signals

**fBodyAcceleration-MeanFrequency-X-Axis**
- Mean Frequency of Body Acceleration Signal in X-Axis
- Original source from fBodyAcc-meanFreq()-X
- Units are in frequency domain signals

**fBodyAcceleration-MeanFrequency-Y-Axis**
- Mean Frequency of Body Acceleration Signal in Y-Axis
- Original source from fBodyAcc-meanFreq()-Y
- Units are in frequency domain signals	

**fBodyAcceleration-MeanFrequency-Z-Axis**
- Mean Frequency of Body Acceleration Signal in Z-Axis
- Original source from fBodyAcc-meanFreq()-Z
- Units are in frequency domain signals	

**fBodyAccelerationJerk-MeanValue-X-Axis**               
- Mean Frequency of Body Acceleration Jerk Signal in X-Axis
- Original source from fBodyAccJerk-mean()-X
- Units are in frequency domain signals
	
**fBodyAccelerationJerk-MeanValue-Y-Axis**
- Mean Frequency of Body Acceleration Jerk Signal in Y-Axis
- Original source from fBodyAccJerk-mean()-Y
- Units are in frequency domain signals

**fBodyAccelerationJerk-MeanValue-Z-Axis**        
- Mean Frequency of Body Acceleration Jerk Signal in Z-Axis
- Original source from fBodyAccJerk-mean()-Z
- Units are in frequency domain signals	

**fBodyAccelerationJerk-StandardDeviation-X-Axis**
- Standard Deviation of Body Acceleration Jerk in X-Axis
- Original source from fBodyAccJerk-std()-X
- Units are in frequency domain signals

**fBodyAccelerationJerk-StandardDeviation-Y-Axis**                
- Standard Deviation of Body Acceleration Jerk in Y-Axis
- Original source from fBodyAccJerk-std()-Y
- Units are in frequency domain signals
	
**fBodyAccelerationJerk-StandardDeviation-Z-Axis**              
- Standard Deviation of Body Acceleration Jerk in Z-Axis
- Original source from fBodyAccJerk-std()-Z
- Units are in frequency domain signals
	
**fBodyAccelerationJerk-MeanFrequency-X-Axis**
- Mean Frequency of Body Acceleration Jerk in X-Axis
- Original source from fBodyAccJerk-meanFreq()-X
- Units are in frequency domain signals

**fBodyAccelerationJerk-MeanFrequency-Y-Axis**            
- Mean Frequency of Body Acceleration Jerk in Y-Axis
- Original source from fBodyAccJerk-meanFreq()-Y
- Units are in frequency domain signals
	
**fBodyAccelerationJerk-MeanFrequency-Z-Axis**           
- Mean Frequency of Body Acceleration Jerk in Z-Axis
- Original source from fBodyAccJerk-meanFreq()-Z
- Units are in frequency domain signals
	
**fBodyGyroscope-MeanValue-X-Axis**
- Mean Value of Body Gyroscope in X-Axis
- Original source from fBodyGyro-mean()-X
- Units are in frequency domain signals

**fBodyGyroscope-MeanValue-Y-Axis**                  
- Mean Value of Body Gyroscope in Y-Axis
- Original source from fBodyGyro-mean()-Y
- Units are in frequency domain signals
	
**fBodyGyroscope-MeanValue-Z-Axis**                   
- Mean Value of Body Gyroscope in Z-Axis
- Original source from fBodyGyro-mean()-Z
- Units are in frequency domain signals
	
**fBodyGyroscope-StandardDeviation-X-Axis**
- Standard Deviation of Body Gyroscope in X-Axis
- Original source from fBodyGyro-std()-X
- Units are in frequency domain signals	

**fBodyGyroscope-StandardDeviation-Y-Axis**                    
- Standard Deviation of Body Gyroscope in Y-Axis
- Original source from fBodyGyro-std()-Y
- Units are in frequency domain signals	

**fBodyGyroscope-StandardDeviation-Z-Axis**                   
- Standard Deviation of Body Gyroscope in Z-Axis
- Original source from fBodyGyro-std()-Z
- Units are in frequency domain signals

**fBodyGyroscope-MeanFrequency-X-Axis**
- Mean Value of Frequency of Body Gyroscope in X-Axis
- Original source from fBodyGyro-meanFreq()-X
- Units are in frequency domain signals

**fBodyGyroscope-MeanFrequency-Y-Axis**              
- Mean Value of Frequency of Body Gyroscope in Y-Axis
- Original source from fBodyGyro-meanFreq()-Y
- Units are in frequency domain signals
	
**fBodyGyroscope-MeanFrequency-Z-Axis**               
- Mean Value of Frequency of Body Gyroscope in Z-Axis
- Original source from fBodyGyro-meanFreq()-Z
- Units are in frequency domain signals
	
**fBodyAccelerationMagnitude-MeanValue**
- Mean Value of Magnitude of Body Acceleration
- Original source from fBodyAccMag-mean()
- Units are in frequency domain signals

**fBodyAccelerationMagnitude-StandardDeviation**
- Standard Deviation of Magnitude of Body Acceleration
- Original source from fBodyAccMag-std()
- Units are in frequency domain signals

**fBodyAccelerationMagnitude-MeanFrequency**
- Mean Value of Frequency of Magnitude of Body Acceleration
- Original source from fBodyAccMag-meanFreq()
- Units are in frequency domain signals

**fBodyBodyAccelerationJerkMagnitude-MeanValue**
- Mean Value of Body of Magnitude of Body Acceleration Jerk
- Original source from fBodyBodyAccJerkMag-mean()
- Units are in frequency domain signals

**fBodyBodyAccelerationJerkMagnitude-StandardDeviation**
- Standard Deviation of Body of Magnitude of Body Acceleration Jerk
- Original source from fBodyBodyAccJerkMag-std()
- Units are in frequency domain signals

**fBodyBodyAccelerationJerkMagnitude-MeanFrequency**
- Mean Frequency of Body of Magnitude of Body Acceleration Jerk
- Original source from fBodyBodyAccJerkMag-meanFreq()
- Units are in frequency domain signals

**fBodyBodyGyroscopeMagnitude-MeanValue**
- Mean Value of Body of Magnitude of Body Gyroscope             
- Original source from fBodyBodyGyroMag-mean()
- Units are in frequency domain signals

**fBodyBodyGyroscopeMagnitude-StandardDeviation**
- Standard Deviation of Body of Magnitude of Body Gyroscope             
- Original source from fBodyBodyGyroMag-std()
- Units are in frequency domain signals

**fBodyBodyGyroscopeMagnitude-MeanFrequency**
- Mean Value of Frequency of Body of Magnitude of Body Gyroscope            
- Original source from fBodyBodyGyroMag-meanFreq()
- Units are in frequency domain signals

**fBodyBodyGyroscopeJerkMagnitude-MeanValue**
- Mean Value of Body of Magnitude of Body Gyroscope Jerk
- Original source from fBodyBodyGyroJerkMag-mean()
- Units are in frequency domain signals

**fBodyBodyGyroscopeJerkMagnitude-StandardDeviation**
- Standard Deviation of Body of Magnitude of Body Gyroscope Jerk          
- Original source from fBodyBodyGyroJerkMag-std()
- Units are in frequency domain signals
	
**fBodyBodyGyroscopeJerkMagnitude-MeanFrequency**
- Mean Value of Frequency of Body of Magnitude of Body Gyroscope Jerk
- Original source from fBodyBodyGyroJerkMag-meanFreq()
- Units are in frequency domain signals

**angle(tBodyAccelerationMean,gravity)**
- Angel between 2 vectors
- Original source from angle(tBodyAccMean,gravity)
- Units should be in degree

**angle(tBodyAccelerationJerkMean),gravityMean)**
- Angel between Mean Value of Body Acceleration Jerk and Mean Value of Gravity
- Original source from angle(tBodyAccJerkMean),gravityMean)
- Units should be in degree
	
**angle(tBodyGyroscopeMean,gravityMean)**
- Angel between Mean Value of Body Gyroscope and Mean Value of Gravity
- Original source from angle(tBodyGyroMean,gravityMean)
- Units should be in degree

**angle(tBodyGyroscopeJerkMean,gravityMean)**
- Angel between Mean Value of Body Gyroscope Jerk and Mean Value of Gravity
- Original source from angle(tBodyGyroJerkMean,gravityMean)
- Units should be in degree

**angle(X,gravityMean)**
- Angel between X-Axis and Mean Value of Gravity
- Original source from angle(X,gravityMean)
- Units should be in degree

**angle(Y,gravityMean)**
- Angel between Y-Axis and Mean Value of Gravity
- Original source from angle(Y,gravityMean)
- Units should be in degree

**angle(Z,gravityMean)**
- Angel between Z-Axis and Mean Value of Gravity
- Original source from angle(Z,gravityMean)
- Units should be in degree

