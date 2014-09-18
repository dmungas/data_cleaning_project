# README

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

---

Data Coding for train_test_means.txt:

1. **label:** subj_id  

    **type:** numeric, continuous
  
    **description:** unique subject identifier 
  
2. **label:** activity  

    **type:** character
    
    **description:** descriptive label for type of activity including:  
    WALKING - Walking  
    WALKING_UPSTAIRS - Walking Upstairs  
    WALKING_DOWNSTAIRS - Walking Downstairs  
    SITTING - Sitting  
    STANDING - Standing  
    LAYING - Laying    
    
3. **label:** dataset:  

    **type:** character
    
    **description:** subsample/dataset that results come from:  
    Training - Training set  
    Test: Test set    


4. **label:** tBodyAcc-mean()-X_ave

	 **type:** continuous

	 **description:** accelerometer total body signal, within window mean of 128 readings over 2.56 seconds, X axis, mean across windows for subject and activity

	 **minimum:** 0.2216

	 **maximum:** 0.3015

	 **mean:** 0.2743

	 **standard deviation:** 0.01216



5. **label:** tBodyAcc-mean()-Y_ave

	 **type:** continuous

	 **description:** accelerometer total body signal, within window mean of 128 readings over 2.56 seconds, Y axis, mean across windows for subject and activity

	 **minimum:** -0.04051

	 **maximum:** -0.001308

	 **mean:** -0.01788

	 **standard deviation:** 0.005771



6. **label:** tBodyAcc-mean()-Z_ave

	 **type:** continuous

	 **description:** accelerometer total body signal, within window mean of 128 readings over 2.56 seconds, Z axis, mean across windows for subject and activity

	 **minimum:** -0.1525

	 **maximum:** -0.07538

	 **mean:** -0.1092

	 **standard deviation:** 0.009582



7. **label:** tGravityAcc-mean()-X_ave

	 **type:** continuous

	 **description:** accelerometer total gravity signal, within window mean of 128 readings over 2.56 seconds, X axis, mean across windows for subject and activity

	 **minimum:** -0.68

	 **maximum:** 0.9745

	 **mean:** 0.6975

	 **standard deviation:** 0.4873



8. **label:** tGravityAcc-mean()-Y_ave

	 **type:** continuous

	 **description:** accelerometer total gravity signal, within window mean of 128 readings over 2.56 seconds, Y axis, mean across windows for subject and activity

	 **minimum:** -0.4799

	 **maximum:** 0.9566

	 **mean:** -0.01621

	 **standard deviation:** 0.3452



9. **label:** tGravityAcc-mean()-Z_ave

	 **type:** continuous

	 **description:** accelerometer total gravity signal, within window mean of 128 readings over 2.56 seconds, Z axis, mean across windows for subject and activity

	 **minimum:** -0.4951

	 **maximum:** 0.9579

	 **mean:** 0.07413

	 **standard deviation:** 0.2888



10. **label:** tBodyAccJerk-mean()-X_ave

	 **type:** continuous

	 **description:** accelerometer total body jerk signal, within window mean of 128 readings over 2.56 seconds, X axis, mean across windows for subject and activity

	 **minimum:** 0.04269

	 **maximum:** 0.1302

	 **mean:** 0.07947

	 **standard deviation:** 0.01259



11. **label:** tBodyAccJerk-mean()-Y_ave

	 **type:** continuous

	 **description:** accelerometer total body jerk signal, within window mean of 128 readings over 2.56 seconds, Y axis, mean across windows for subject and activity

	 **minimum:** -0.03869

	 **maximum:** 0.05682

	 **mean:** 0.007565

	 **standard deviation:** 0.01358



12. **label:** tBodyAccJerk-mean()-Z_ave

	 **type:** continuous

	 **description:** accelerometer total body jerk signal, within window mean of 128 readings over 2.56 seconds, Z axis, mean across windows for subject and activity

	 **minimum:** -0.06746

	 **maximum:** 0.03805

	 **mean:** -0.004953

	 **standard deviation:** 0.01346



13. **label:** tBodyGyro-mean()-X_ave

	 **type:** continuous

	 **description:** gyroscope total body signal, within window mean of 128 readings over 2.56 seconds, X axis, mean across windows for subject and activity

	 **minimum:** -0.2058

	 **maximum:** 0.1927

	 **mean:** -0.03244

	 **standard deviation:** 0.05405



