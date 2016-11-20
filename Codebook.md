Codebook for traintestsum dataset
====================================================================================================================

#Steps to obtain raw data:#

Source for data was Human Activity Recognition Dataset
downloaded and extracted from zip file
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

#Description of dataset created#
Name of tidy dataset: testtrainsum.txt
This dataset is a summary of the raw data obtained above, including the subject number, activity, and averages of 
all mean and standard deviation measurements as described below.


#Steps to create tidy dataset:#

After downloading and extracting the raw data as described above,
execute the R script run_analysis.R.



#Variables in tidy dataset:#
====================================================================================================================
subject:  Identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 


activity_label:	Identifies which of six activities measurements pertain to.

	Possible values are:
   *	LAYING 
   *	SITTING
   *	STANDING
   *	WALKING
   *	WALKING_DOWNSTAIRS
   *	WALKING_UPSTAIRS
	
Mean and standard deviation variables for features coming from the accelerometer and gyroscope
3-axial raw signals.

tBodyAcc_mean_X: mean time domain signal ('t' for time) body acceleration signal for X direction	
tBodyAcc_mean_Y: mean time domain signal ('t' for time) body acceleration signal for Y direction	
tBodyAcc_mean_Z: mean time domain signal ('t' for time) body acceleration signal for Z direction
	
tBodyAcc_std_X: mean of standard deviation for time domain signal ('t' for time) body acceleration
		  signal for X direction	
tBodyAcc_std_Y: mean of standard deviation for time domain signal ('t' for time) body acceleration
		 signal for Y direction		
tBodyAcc_std_Z: mean of standard deviation for time domain signal ('t' for time) body acceleration
		 signal for Z direction		

tGravityAcc_mean_X: mean of gravity acceleration signal for X direction
tGravityAcc_mean_Y: mean of gravity acceleration signal for Y direction
tGravityAcc_mean_Z: mean of gravity acceleration signal for Z direction	

tGravityAcc_std_X: mean standard deviation of gravity acceleration signal for X direction
tGravityAcc_std_Y: mean standard deviation of gravity acceleration signal for Y direction	
tGravityAcc_std_Z: mean standard deviation of gravity acceleration signal for Z direction	

tBodyAccJerk_mean_X: mean jerk signal obtained using Euclidean norm for body motion in X direction
tBodyAccJerk_mean_Y: mean jerk signal obtained using Euclidean norm for body motion in Y direction	
tBodyAccJerk_mean_Z: mean jerk signal obtained using Euclidean norm for body motion in Z direction		

tBodyAccJerk_std_X: mean of the standard deviation jerk signal obtained using Euclidean norm for body motion in X direction	
tBodyAccJerk_std_Y: mean of the standard deviation jerk signal obtained using Euclidean norm for body motion in Y direction		
tBodyAccJerk_std_Z: mean of the standard deviation jerk signal obtained using Euclidean norm for body motion in Z direction		

tBodyGyro_mean_X: mean signal from gyroscope (time) - X direction 	
tBodyGyro_mean_Y: mean signal from gyroscope (time) - Y direction 		
tBodyGyro_mean_Z: mean signal from gyroscope (time) - Z direction 		
tBodyGyro_std_X: mean standard deviation signal from gyroscope (time) - X direction 	 	
tBodyGyro_std_Y: mean standard deviation signal from gyroscope (time) - Y direction 	 	
tBodyGyro_std_Z: mean standard deviation signal from gyroscope (time) - Z direction 	 		

tBodyGyroJerk_mean_X: mean of body jerk signal in X direction	
tBodyGyroJerk_mean_Y: mean of body jerk signal in Y direction		
tBodyGyroJerk_mean_Z: mean of body jerk signal in Z direction		
tBodyGyroJerk_std_X: mean standard deviataion of body jerk signal in X direction		
tBodyGyroJerk_std_Y: mean standard deviataion of body jerk signal in Y direction			
tBodyGyroJerk_std_Z: mean standard deviataion of body jerk signal in Z direction			

