
The variables selected for this database come from taking the mean and standard deviation measurements from the original dataset, and finding the mean value of each measurement for each subject performing a specific activity in one of the source datasets.

Columns in this dataset are defined as follows:

- dataSource : The source of the data, indicated as "training" or "test"

- subject_id : The numerical ID of a given subject that data was taken from,
               indicated as an integer value between 1 and 30.

- activity : The activity being performed by the subject when a measurement
             was taken.  Possible activities are:

             STANDING
             SITTING
             LAYING
             WALKING
             WALKING_DOWNSTAIRS
             WALKING_UPSTAIRS

- variable : The measurement for which a mean was calculated for the given subject_id from the given dataSource performing the indicated activity.  See "variables" section below for a description of possible measurements and what they represent.

- mean : The mean of all sample values for the measurement indicated by "variable", for a subject_id performing a particular activity, taken from the indicated dataSource.

=========
Variables
=========

The variables selected for this dataset come from the mean and standard deviation of measurements in the source dataset. Those measurements are described as follows:

The measurements come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
meanFreq(): Weighted average of the frequency components to obtain a mean frequency

total acceleration: The acceleration signal from the smartphone accelerometer axis (X, Y, or Z) in standard gravity units 'g'.
body acceleration : The body acceleration signal obtained by subtracting the gravity from the total acceleration.
gyroscope (gyro)  : The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second.

The following table shows the measurement as indicated in this dataset, paired with the more abbreviated name of the measurement in the source dataset:

