#
# - Coursera: Getting and Cleaning Data - Course Project
#   
# - Data Set: Human Activity Recognition Using Smartphones Data
#   http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
# - Description: create a tidy data set that includes both training
#   and test data
#


library(dplyr)


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# - read in raw data from disk
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# - assumes all data files are in current working directory

# - list of all features
features <- read.table("features.txt")
# - links the class labels with their activity name
activityLabels <- read.table("activity_labels.txt")

# - training: labels
trainLabels <- read.table("y_train.txt")
# - training: subjects
trainSubjects <- read.table("subject_train.txt")
# - training: set
trainSet <- read.table("X_train.txt")

# - test: labels
testLabels <- read.table("y_test.txt")
# - test: subjects
testSubjects <- read.table("subject_test.txt")
# - test: set
testSet <- read.table("X_test.txt")



#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# - 1. Merges the training and the test sets to create one data set
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# - note:
#   > from dplyr viginette: When row-binding, columns are matched by name, and 
#     any values that don’t match will be filled with NA
#     http://cran.r-project.org/web/packages/dplyr/dplyr.pdf
#   > row_bind also doesnt play nicely with repeat column names, it just drops 
#     them... rbind() doesnt care (ie V1 for first three colnames after cbind)

# - join tarining and test data and stack data sets
allData <- rbind(
    cbind(trainLabels, trainSubjects, trainSet), 
    cbind(testLabels, testSubjects, testSet))

# - update column names
#   there are a numer of repeats in features. 477 distinct of 561 total
#   ot <- table(o); ot[ot>1] ... all repeated 3 times, most likely x,y,z?
names(allData) <- c("activity", "subject", as.character(features[,2]))



#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# - 2. Extracts only the measurements on the mean and standard deviation for 
#   each measurement
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# - search in features for values that contain 'mean()' or 'std()'
#   note there are meanFreq() cols... not returning those
# - you need the two escapes to get to regex engine
# - confirmed with: <bash> grep -E 'std\(\)|mean\(\)' features.txt | wc -l
featuresMeanStd <- grepl("mean\\(\\)|std\\(\\)", as.character(features[,2]))
# - match back to column numbers incase file ever gets rearranged 
featuresMeanStdIndex <- features[featuresMeanStd,1]

# - limit stacked training and test data set just to those column indeces
#   offset indices by two since first two columns represents labels and subjects
allDataMeanStd <- allData[,c(1,2,featuresMeanStdIndex+2)]



#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# - 3. Uses descriptive activity names to name the activities in the data set
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# - set y labels as factors
#   note the levels arg is modeled after the default for factor function
allDataMeanStd$activity <- factor(allDataMeanStd$activity, 
                                  levels=as.character(activityLabels[,1]),
                                  labels=as.character(activityLabels[,2]))

# - set subjects as factors
allDataMeanStd$subject <- factor(allDataMeanStd$subject)



#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# - 4. Appropriately labels the data set with descriptive variable names
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# - columns are already given names in step one based on features data file

# - clean up the columns to make more readable
names(allDataMeanStd) <- gsub("-","_",names(allDataMeanStd))
names(allDataMeanStd) <- gsub("\\(\\)","",names(allDataMeanStd))



#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# - 5. From the data set in step 4, creates a second, independent tidy data set 
#   with the average of each variable for each activity and each subject
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# - tidy data principals
#   1. each variable forms a column
#   2. each observation forms a row
#   3. each table stores data about one kind of observation
#   4. unique key to link tables

# - compute averages by activity and subject for each feature
stepFiveTidy <- allDataMeanStd %>%
    dplyr::group_by(activity, subject) %>%
    dplyr::summarise_each(funs(mean)) %>%
    dplyr::arrange(activity, subject)
 
# - write to txt file
write.table(stepFiveTidy, file="stepFiveTidy.txt", row.name=FALSE)