14. **label:** tBodyGyro-mean()-Y_ave

	 **type:** continuous

	 **description:** gyroscope total body signal, within window mean of 128 readings over 2.56 seconds, Y axis, mean across windows for subject and activity

	 **minimum:** -0.2042

	 **maximum:** 0.02747

	 **mean:** -0.07426

	 **standard deviation:** 0.03554



15. **label:** tBodyGyro-mean()-Z_ave

	 **type:** continuous

	 **description:** gyroscope total body signal, within window mean of 128 readings over 2.56 seconds, Z axis, mean across windows for subject and activity

	 **minimum:** -0.07245

	 **maximum:** 0.1791

	 **mean:** 0.08744

	 **standard deviation:** 0.03621



16. **label:** tBodyGyroJerk-mean()-X_ave

	 **type:** continuous

	 **description:** gyroscope total body jerk signal, within window mean of 128 readings over 2.56 seconds, X axis, mean across windows for subject and activity

	 **minimum:** -0.1572

	 **maximum:** -0.02209

	 **mean:** -0.09606

	 **standard deviation:** 0.02335



17. **label:** tBodyGyroJerk-mean()-Y_ave

	 **type:** continuous

	 **description:** gyroscope total body jerk signal, within window mean of 128 readings over 2.56 seconds, Y axis, mean across windows for subject and activity

	 **minimum:** -0.07681

	 **maximum:** -0.0132

	 **mean:** -0.04269

	 **standard deviation:** 0.009532



18. **label:** tBodyGyroJerk-mean()-Z_ave

	 **type:** continuous

	 **description:** gyroscope total body jerk signal, within window mean of 128 readings over 2.56 seconds, Z axis, mean across windows for subject and activity

	 **minimum:** -0.0925

	 **maximum:** -0.006941

	 **mean:** -0.0548

	 **standard deviation:** 0.01235



19. **label:** tBodyAccMag-mean()_ave

	 **type:** continuous

	 **description:** accelerometer total body signal magnitude, within window mean of 128 readings over 2.56 seconds, mean across windows for subject and activity

	 **minimum:** -0.9865

	 **maximum:** 0.6446

	 **mean:** -0.4973

	 **standard deviation:** 0.4729



20. **label:** tGravityAccMag-mean()_ave

	 **type:** continuous

	 **description:** accelerometer total gravity signal magnitude, within window mean of 128 readings over 2.56 seconds, mean across windows for subject and activity

	 **minimum:** -0.9865

	 **maximum:** 0.6446

	 **mean:** -0.4973

	 **standard deviation:** 0.4729



21. **label:** tBodyAccJerkMag-mean()_ave

	 **type:** continuous

	 **description:** accelerometer total body jerk signal magnitude, within window mean of 128 readings over 2.56 seconds, mean across windows for subject and activity

	 **minimum:** -0.9928

	 **maximum:** 0.4345

	 **mean:** -0.6079

	 **standard deviation:** 0.3965



22. **label:** tBodyGyroMag-mean()_ave

	 **type:** continuous

	 **description:** gyroscope total body signal magnitude, within window mean of 128 readings over 2.56 seconds, mean across windows for subject and activity

	 **minimum:** -0.9807

	 **maximum:** 0.418

	 **mean:** -0.5652

	 **standard deviation:** 0.3977



23. **label:** tBodyGyroJerkMag-mean()_ave

	 **type:** continuous

	 **description:** gyroscope total body jerk signal magnitude, within window mean of 128 readings over 2.56 seconds, mean across windows for subject and activity

	 **minimum:** -0.9973

	 **maximum:** 0.08758

	 **mean:** -0.7364

	 **standard deviation:** 0.2768



24. **label:** fBodyAcc-mean()-X_ave

	 **type:** continuous

	 **description:** accelerometer total body frequency domain signal, within window mean of 128 readings over 2.56 seconds, X axis, mean across windows for subject and activity

	 **minimum:** -0.9952

	 **maximum:** 0.537

	 **mean:** -0.5758

	 **standard deviation:** 0.43



25. **label:** fBodyAcc-mean()-Y_ave

	 **type:** continuous

	 **description:** accelerometer total body frequency domain signal, within window mean of 128 readings over 2.56 seconds, Y axis, mean across windows for subject and activity

	 **minimum:** -0.989

	 **maximum:** 0.5242

	 **mean:** -0.4887

	 **standard deviation:** 0.4806



