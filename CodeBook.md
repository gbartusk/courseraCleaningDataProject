## Data CodeBook
describes the variables, the data, and any transformations performed to clean up the data...

### stepFiveTidy.txt
##### Original Data Sets
- UCI Human Activity Recognition Using Smartphones Data Set. 

- http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

- These data files include a list of all the features, a map between activity number and label, training and test sets, training and test labels, and training and test subject identifiers. 


##### Transformations Applied to Original Data Sets
- Joined training/test labels, training/test subject ids, and training/test feature set data together. Stacked the joined training and test sets and labels the columns based on the features listing file.

- data was grouped by activity and subject id and reports the average feature value

##### Variable Descriptions
- The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

- Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

- Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

- Again, only the mean and standard deviations of these features were extracted for stepFiveTidy.txt

##### Variables Names and Types
- activity: (factor)  1=walking, 2=walking_upstairs, 3=walking_downstairs, 4=sitting, 5=standing, 6=laying               

- subject: (factor) subject who performed the activity for each window sample. Its range is from 1 to 30.                  
- tBodyAcc_mean_X: (numeric)           

- tBodyAcc_mean_Y: (numeric)           

- tBodyAcc_mean_Z: (numeric)           

- tBodyAcc_std_X: (numeric)            

- tBodyAcc_std_Y: (numeric)   

- tBodyAcc_std_Z: (numeric)            

- tGravityAcc_mean_X: (numeric)        

- tGravityAcc_mean_Y: (numeric)        

- tGravityAcc_mean_Z: (numeric)        

- tGravityAcc_std_X: (numeric)         

- tGravityAcc_std_Y: (numeric)         

- tGravityAcc_std_Z: (numeric)         

- tBodyAccJerk_mean_X: (numeric)       

- tBodyAccJerk_mean_Y: (numeric)       

- tBodyAccJerk_mean_Z: (numeric)       

- tBodyAccJerk_std_X: (numeric)        

- tBodyAccJerk_std_Y: (numeric)        

- tBodyAccJerk_std_Z: (numeric)        

- tBodyGyro_mean_X: (numeric)          

- tBodyGyro_mean_Y: (numeric)          

- tBodyGyro_mean_Z: (numeric)          

- tBodyGyro_std_X: (numeric)           

- tBodyGyro_std_Y: (numeric)           

- tBodyGyro_std_Z: (numeric)           

- tBodyGyroJerk_mean_X: (numeric)      

- tBodyGyroJerk_mean_Y: (numeric)      

- tBodyGyroJerk_mean_Z: (numeric)      

- tBodyGyroJerk_std_X: (numeric)       

- tBodyGyroJerk_std_Y: (numeric)       

- tBodyGyroJerk_std_Z: (numeric)       

- tBodyAccMag_mean: (numeric)          

- tBodyAccMag_std: (numeric)           

- tGravityAccMag_mean: (numeric)       

- tGravityAccMag_std: (numeric)        

- tBodyAccJerkMag_mean: (numeric)      

- tBodyAccJerkMag_std: (numeric)       

- tBodyGyroMag_mean: (numeric)         

- tBodyGyroMag_std: (numeric)          

- tBodyGyroJerkMag_mean: (numeric)     

- tBodyGyroJerkMag_std: (numeric)      

- fBodyAcc_mean_X: (numeric)           

- fBodyAcc_mean_Y: (numeric)           

- fBodyAcc_mean_Z: (numeric)           

- fBodyAcc_std_X: (numeric)            

- fBodyAcc_std_Y: (numeric)            

- fBodyAcc_std_Z: (numeric)            

- fBodyAccJerk_mean_X: (numeric)       

- fBodyAccJerk_mean_Y: (numeric)       

- fBodyAccJerk_mean_Z: (numeric)       

- fBodyAccJerk_std_X: (numeric)        

- fBodyAccJerk_std_Y: (numeric)        

- fBodyAccJerk_std_Z: (numeric)        

- fBodyGyro_mean_X: (numeric)          

- fBodyGyro_mean_Y: (numeric)          

- fBodyGyro_mean_Z: (numeric)          

- fBodyGyro_std_X: (numeric)           

- fBodyGyro_std_Y: (numeric)           

- fBodyGyro_std_Z: (numeric)           

- fBodyAccMag_mean: (numeric)          

- fBodyAccMag_std: (numeric)           

- fBodyBodyAccJerkMag_mean: (numeric)  

- fBodyBodyAccJerkMag_std: (numeric)   

- fBodyBodyGyroMag_mean: (numeric)     

- fBodyBodyGyroMag_std: (numeric)      

- fBodyBodyGyroJerkMag_mean: (numeric) 

- fBodyBodyGyroJerkMag_std: (numeric)  
