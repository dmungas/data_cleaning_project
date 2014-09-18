The program run_analysis.R implements the steps to develop the tidy datasets for the Getting and Cleaning Data course project. This program does the following:

1. Reads data on human activity recognition using smartphones downloaded for the UC Irvine Machine Learning Repository (download url: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip), and merges training and test sets into one data set.
2. Extracts the within-window mean and standard deviation parameters for each measurement. 
3. Provides descriptive labels for  activities in the data set.
4. Provides descriptive labes for the variables in the dataset.
5. Extracts a second, independent tidy data set with the average of each variable for each activity and each subject. Saves this as a text file: train_test_means.txt.

To run this program:

1. run_analysis.R should be located at the root level of the R working directory for this project.
2. A /data subdirectory is required.
3. The download file from the UC Irvine Machine Learning Repository is a zip archive. It should be expanded, and the resulting folder "UCI HAR Dataset" should be placed in the /data subdirectory.
4. The tidy dataset output in step 5 is "train_test_means.txt" located at the root level of the R working directory for this project. This is a space delimited file with 180 observations (30 subjects X 6 activities) for 79 variables that represent subject-by-activity means for accelerometer and gyroscope 3-axial measures.

Variables in train_test_means.txt are:

1. subj_id: unique subject identifier
2. activity: descriptive label for type of activity including:
    - WALKING - Walking
    - WALKING_UPSTAIRS - Walking Upstairs
    - WALKING_DOWNSTAIRS - Walking Downstairs
    - SITTING - Sitting
    - STANDING - Standing
    - LAYING - Laying
3. dataset:
    - Training - Training set
    - Test: Test set
