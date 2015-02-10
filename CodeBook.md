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
 1. activity: (factor)  1=walking, 2=walking_upstairs, 3=walking_downstairs, 4=sitting, 5=standing, 6=laying               
 2. subject: (factor) subject who performed the activity for each window sample. Its range is from 1 to 30.                  
 3. tBodyAcc_mean_X: (numeric)           
 4. tBodyAcc_mean_Y: (numeric)           
 5. tBodyAcc_mean_Z: (numeric)           
 6. tBodyAcc_std_X: (numeric)            
 7. tBodyAcc_std_Y: (numeric)            
 8. tBodyAcc_std_Z: (numeric)            
 9. tGravityAcc_mean_X: (numeric)        
10. tGravityAcc_mean_Y: (numeric)        
11. tGravityAcc_mean_Z: (numeric)        
12. tGravityAcc_std_X: (numeric)         
13. tGravityAcc_std_Y: (numeric)         
14. tGravityAcc_std_Z: (numeric)         
15. tBodyAccJerk_mean_X: (numeric)       
16. tBodyAccJerk_mean_Y: (numeric)       
17. tBodyAccJerk_mean_Z: (numeric)       
18. tBodyAccJerk_std_X: (numeric)        
19. tBodyAccJerk_std_Y: (numeric)        
20. tBodyAccJerk_std_Z: (numeric)        
21. tBodyGyro_mean_X: (numeric)          
22. tBodyGyro_mean_Y: (numeric)          
23. tBodyGyro_mean_Z: (numeric)          
24. tBodyGyro_std_X: (numeric)           
25. tBodyGyro_std_Y: (numeric)           
26. tBodyGyro_std_Z: (numeric)           
27. tBodyGyroJerk_mean_X: (numeric)      
28. tBodyGyroJerk_mean_Y: (numeric)      
29. tBodyGyroJerk_mean_Z: (numeric)      
30. tBodyGyroJerk_std_X: (numeric)       
31. tBodyGyroJerk_std_Y: (numeric)       
32. tBodyGyroJerk_std_Z: (numeric)       
33. tBodyAccMag_mean: (numeric)          
34. tBodyAccMag_std: (numeric)           
35. tGravityAccMag_mean: (numeric)       
36. tGravityAccMag_std: (numeric)        
37. tBodyAccJerkMag_mean: (numeric)      
38. tBodyAccJerkMag_std: (numeric)       
39. tBodyGyroMag_mean: (numeric)         
40. tBodyGyroMag_std: (numeric)          
41. tBodyGyroJerkMag_mean: (numeric)     
42. tBodyGyroJerkMag_std: (numeric)      
43. fBodyAcc_mean_X: (numeric)           
44. fBodyAcc_mean_Y: (numeric)           
45. fBodyAcc_mean_Z: (numeric)           
46. fBodyAcc_std_X: (numeric)            
47. fBodyAcc_std_Y: (numeric)            
48. fBodyAcc_std_Z: (numeric)            
49. fBodyAccJerk_mean_X: (numeric)       
50. fBodyAccJerk_mean_Y: (numeric)       
51. fBodyAccJerk_mean_Z: (numeric)       
52. fBodyAccJerk_std_X: (numeric)        
53. fBodyAccJerk_std_Y: (numeric)        
54. fBodyAccJerk_std_Z: (numeric)        
55. fBodyGyro_mean_X: (numeric)          
56. fBodyGyro_mean_Y: (numeric)          
57. fBodyGyro_mean_Z: (numeric)          
58. fBodyGyro_std_X: (numeric)           
59. fBodyGyro_std_Y: (numeric)           
60. fBodyGyro_std_Z: (numeric)           
61. fBodyAccMag_mean: (numeric)          
62. fBodyAccMag_std: (numeric)           
63. fBodyBodyAccJerkMag_mean: (numeric)  
64. fBodyBodyAccJerkMag_std: (numeric)   
65. fBodyBodyGyroMag_mean: (numeric)     
66. fBodyBodyGyroMag_std: (numeric)      
67. fBodyBodyGyroJerkMag_mean: (numeric) 
68. fBodyBodyGyroJerkMag_std: (numeric)  