26. **label:** fBodyAcc-mean()-Z_ave

	 **type:** continuous

	 **description:** accelerometer total body frequency domain signal, within window mean of 128 readings over 2.56 seconds, Z axis, mean across windows for subject and activity

	 **minimum:** -0.9895

	 **maximum:** 0.2807

	 **mean:** -0.6297

	 **standard deviation:** 0.3556



27. **label:** fBodyAcc-meanFreq()-X_ave

	 **type:** continuous

	 **description:** accelerometer total body frequency domain signal, within window mean of 128 readings over 2.56 seconds, X axis, mean across windows for subject and activity

	 **minimum:** -0.6359

	 **maximum:** 0.1591

	 **mean:** -0.2323

	 **standard deviation:** 0.1936



28. **label:** fBodyAcc-meanFreq()-Y_ave

	 **type:** continuous

	 **description:** accelerometer total body frequency domain signal, within window mean of 128 readings over 2.56 seconds, Y axis, mean across windows for subject and activity

	 **minimum:** -0.3795

	 **maximum:** 0.4665

	 **mean:** 0.01153

	 **standard deviation:** 0.1447



29. **label:** fBodyAcc-meanFreq()-Z_ave

	 **type:** continuous

	 **description:** accelerometer total body frequency domain signal, within window mean of 128 readings over 2.56 seconds, Z axis, mean across windows for subject and activity

	 **minimum:** -0.5201

	 **maximum:** 0.4025

	 **mean:** 0.04372

	 **standard deviation:** 0.185



30. **label:** fBodyAccJerk-mean()-X_ave

	 **type:** continuous

	 **description:** accelerometer total body jerk frequency domain signal, within window mean of 128 readings over 2.56 seconds, X axis, mean across windows for subject and activity

	 **minimum:** -0.9946

	 **maximum:** 0.4743

	 **mean:** -0.6139

	 **standard deviation:** 0.3983



31. **label:** fBodyAccJerk-mean()-Y_ave

	 **type:** continuous

	 **description:** accelerometer total body jerk frequency domain signal, within window mean of 128 readings over 2.56 seconds, Y axis, mean across windows for subject and activity

	 **minimum:** -0.9894

	 **maximum:** 0.2767

	 **mean:** -0.5882

	 **standard deviation:** 0.4077



32. **label:** fBodyAccJerk-mean()-Z_ave

	 **type:** continuous

	 **description:** accelerometer total body jerk frequency domain signal, within window mean of 128 readings over 2.56 seconds, Z axis, mean across windows for subject and activity

	 **minimum:** -0.992

	 **maximum:** 0.1578

	 **mean:** -0.7144

	 **standard deviation:** 0.297



33. **label:** fBodyAccJerk-meanFreq()-X_ave

	 **type:** continuous

	 **description:** accelerometer total body jerk frequency domain signal, within window mean of 128 readings over 2.56 seconds, X axis, mean across windows for subject and activity

	 **minimum:** -0.576

	 **maximum:** 0.3314

	 **mean:** -0.0691

	 **standard deviation:** 0.2541



34. **label:** fBodyAccJerk-meanFreq()-Y_ave

	 **type:** continuous

	 **description:** accelerometer total body jerk frequency domain signal, within window mean of 128 readings over 2.56 seconds, Y axis, mean across windows for subject and activity

	 **minimum:** -0.602

	 **maximum:** 0.1957

	 **mean:** -0.2281

	 **standard deviation:** 0.1999



35. **label:** fBodyAccJerk-meanFreq()-Z_ave

	 **type:** continuous

	 **description:** accelerometer total body jerk frequency domain signal, within window mean of 128 readings over 2.56 seconds, Z axis, mean across windows for subject and activity

	 **minimum:** -0.6276

	 **maximum:** 0.2301

	 **mean:** -0.1376

	 **standard deviation:** 0.2079



36. **label:** fBodyGyro-mean()-X_ave

	 **type:** continuous

	 **description:** gyroscope total body frequency domain signal, within window mean of 128 readings over 2.56 seconds, X axis, mean across windows for subject and activity

	 **minimum:** -0.9931

	 **maximum:** 0.475

	 **mean:** -0.6367

	 **standard deviation:** 0.3468



