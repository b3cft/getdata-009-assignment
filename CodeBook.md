# Code Book

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Subsequently a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).

These signals were used to estimate variables of the feature vector for each pattern:
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

These variables were then summarised as mean values using the mean() function and the standard deviation, std(), also calculated for each.

Finally for each subject and activty combination an average (mean) was calculate for each variable means and standard deviations.


For each of the following data fields the mean and standard deviation (std) in the x, y and z components is calculated as an average (mean).

> tbodyacc
> tgravityacc
> tbodyaccjerk
> tbodygyro
> tbodygyrojerk
> fbodyacc
> fbodyaccjerk
> fbodygyro

for each of the following data field the mean and standard deviations (std) is calculated as an average (mean)

> tbodyaccmag
> tgravityaccmag
> tbodyaccjerkmag
> tbodygyromag
> tbodygyrojerkmag
> fbodyaccmag
> fbodybodyaccjerkmag
> fbodybodygyromag
> fbodybodygyrojerkmag


> angle_tbodyaccjerkmean_gravitymean


## Full column list

> subject
> activity
> tbodyacc_mean_x
> tbodyacc_mean_y
> tbodyacc_mean_z
> tgravityacc_mean_x
> tgravityacc_mean_y
> tgravityacc_mean_z
> tbodyaccjerk_mean_x
> tbodyaccjerk_mean_y
> tbodyaccjerk_mean_z
> tbodygyro_mean_x
> tbodygyro_mean_y
> tbodygyro_mean_z
> tbodygyrojerk_mean_x
> tbodygyrojerk_mean_y
> tbodygyrojerk_mean_z
> tbodyaccmag_mean
> tgravityaccmag_mean
> tbodyaccjerkmag_mean
> tbodygyromag_mean
> tbodygyrojerkmag_mean
> fbodyacc_mean_x
> fbodyacc_mean_y
> fbodyacc_mean_z
> fbodyaccjerk_mean_x
> fbodyaccjerk_mean_y
> fbodyaccjerk_mean_z
> fbodygyro_mean_x
> fbodygyro_mean_y
> fbodygyro_mean_z
> fbodyaccmag_mean
> fbodybodyaccjerkmag_mean
> fbodybodygyromag_mean
> fbodybodygyrojerkmag_mean
> angle_tbodyaccjerkmean_gravitymean
> tbodyacc_std_x
> tbodyacc_std_y
> tbodyacc_std_z
> tgravityacc_std_x
> tgravityacc_std_y
> tgravityacc_std_z
> tbodyaccjerk_std_x
> tbodyaccjerk_std_y
> tbodyaccjerk_std_z
> tbodygyro_std_x
> tbodygyro_std_y
> tbodygyro_std_z
> tbodygyrojerk_std_x
> tbodygyrojerk_std_y
> tbodygyrojerk_std_z
> tbodyaccmag_std
> tgravityaccmag_std
> tbodyaccjerkmag_std
> tbodygyromag_std
> tbodygyrojerkmag_std
> fbodyacc_std_x
> fbodyacc_std_y
> fbodyacc_std_z
> fbodyaccjerk_std_x
> fbodyaccjerk_std_y
> fbodyaccjerk_std_z
> fbodygyro_std_x
> fbodygyro_std_y
> fbodygyro_std_z
> fbodyaccmag_std
> fbodybodyaccjerkmag_std
> fbodybodygyromag_std
> fbodybodygyrojerkmag_std
> 