4.  tBodyAcc-mean()-X_ave: accelerometer total body signal, within window mean of 128 readings over 2.56 seconds, X axis, mean across windows for subject and activity                                           
5.  tBodyAcc-mean()-Y_ave: accelerometer total body signal, within window mean of 128 readings over 2.56 seconds, Y axis, mean across windows for subject and activity                                           
6.  tBodyAcc-mean()-Z_ave: accelerometer total body signal, within window mean of 128 readings over 2.56 seconds, Z axis, mean across windows for subject and activity                                           
7.  tGravityAcc-mean()-X_ave: accelerometer total gravity signal, within window mean of 128 readings over 2.56 seconds, X axis, mean across windows for subject and activity                                     
8.  tGravityAcc-mean()-Y_ave: accelerometer total gravity signal, within window mean of 128 readings over 2.56 seconds, Y axis, mean across windows for subject and activity                                     
9.  tGravityAcc-mean()-Z_ave: accelerometer total gravity signal, within window mean of 128 readings over 2.56 seconds, Z axis, mean across windows for subject and activity                                     
 10.  tBodyAccJerk-mean()-X_ave: accelerometer total body jerk signal, within window mean of 128 readings over 2.56 seconds, X axis, mean across windows for subject and activity                                 
 11.  tBodyAccJerk-mean()-Y_ave: accelerometer total body jerk signal, within window mean of 128 readings over 2.56 seconds, Y axis, mean across windows for subject and activity                                 
 12.  tBodyAccJerk-mean()-Z_ave: accelerometer total body jerk signal, within window mean of 128 readings over 2.56 seconds, Z axis, mean across windows for subject and activity                                 
 13.  tBodyGyro-mean()-X_ave: gyroscope total body signal, within window mean of 128 readings over 2.56 seconds, X axis, mean across windows for subject and activity                                             
 14.  tBodyGyro-mean()-Y_ave: gyroscope total body signal, within window mean of 128 readings over 2.56 seconds, Y axis, mean across windows for subject and activity                                             
 15.  tBodyGyro-mean()-Z_ave: gyroscope total body signal, within window mean of 128 readings over 2.56 seconds, Z axis, mean across windows for subject and activity                                             
 16.  tBodyGyroJerk-mean()-X_ave: gyroscope total body jerk signal, within window mean of 128 readings over 2.56 seconds, X axis, mean across windows for subject and activity                                    
 17.  tBodyGyroJerk-mean()-Y_ave: gyroscope total body jerk signal, within window mean of 128 readings over 2.56 seconds, Y axis, mean across windows for subject and activity                                    
 18.  tBodyGyroJerk-mean()-Z_ave: gyroscope total body jerk signal, within window mean of 128 readings over 2.56 seconds, Z axis, mean across windows for subject and activity                                    
 19.  tBodyAccMag-mean()_ave: accelerometer total body signal magnitude, within window mean of 128 readings over 2.56 seconds, mean across windows for subject and activity                                       
 20.  tGravityAccMag-mean()_ave: accelerometer total gravity signal magnitude, within window mean of 128 readings over 2.56 seconds, mean across windows for subject and activity                                 
 21.  tBodyAccJerkMag-mean()_ave: accelerometer total body jerk signal magnitude, within window mean of 128 readings over 2.56 seconds, mean across windows for subject and activity                              
 22.  tBodyGyroMag-mean()_ave: gyroscope total body signal magnitude, within window mean of 128 readings over 2.56 seconds, mean across windows for subject and activity                                          
 23.  tBodyGyroJerkMag-mean()_ave: gyroscope total body jerk signal magnitude, within window mean of 128 readings over 2.56 seconds, mean across windows for subject and activity                                 
 24.  fBodyAcc-mean()-X_ave: accelerometer total body frequency domain signal, within window mean of 128 readings over 2.56 seconds, X axis, mean across windows for subject and activity                         
 25.  fBodyAcc-mean()-Y_ave: accelerometer total body frequency domain signal, within window mean of 128 readings over 2.56 seconds, Y axis, mean across windows for subject and activity                         
 26.  fBodyAcc-mean()-Z_ave: accelerometer total body frequency domain signal, within window mean of 128 readings over 2.56 seconds, Z axis, mean across windows for subject and activity                         
 27.  fBodyAcc-meanFreq()-X_ave: accelerometer total body frequency domain signal, within window mean of 128 readings over 2.56 seconds, X axis, mean across windows for subject and activity                     
 28.  fBodyAcc-meanFreq()-Y_ave: accelerometer total body frequency domain signal, within window mean of 128 readings over 2.56 seconds, Y axis, mean across windows for subject and activity                     
 29.  fBodyAcc-meanFreq()-Z_ave: accelerometer total body frequency domain signal, within window mean of 128 readings over 2.56 seconds, Z axis, mean across windows for subject and activity                     
 30.  fBodyAccJerk-mean()-X_ave: accelerometer total body jerk frequency domain signal, within window mean of 128 readings over 2.56 seconds, X axis, mean across windows for subject and activity                
 31.  fBodyAccJerk-mean()-Y_ave: accelerometer total body jerk frequency domain signal, within window mean of 128 readings over 2.56 seconds, Y axis, mean across windows for subject and activity                
 32.  fBodyAccJerk-mean()-Z_ave: accelerometer total body jerk frequency domain signal, within window mean of 128 readings over 2.56 seconds, Z axis, mean across windows for subject and activity                
 33.  fBodyAccJerk-meanFreq()-X_ave: accelerometer total body jerk frequency domain signal, within window mean of 128 readings over 2.56 seconds, X axis, mean across windows for subject and activity            
 34.  fBodyAccJerk-meanFreq()-Y_ave: accelerometer total body jerk frequency domain signal, within window mean of 128 readings over 2.56 seconds, Y axis, mean across windows for subject and activity            
 35.  fBodyAccJerk-meanFreq()-Z_ave: accelerometer total body jerk frequency domain signal, within window mean of 128 readings over 2.56 seconds, Z axis, mean across windows for subject and activity            
 36.  fBodyGyro-mean()-X_ave: gyroscope total body frequency domain signal, within window mean of 128 readings over 2.56 seconds, X axis, mean across windows for subject and activity                            
 37.  fBodyGyro-mean()-Y_ave: gyroscope total body frequency domain signal, within window mean of 128 readings over 2.56 seconds, Y axis, mean across windows for subject and activity                            
 38.  fBodyGyro-mean()-Z_ave: gyroscope total body frequency domain signal, within window mean of 128 readings over 2.56 seconds, Z axis, mean across windows for subject and activity                            
 39.  fBodyGyro-meanFreq()-X_ave: gyroscope total body frequency domain signal, within window mean of 128 readings over 2.56 seconds, X axis, mean across windows for subject and activity                        
 40.  fBodyGyro-meanFreq()-Y_ave: gyroscope total body frequency domain signal, within window mean of 128 readings over 2.56 seconds, Y axis, mean across windows for subject and activity                        
 41.  fBodyGyro-meanFreq()-Z_ave: gyroscope total body frequency domain signal, within window mean of 128 readings over 2.56 seconds, Z axis, mean across windows for subject and activity                        
 42.  fBodyAccMag-mean()_ave: accelerometer total body magnitude frequency domain signal, within window mean of 128 readings over 2.56 seconds, mean across windows for subject and activity                      
 43.  fBodyAccMag-meanFreq()_ave: accelerometer total body magnitude frequency domain signal, within window mean of 128 readings over 2.56 seconds, mean across windows for subject and activity                  
 44.  fBodyAccJerkMag-mean()_ave: accelerometer total body jerk magnitude frequency domain signal, within window mean of 128 readings over 2.56 seconds, mean across windows for subject and activity             
 45.  fBodyAccJerkMag-meanFreq()_ave: accelerometer total body jerk magnitude frequency domain signal, within window mean of 128 readings over 2.56 seconds, mean across windows for subject and activity         
 46.  fBodyGyroMag-mean()_ave: gyroscope total body magnitude frequency domain signal, within window mean of 128 readings over 2.56 seconds, mean across windows for subject and activity                         
 47.  fBodyGyroMag-meanFreq()_ave: gyroscope total body magnitude frequency domain signal, within window mean of 128 readings over 2.56 seconds, mean across windows for subject and activity                     
 48.  fBodyGyroJerkMag-mean()_ave: gyroscope total body jerk magnitude frequency domain signal, within window mean of 128 readings over 2.56 seconds, mean across windows for subject and activity                
 49.  fBodyGyroJerkMag-meanFreq()_ave: gyroscope total body jerk magnitude frequency domain signal, within window mean of 128 readings over 2.56 seconds, mean across windows for subject and activity            
 50.  tBodyAcc-std()-X_ave: accelerometer total body signal, within window standard deviation of 128 readings over 2.56 seconds, X axis, mean across windows for subject and activity                             
 51.  tBodyAcc-std()-Y_ave: accelerometer total body signal, within window standard deviation of 128 readings over 2.56 seconds, Y axis, mean across windows for subject and activity                             
 52.  tBodyAcc-std()-Z_ave: accelerometer total body signal, within window standard deviation of 128 readings over 2.56 seconds, Z axis, mean across windows for subject and activity                             
 53.  tGravityAcc-std()-X_ave: accelerometer total gravity signal, within window standard deviation of 128 readings over 2.56 seconds, X axis, mean across windows for subject and activity                       
 54.  tGravityAcc-std()-Y_ave: accelerometer total gravity signal, within window standard deviation of 128 readings over 2.56 seconds, Y axis, mean across windows for subject and activity                       
 55.  tGravityAcc-std()-Z_ave: accelerometer total gravity signal, within window standard deviation of 128 readings over 2.56 seconds, Z axis, mean across windows for subject and activity                       
 56.  tBodyAccJerk-std()-X_ave: accelerometer total body jerk signal, within window standard deviation of 128 readings over 2.56 seconds, X axis, mean across windows for subject and activity                    
 57.  tBodyAccJerk-std()-Y_ave: accelerometer total body jerk signal, within window standard deviation of 128 readings over 2.56 seconds, Y axis, mean across windows for subject and activity                    
 58.  tBodyAccJerk-std()-Z_ave: accelerometer total body jerk signal, within window standard deviation of 128 readings over 2.56 seconds, Z axis, mean across windows for subject and activity                    
 59.  tBodyGyro-std()-X_ave: gyroscope total body signal, within window standard deviation of 128 readings over 2.56 seconds, X axis, mean across windows for subject and activity                                
 60.  tBodyGyro-std()-Y_ave: gyroscope total body signal, within window standard deviation of 128 readings over 2.56 seconds, Y axis, mean across windows for subject and activity                                
 61.  tBodyGyro-std()-Z_ave: gyroscope total body signal, within window standard deviation of 128 readings over 2.56 seconds, Z axis, mean across windows for subject and activity                                
 62.  tBodyGyroJerk-std()-X_ave: gyroscope total body jerk signal, within window standard deviation of 128 readings over 2.56 seconds, X axis, mean across windows for subject and activity                       
 63.  tBodyGyroJerk-std()-Y_ave: gyroscope total body jerk signal, within window standard deviation of 128 readings over 2.56 seconds, Y axis, mean across windows for subject and activity                       
 64.  tBodyGyroJerk-std()-Z_ave: gyroscope total body jerk signal, within window standard deviation of 128 readings over 2.56 seconds, Z axis, mean across windows for subject and activity                       
 65.  tBodyAccMag-std()_ave: accelerometer total body signal magnitude, within window standard deviation of 128 readings over 2.56 seconds, mean across windows for subject and activity                          
 66.  tGravityAccMag-std()_ave: accelerometer total gravity signal magnitude, within window standard deviation of 128 readings over 2.56 seconds, mean across windows for subject and activity                    
 67.  tBodyAccJerkMag-std()_ave: accelerometer total body jerk signal magnitude, within window standard deviation of 128 readings over 2.56 seconds, mean across windows for subject and activity                 
 68.  tBodyGyroMag-std()_ave: gyroscope total body signal magnitude, within window standard deviation of 128 readings over 2.56 seconds, mean across windows for subject and activity                             
 69.  tBodyGyroJerkMag-std()_ave: gyroscope total body jerk signal magnitude, within window standard deviation of 128 readings over 2.56 seconds, mean across windows for subject and activity                    
 70.  fBodyAcc-std()-X_ave: accelerometer total body frequency domain signal, within window standard deviation of 128 readings over 2.56 seconds, X axis, mean across windows for subject and activity            
 71.  fBodyAcc-std()-Y_ave: accelerometer total body frequency domain signal, within window standard deviation of 128 readings over 2.56 seconds, Y axis, mean across windows for subject and activity            
 72.  fBodyAcc-std()-Z_ave: accelerometer total body frequency domain signal, within window standard deviation of 128 readings over 2.56 seconds, Z axis, mean across windows for subject and activity            
 73.  fBodyAccJerk-std()-X_ave: accelerometer total body jerk frequency domain signal, within window standard deviation of 128 readings over 2.56 seconds, X axis, mean across windows for subject and activity   
 74.  fBodyAccJerk-std()-Y_ave: accelerometer total body jerk frequency domain signal, within window standard deviation of 128 readings over 2.56 seconds, Y axis, mean across windows for subject and activity   
 75.  fBodyAccJerk-std()-Z_ave: accelerometer total body jerk frequency domain signal, within window standard deviation of 128 readings over 2.56 seconds, Z axis, mean across windows for subject and activity   
 76.  fBodyGyro-std()-X_ave: gyroscope total body frequency domain signal, within window standard deviation of 128 readings over 2.56 seconds, X axis, mean across windows for subject and activity               
 77.  fBodyGyro-std()-Y_ave: gyroscope total body frequency domain signal, within window standard deviation of 128 readings over 2.56 seconds, Y axis, mean across windows for subject and activity               
 78.  fBodyGyro-std()-Z_ave: gyroscope total body frequency domain signal, within window standard deviation of 128 readings over 2.56 seconds, Z axis, mean across windows for subject and activity               
 79.  fBodyAccMag-std()_ave: accelerometer total body magnitude frequency domain signal, within window standard deviation of 128 readings over 2.56 seconds, mean across windows for subject and activity         
 80.  fBodyAccJerkMag-std()_ave: accelerometer total body jerk magnitude frequency domain signal, within window standard deviation of 128 readings over 2.56 seconds, mean across windows for subject and activity
 81.  fBodyGyroMag-std()_ave: gyroscope total body magnitude frequency domain signal, within window standard deviation of 128 readings over 2.56 seconds, mean across windows for subject and activity            
 82.  fBodyGyroJerkMag-std()_ave: gyroscope total body jerk magnitude frequency domain signal, within window standard deviation of 128 readings over 2.56 seconds, mean across windows for subject and activity 