37. **label:** fBodyGyro-mean()-Y_ave

	 **type:** continuous

	 **description:** gyroscope total body frequency domain signal, within window mean of 128 readings over 2.56 seconds, Y axis, mean across windows for subject and activity

	 **minimum:** -0.994

	 **maximum:** 0.3288

	 **mean:** -0.6767

	 **standard deviation:** 0.3319



38. **label:** fBodyGyro-mean()-Z_ave

	 **type:** continuous

	 **description:** gyroscope total body frequency domain signal, within window mean of 128 readings over 2.56 seconds, Z axis, mean across windows for subject and activity

	 **minimum:** -0.986

	 **maximum:** 0.4924

	 **mean:** -0.6044

	 **standard deviation:** 0.3843



39. **label:** fBodyGyro-meanFreq()-X_ave

	 **type:** continuous

	 **description:** gyroscope total body frequency domain signal, within window mean of 128 readings over 2.56 seconds, X axis, mean across windows for subject and activity

	 **minimum:** -0.3958

	 **maximum:** 0.2492

	 **mean:** -0.1046

	 **standard deviation:** 0.1481



40. **label:** fBodyGyro-meanFreq()-Y_ave

	 **type:** continuous

	 **description:** gyroscope total body frequency domain signal, within window mean of 128 readings over 2.56 seconds, Y axis, mean across windows for subject and activity

	 **minimum:** -0.6668

	 **maximum:** 0.2731

	 **mean:** -0.1674

	 **standard deviation:** 0.1788



41. **label:** fBodyGyro-meanFreq()-Z_ave

	 **type:** continuous

	 **description:** gyroscope total body frequency domain signal, within window mean of 128 readings over 2.56 seconds, Z axis, mean across windows for subject and activity

	 **minimum:** -0.5075

	 **maximum:** 0.3771

	 **mean:** -0.05718

	 **standard deviation:** 0.1652



42. **label:** fBodyAccMag-mean()_ave

	 **type:** continuous

	 **description:** accelerometer total body magnitude frequency domain signal, within window mean of 128 readings over 2.56 seconds, mean across windows for subject and activity

	 **minimum:** -0.9868

	 **maximum:** 0.5866

	 **mean:** -0.5365

	 **standard deviation:** 0.4516



43. **label:** fBodyAccMag-meanFreq()_ave

	 **type:** continuous

	 **description:** accelerometer total body magnitude frequency domain signal, within window mean of 128 readings over 2.56 seconds, mean across windows for subject and activity

	 **minimum:** -0.3123

	 **maximum:** 0.4358

	 **mean:** 0.07613

	 **standard deviation:** 0.1404



44. **label:** fBodyAccJerkMag-mean()_ave

	 **type:** continuous

	 **description:** accelerometer total body jerk magnitude frequency domain signal, within window mean of 128 readings over 2.56 seconds, mean across windows for subject and activity

	 **minimum:** -0.994

	 **maximum:** 0.5384

	 **mean:** -0.5756

	 **standard deviation:** 0.4312



45. **label:** fBodyAccJerkMag-meanFreq()_ave

	 **type:** continuous

	 **description:** accelerometer total body jerk magnitude frequency domain signal, within window mean of 128 readings over 2.56 seconds, mean across windows for subject and activity

	 **minimum:** -0.1252

	 **maximum:** 0.4881

	 **mean:** 0.1625

	 **standard deviation:** 0.1378



46. **label:** fBodyGyroMag-mean()_ave

	 **type:** continuous

	 **description:** gyroscope total body magnitude frequency domain signal, within window mean of 128 readings over 2.56 seconds, mean across windows for subject and activity

	 **minimum:** -0.9865

	 **maximum:** 0.204

	 **mean:** -0.6671

	 **standard deviation:** 0.3181



47. **label:** fBodyGyroMag-meanFreq()_ave

	 **type:** continuous

	 **description:** gyroscope total body magnitude frequency domain signal, within window mean of 128 readings over 2.56 seconds, mean across windows for subject and activity

	 **minimum:** -0.4566

	 **maximum:** 0.4095

	 **mean:** -0.03603

	 **standard deviation:** 0.1807



