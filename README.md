## courseraCleaningDataProject
Coursera Getting and Cleaning Data Project - script descriptions...


## run_analysis.R
- reads in 8 data files from the UCI Human Activity Recognition Using Smartphones Data Set. These data files include a list of all the features, a map between activity number and label, training and test sets, training and test labels, and training and test subject identifiers. 

- joins training/test labels, training/test subject ids, and training/test feature set data rogether. It then stacks the joined training and test sets and labels the columns based on the features listing file.

- filters the list of features to only those that measure the mean or standard deviation.

- converts integer labels into factor labels with their corresponding descriptive activity names. Also, convert subject variable from integer to factor.

- cleans up the column titles further to improve readability.

- creats and saves a tidy data set which is grouped by activity and subject id and reports the average feature value (note this is the average of the already limited set of mean and standard deviation features described above).