```
Measurement                                                    Source Dataset Measurement
================================================================================================
time_body_acceleration_mean_x                                  tBodyAcc-mean()-X
time_body_acceleration_mean_y                                  tBodyAcc-mean()-Y
time_body_acceleration_mean_z                                  tBodyAcc-mean()-Z
time_body_acceleration_std_x                                   tBodyAcc-std()-X
time_body_acceleration_std_y                                   tBodyAcc-std()-Y
time_body_acceleration_std_z                                   tBodyAcc-std()-Z
time_gravity_acceleration_mean_x                               tGravityAcc-mean()-X
time_gravity_acceleration_mean_y                               tGravityAcc-mean()-Y
time_gravity_acceleration_mean_z                               tGravityAcc-mean()-Z
time_gravity_acceleration_std_x                                tGravityAcc-std()-X
time_gravity_acceleration_std_y                                tGravityAcc-std()-Y
time_gravity_acceleration_std_z                                tGravityAcc-std()-Z
time_body_acceleration_jerk_mean_x                             tBodyAccJerk-mean()-X
time_body_acceleration_jerk_mean_y                             tBodyAccJerk-mean()-Y
time_body_acceleration_jerk_mean_z                             tBodyAccJerk-mean()-Z
time_body_acceleration_jerk_std_x                              tBodyAccJerk-std()-X
time_body_acceleration_jerk_std_y                              tBodyAccJerk-std()-Y
time_body_acceleration_jerk_std_z                              tBodyAccJerk-std()-Z
time_body_gyro_mean_x                                          tBodyGyro-mean()-X
time_body_gyro_mean_y                                          tBodyGyro-mean()-Y
time_body_gyro_mean_z                                          tBodyGyro-mean()-Z
time_body_gyro_std_x                                           tBodyGyro-std()-X
time_body_gyro_std_y                                           tBodyGyro-std()-X
time_body_gyro_std_z                                           tBodyGyro-std()-Z
time_body_gyro_jerk_mean_x                                     tBodyGyroJerk-mean()-X
time_body_gyro_jerk_mean_y                                     tBodyGyroJerk-mean()-Y
time_body_gyro_jerk_mean_z                                     tBodyGyroJerk-mean()-Z
time_body_gyro_jerk_std_x                                      tBodyGyroJerk-std()-X
time_body_gyro_jerk_std_y                                      tBodyGyroJerk-std()-Y
time_body_gyro_jerk_std_z                                      tBodyGyroJerk-std()-Z
time_body_acceleration_magnitude_mean                          tBodyAccMag-mean()
time_body_acceleration_magnitude_std                           tBodyAccMag-std()
time_gravity_acceleration_magnitude_mean                       tGravityAccMag-mean()
time_gravity_acceleration_magnitude_std                        tGravityAccMag-std()
time_body_acceleration_jerk_magnitude_mean                     tBodyAccJerkMag-mean()
time_body_acceleration_jerk_magnitude_std                      tBodyAccJerkMag-std()
time_body_gyro_magnitude_mean                                  tBodyGyroMag-mean()
time_body_gyro_magnitude_std                                   tBodyGyroMag-std()
time_body_gyro_jerk_magnitude_mean                             tBodyGyroJerkMag-mean()
time_body_gyro_jerk_magnitude_std                              tBodyGyroJerkMag-std()
frequency_body_acceleration_mean_x                             fBodyAcc-mean()-X
frequency_body_acceleration_mean_y                             fBodyAcc-mean()-Y
frequency_body_acceleration_mean_z                             fBodyAcc-mean()-Z
frequency_body_acceleration_std_x                              fBodyAcc-std()-X
frequency_body_acceleration_std_y                              fBodyAcc-std()-Y
frequency_body_acceleration_std_z                              fBodyAcc-std()-Z
frequency_body_acceleration_mean_freq_x                        fBodyAcc-meanFreq()-X
frequency_body_acceleration_mean_freq_y                        fBodyAcc-meanFreq()-Y
frequency_body_acceleration_mean_freq_z                        fBodyAcc-meanFreq()-Z
frequency_body_acceleration_jerk_mean_x                        fBodyAccJerk-mean()-X
frequency_body_acceleration_jerk_mean_y                        fBodyAccJerk-mean()-Y
frequency_body_acceleration_jerk_mean_z                        fBodyAccJerk-mean()-Z
frequency_body_acceleration_jerk_std_x                         fBodyAccJerk-std()-X
frequency_body_acceleration_jerk_std_y                         fBodyAccJerk-std()-Y
frequency_body_acceleration_jerk_std_z                         fBodyAccJerk-std()-Z
frequency_body_acceleration_jerk_mean_freq_x                   fBodyAccJerk-meanFreq()-X
frequency_body_acceleration_jerk_mean_freq_y                   fBodyAccJerk-meanFreq()-Y
frequency_body_acceleration_jerk_mean_freq_z                   fBodyAccJerk-meanFreq()-Z
frequency_body_gyro_mean_x                                     fBodyGyro-mean()-X
frequency_body_gyro_mean_y                                     fBodyGyro-mean()-Y
frequency_body_gyro_mean_z                                     fBodyGyro-mean()-Z
frequency_body_gyro_std_x                                      fBodyGyro-std()-X
frequency_body_gyro_std_y                                      fBodyGyro-std()-Y
frequency_body_gyro_std_z                                      fBodyGyro-std()-Z
frequency_body_gyro_mean_freq_x                                fBodyGyro-meanFreq()-X
frequency_body_gyro_mean_freq_y                                fBodyGyro-meanFreq()-Y
frequency_body_gyro_mean_freq_z                                fBodyGyro-meanFreq()-Z
frequency_body_acceleration_magnitude_mean                     fBodyAccMag-mean()
frequency_body_acceleration_magnitude_std                      fBodyAccMag-std()
frequency_body_acceleration_magnitude_mean_freq                fBodyAccMag-meanFreq()
frequency_body_body_acceleration_jerk_magnitude_mean           fBodyBodyAccJerkMag-mean()
frequency_body_body_acceleration_jerk_magnitude_std            fBodyBodyAccJerkMag-std()
frequency_body_body_acceleration_jerk_magnitude_mean_freq      fBodyBodyAccJerkMag-meanFreq()
frequency_body_body_gyro_magnitude_mean                        fBodyBodyGyroMag-mean()
frequency_body_body_gyro_magnitude_std                         fBodyBodyGyroMag-std()
frequency_body_body_gyro_magnitude_mean_freq                   fBodyBodyGyroMag-meanFreq()
frequency_body_body_gyro_jerk_magnitude_mean                   fBodyBodyGyroJerkMag-mean()
frequency_body_body_gyro_jerk_magnitude_std                    fBodyBodyGyroJerkMag-std()
frequency_body_body_gyro_jerk_magnitude_mean_freq              fBodyBodyGyroJerkMag-meanFreq()
```