48. **label:** fBodyGyroJerkMag-mean()_ave

	 **type:** continuous

	 **description:** gyroscope total body jerk magnitude frequency domain signal, within window mean of 128 readings over 2.56 seconds, mean across windows for subject and activity

	 **minimum:** -0.9976

	 **maximum:** 0.1466

	 **mean:** -0.7564

	 **standard deviation:** 0.2629



49. **label:** fBodyGyroJerkMag-meanFreq()_ave

	 **type:** continuous

	 **description:** gyroscope total body jerk magnitude frequency domain signal, within window mean of 128 readings over 2.56 seconds, mean across windows for subject and activity

	 **minimum:** -0.1829

	 **maximum:** 0.4263

	 **mean:** 0.1259

	 **standard deviation:** 0.1083



50. **label:** tBodyAcc-std()-X_ave

	 **type:** continuous

	 **description:** accelerometer total body signal, within window standard deviation of 128 readings over 2.56 seconds, X axis, mean across windows for subject and activity

	 **minimum:** -0.9961

	 **maximum:** 0.6269

	 **mean:** -0.5577

	 **standard deviation:** 0.4517



51. **label:** tBodyAcc-std()-Y_ave

	 **type:** continuous

	 **description:** accelerometer total body signal, within window standard deviation of 128 readings over 2.56 seconds, Y axis, mean across windows for subject and activity

	 **minimum:** -0.9902

	 **maximum:** 0.6169

	 **mean:** -0.4605

	 **standard deviation:** 0.4966



52. **label:** tBodyAcc-std()-Z_ave

	 **type:** continuous

	 **description:** accelerometer total body signal, within window standard deviation of 128 readings over 2.56 seconds, Z axis, mean across windows for subject and activity

	 **minimum:** -0.9877

	 **maximum:** 0.609

	 **mean:** -0.5756

	 **standard deviation:** 0.3955



53. **label:** tGravityAcc-std()-X_ave

	 **type:** continuous

	 **description:** accelerometer total gravity signal, within window standard deviation of 128 readings over 2.56 seconds, X axis, mean across windows for subject and activity

	 **minimum:** -0.9968

	 **maximum:** -0.8296

	 **mean:** -0.9638

	 **standard deviation:** 0.02503



54. **label:** tGravityAcc-std()-Y_ave

	 **type:** continuous

	 **description:** accelerometer total gravity signal, within window standard deviation of 128 readings over 2.56 seconds, Y axis, mean across windows for subject and activity

	 **minimum:** -0.9942

	 **maximum:** -0.6436

	 **mean:** -0.9524

	 **standard deviation:** 0.03266



55. **label:** tGravityAcc-std()-Z_ave

	 **type:** continuous

	 **description:** accelerometer total gravity signal, within window standard deviation of 128 readings over 2.56 seconds, Z axis, mean across windows for subject and activity

	 **minimum:** -0.991

	 **maximum:** -0.6102

	 **mean:** -0.9364

	 **standard deviation:** 0.04029



56. **label:** tBodyAccJerk-std()-X_ave

	 **type:** continuous

	 **description:** accelerometer total body jerk signal, within window standard deviation of 128 readings over 2.56 seconds, X axis, mean across windows for subject and activity

	 **minimum:** -0.9946

	 **maximum:** 0.5443

	 **mean:** -0.5949

	 **standard deviation:** 0.4176



57. **label:** tBodyAccJerk-std()-Y_ave

	 **type:** continuous

	 **description:** accelerometer total body jerk signal, within window standard deviation of 128 readings over 2.56 seconds, Y axis, mean across windows for subject and activity

	 **minimum:** -0.9895

	 **maximum:** 0.3553

	 **mean:** -0.5654

	 **standard deviation:** 0.4331



58. **label:** tBodyAccJerk-std()-Z_ave

	 **type:** continuous

	 **description:** accelerometer total body jerk signal, within window standard deviation of 128 readings over 2.56 seconds, Z axis, mean across windows for subject and activity

	 **minimum:** -0.9933

	 **maximum:** 0.03102

	 **mean:** -0.736

	 **standard deviation:** 0.2768



59. **label:** tBodyGyro-std()-X_ave

	 **type:** continuous

	 **description:** gyroscope total body signal, within window standard deviation of 128 readings over 2.56 seconds, X axis, mean across windows for subject and activity

	 **minimum:** -0.9943

	 **maximum:** 0.2677

	 **mean:** -0.6916

	 **standard deviation:** 0.291