tBodyAccMag_mean: mean of body acceleration magnitude in Euclidean norm	
tBodyAccMag_std: mean of standard deviation of body acceleration magnitude in Euclidean norm		
tGravityAccMag_mean: mean gravity acceleration magnitude	
tGravityAccMag_std: mean of standard deviation of gravity accelaration magnitude 	
tBodyAccJerkMag_mean: mean of body acceleration magnitude	
tBodyAccJerkMag_std: mean standard deviaton of body acceleration magnitude		

tBodyGyroMag_mean: mean of magnitude of body gyro signal	
tBodyGyroMag_std: mean of standard deviation magnitude of body gyro signal		
tBodyGyroJerkMag_mean: mean of body gyro jerk magitude	
tBodyGyroJerkMag_std: mean of standard deviation of the body jerk magnitude	

THe 'f" variables below are means of the Fast Fourier Transform applied to the
Signals represented by the variables listed above
fBodyAcc_mean_X: mean of frequency domain signal pertaining to body acceleration - X direction
fBodyAcc_mean_Y: mean of frequency domain signal pertaining to body acceleration - Y direction	
fBodyAcc_mean_Z: mean of frequency domain signal pertaining to body acceleration - Z direction	
fBodyAcc_std_X: mean of standard devation of frequency domain signal for body accelation - X	
fBodyAcc_std_Y: mean of standard devation of frequency domain signal for body accelation - Y		
fBodyAcc_std_Z: mean of standard devation of frequency domain signal for body accelation - Z		
fBodyAcc_meanFreq_X: mean of weighted average of frequency components - X direction
fBodyAcc_meanFreq_Y: mean of weighted average of frequency components - Y direction	
fBodyAcc_meanFreq_Z: mean of weighted average of frequency components - Z direction	
fBodyAccJerk_mean_X: mean of body acceleration jerk signal - X direction	
fBodyAccJerk_mean_Y: mean of body acceleration jerk signal - Y direction		
fBodyAccJerk_mean_Z: mean of body acceleration jerk signal - Z direction		
fBodyAccJerk_std_X: mean standard deviation of body acceleration jerk signal - X direction		
fBodyAccJerk_std_Y: mean standard deviation of body acceleration jerk signal - Y direction			
fBodyAccJerk_std_Z: mean standard deviation of body acceleration jerk signal - Z direction			
fBodyAccJerk_meanFreq_X: mean of weighted average frequency of jerk signal - X
fBodyAccJerk_meanFreq_Y: mean of weighted average frequency of jerk signal - Y	
fBodyAccJerk_meanFreq_Z: mean of weighted average frequency of jerk signal - Z	

fBodyGyro_mean_X: 	
fBodyGyro_mean_Y	
fBodyGyro_mean_Z	
fBodyGyro_std_X	
fBodyGyro_std_Y	
fBodyGyro_std_Z	
fBodyGyro_meanFreq_X	
fBodyGyro_meanFreq_Y	
fBodyGyro_meanFreq_Z	
fBodyAccMag_mean	
fBodyAccMag_std	
fBodyAccMag_meanFreq	
fBodyBodyAccJerkMag_mean	
fBodyBodyAccJerkMag_std	
fBodyBodyAccJerkMag_meanFreq	
fBodyBodyGyroMag_mean	
fBodyBodyGyroMag_std	
fBodyBodyGyroMag_meanFreq	
fBodyBodyGyroJerkMag_mean	
fBodyBodyGyroJerkMag_std	
fBodyBodyGyroJerkMag_meanFreq	
angletBodyAccMean_gravity	
angletBodyAccJerkMean_gravityMean	
angletBodyGyroMean_gravityMean	
angletBodyGyroJerkMean_gravityMean	
angleX_gravityMean	
angleY_gravityMean	
angleZ_gravityMean	


#Below is the description of the raw dataset:#

Human Activity Recognition Using Smartphones Dataset
Version 1.0

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws


The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

#For each record it is provided:#


- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

#The raw dataset includes the following files:#


- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

For more information about this dataset contact: activityrecognition@smartlab.ws

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