60. **label:** tBodyGyro-std()-Y_ave

	 **type:** continuous

	 **description:** gyroscope total body signal, within window standard deviation of 128 readings over 2.56 seconds, Y axis, mean across windows for subject and activity

	 **minimum:** -0.9942

	 **maximum:** 0.4765

	 **mean:** -0.6533

	 **standard deviation:** 0.352



61. **label:** tBodyGyro-std()-Z_ave

	 **type:** continuous

	 **description:** gyroscope total body signal, within window standard deviation of 128 readings over 2.56 seconds, Z axis, mean across windows for subject and activity

	 **minimum:** -0.9855

	 **maximum:** 0.5649

	 **mean:** -0.6164

	 **standard deviation:** 0.373



62. **label:** tBodyGyroJerk-std()-X_ave

	 **type:** continuous

	 **description:** gyroscope total body jerk signal, within window standard deviation of 128 readings over 2.56 seconds, X axis, mean across windows for subject and activity

	 **minimum:** -0.9965

	 **maximum:** 0.1791

	 **mean:** -0.7036

	 **standard deviation:** 0.3008



63. **label:** tBodyGyroJerk-std()-Y_ave

	 **type:** continuous

	 **description:** gyroscope total body jerk signal, within window standard deviation of 128 readings over 2.56 seconds, Y axis, mean across windows for subject and activity

	 **minimum:** -0.9971

	 **maximum:** 0.2959

	 **mean:** -0.7636

	 **standard deviation:** 0.2673



64. **label:** tBodyGyroJerk-std()-Z_ave

	 **type:** continuous

	 **description:** gyroscope total body jerk signal, within window standard deviation of 128 readings over 2.56 seconds, Z axis, mean across windows for subject and activity

	 **minimum:** -0.9954

	 **maximum:** 0.1932

	 **mean:** -0.7096

	 **standard deviation:** 0.3045



65. **label:** tBodyAccMag-std()_ave

	 **type:** continuous

	 **description:** accelerometer total body signal magnitude, within window standard deviation of 128 readings over 2.56 seconds, mean across windows for subject and activity

	 **minimum:** -0.9865

	 **maximum:** 0.4284

	 **mean:** -0.5439

	 **standard deviation:** 0.431



66. **label:** tGravityAccMag-std()_ave

	 **type:** continuous

	 **description:** accelerometer total gravity signal magnitude, within window standard deviation of 128 readings over 2.56 seconds, mean across windows for subject and activity

	 **minimum:** -0.9865

	 **maximum:** 0.4284

	 **mean:** -0.5439

	 **standard deviation:** 0.431



67. **label:** tBodyAccJerkMag-std()_ave

	 **type:** continuous

	 **description:** accelerometer total body jerk signal magnitude, within window standard deviation of 128 readings over 2.56 seconds, mean across windows for subject and activity

	 **minimum:** -0.9946

	 **maximum:** 0.4506

	 **mean:** -0.5842

	 **standard deviation:** 0.4228



68. **label:** tBodyGyroMag-std()_ave

	 **type:** continuous

	 **description:** gyroscope total body signal magnitude, within window standard deviation of 128 readings over 2.56 seconds, mean across windows for subject and activity

	 **minimum:** -0.9814

	 **maximum:** 0.3

	 **mean:** -0.6304

	 **standard deviation:** 0.3369



69. **label:** tBodyGyroJerkMag-std()_ave

	 **type:** continuous

	 **description:** gyroscope total body jerk signal magnitude, within window standard deviation of 128 readings over 2.56 seconds, mean across windows for subject and activity

	 **minimum:** -0.9977

	 **maximum:** 0.2502

	 **mean:** -0.755

	 **standard deviation:** 0.2655



70. **label:** fBodyAcc-std()-X_ave

	 **type:** continuous

	 **description:** accelerometer total body frequency domain signal, within window standard deviation of 128 readings over 2.56 seconds, X axis, mean across windows for subject and activity

	 **minimum:** -0.9966

	 **maximum:** 0.6585

	 **mean:** -0.5522

	 **standard deviation:** 0.46



71. **label:** fBodyAcc-std()-Y_ave

	 **type:** continuous

	 **description:** accelerometer total body frequency domain signal, within window standard deviation of 128 readings over 2.56 seconds, Y axis, mean across windows for subject and activity

	 **minimum:** -0.9907

	 **maximum:** 0.5602

	 **mean:** -0.4815

	 **standard deviation:** 0.474



72. **label:** fBodyAcc-std()-Z_ave

	 **type:** continuous

	 **description:** accelerometer total body frequency domain signal, within window standard deviation of 128 readings over 2.56 seconds, Z axis, mean across windows for subject and activity

	 **minimum:** -0.9872

	 **maximum:** 0.6871

	 **mean:** -0.5824

	 **standard deviation:** 0.3881



73. **label:** fBodyAccJerk-std()-X_ave

	 **type:** continuous

	 **description:** accelerometer total body jerk frequency domain signal, within window standard deviation of 128 readings over 2.56 seconds, X axis, mean across windows for subject and activity

	 **minimum:** -0.9951

	 **maximum:** 0.4768

	 **mean:** -0.6121

	 **standard deviation:** 0.4005



74. **label:** fBodyAccJerk-std()-Y_ave

	 **type:** continuous

	 **description:** accelerometer total body jerk frequency domain signal, within window standard deviation of 128 readings over 2.56 seconds, Y axis, mean across windows for subject and activity

	 **minimum:** -0.9905

	 **maximum:** 0.3498

	 **mean:** -0.5707

	 **standard deviation:** 0.432



75. **label:** fBodyAccJerk-std()-Z_ave

	 **type:** continuous

	 **description:** accelerometer total body jerk frequency domain signal, within window standard deviation of 128 readings over 2.56 seconds, Z axis, mean across windows for subject and activity

	 **minimum:** -0.9931

	 **maximum:** -0.006236

	 **mean:** -0.7565

	 **standard deviation:** 0.2571



76. **label:** fBodyGyro-std()-X_ave

	 **type:** continuous

	 **description:** gyroscope total body frequency domain signal, within window standard deviation of 128 readings over 2.56 seconds, X axis, mean across windows for subject and activity

	 **minimum:** -0.9947

	 **maximum:** 0.1966

	 **mean:** -0.711

	 **standard deviation:** 0.2728



77. **label:** fBodyGyro-std()-Y_ave

	 **type:** continuous

	 **description:** gyroscope total body frequency domain signal, within window standard deviation of 128 readings over 2.56 seconds, Y axis, mean across windows for subject and activity

	 **minimum:** -0.9944

	 **maximum:** 0.6462

	 **mean:** -0.6454

	 **standard deviation:** 0.3634



78. **label:** fBodyGyro-std()-Z_ave

	 **type:** continuous

	 **description:** gyroscope total body frequency domain signal, within window standard deviation of 128 readings over 2.56 seconds, Z axis, mean across windows for subject and activity

	 **minimum:** -0.9867

	 **maximum:** 0.5225

	 **mean:** -0.6577

	 **standard deviation:** 0.3362



79. **label:** fBodyAccMag-std()_ave

	 **type:** continuous

	 **description:** accelerometer total body magnitude frequency domain signal, within window standard deviation of 128 readings over 2.56 seconds, mean across windows for subject and activity

	 **minimum:** -0.9876

	 **maximum:** 0.1787

	 **mean:** -0.621

	 **standard deviation:** 0.3529



80. **label:** fBodyAccJerkMag-std()_ave

	 **type:** continuous

	 **description:** accelerometer total body jerk magnitude frequency domain signal, within window standard deviation of 128 readings over 2.56 seconds, mean across windows for subject and activity

	 **minimum:** -0.9944

	 **maximum:** 0.3163

	 **mean:** -0.5992

	 **standard deviation:** 0.4087



81. **label:** fBodyGyroMag-std()_ave

	 **type:** continuous

	 **description:** gyroscope total body magnitude frequency domain signal, within window standard deviation of 128 readings over 2.56 seconds, mean across windows for subject and activity

	 **minimum:** -0.9815

	 **maximum:** 0.2367

	 **mean:** -0.6723

	 **standard deviation:** 0.2932



82. **label:** fBodyGyroJerkMag-std()_ave

	 **type:** continuous

	 **description:** gyroscope total body jerk magnitude frequency domain signal, within window standard deviation of 128 readings over 2.56 seconds, mean across windows for subject and activity

	 **minimum:** -0.9976

	 **maximum:** 0.2878

	 **mean:** -0.7715

	 **standard deviation:** 0.2504
