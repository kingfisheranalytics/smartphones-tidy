Data Codebook for Smartphones Tidy Dataset
===================
*updated June 9, 2015*

----------
Original data were extracted from "The Human Activity Recognition Using Smartphones Data Set" hosted by the UCI Machine Learning Repository, and represents a Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors. [<i class="icon-folder-open"></i>](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

----------
Supporting Tables
-------------
A supporting table "activity_labels.txt" is included with the original "Human Activity Recognition" downloadable data set, and describes six different types of activities:

| Index     | Activity Type |
| :----------- | :---- |
| 1|  WALKING |
| 2 | WALKING_UPSTAIRS|
| 3 | WALKING_DOWNSTAIRS|
| 4 | SITTING|
| 5 | STANDING|
| 6 | LAYING|

The index variable is linked to the "activities" variable in the main tidy dataset.

----------

Variables
-------------
| Variable     | Type | Description |
| :----------- | :---- | :------------------------ |
|subject | integer | human subject identifier|
|activity | integer | activity identifier|
|tBodyAcc-mean()-X | numeric | average of observed measurements|
|tBodyAcc-mean()-Y | numeric | average of observed measurements|
|tBodyAcc-mean()-Z | numeric | average of observed measurements|
|tBodyAcc-std()-X | numeric | average of observed measurements|
|tBodyAcc-std()-Y | numeric | average of observed measurements|
|tBodyAcc-std()-Z | numeric | average of observed measurements|
|tGravityAcc-mean()-X | numeric | average of observed measurements|
|tGravityAcc-mean()-Y | numeric | average of observed measurements|
|tGravityAcc-mean()-Z | numeric | average of observed measurements|
|tGravityAcc-std()-X | numeric | average of observed measurements|
|tGravityAcc-std()-Y | numeric | average of observed measurements|
|tGravityAcc-std()-Z | numeric | average of observed measurements|
|tBodyAccJerk-mean()-X | numeric | average of observed measurements|
|tBodyAccJerk-mean()-Y | numeric | average of observed measurements|
|tBodyAccJerk-mean()-Z | numeric | average of observed measurements|
|tBodyAccJerk-std()-X | numeric | average of observed measurements|
|tBodyAccJerk-std()-Y | numeric | average of observed measurements|
|tBodyAccJerk-std()-Z | numeric | average of observed measurements|
|tBodyGyro-mean()-X | numeric | average of observed measurements|
|tBodyGyro-mean()-Y | numeric | average of observed measurements|
|tBodyGyro-mean()-Z | numeric | average of observed measurements|
|tBodyGyro-std()-X | numeric | average of observed measurements|
|tBodyGyro-std()-Y | numeric | average of observed measurements|
|tBodyGyro-std()-Z | numeric | average of observed measurements|
|tBodyGyroJerk-mean()-X | numeric | average of observed measurements|
|tBodyGyroJerk-mean()-Y | numeric | average of observed measurements|
|tBodyGyroJerk-mean()-Z | numeric | average of observed measurements|
|tBodyGyroJerk-std()-X | numeric | average of observed measurements|
|tBodyGyroJerk-std()-Y | numeric | average of observed measurements|
|tBodyGyroJerk-std()-Z | numeric | average of observed measurements|
|tBodyAccMag-mean() | numeric | average of observed measurements|
|tBodyAccMag-std() | numeric | average of observed measurements|
|tGravityAccMag-mean() | numeric | average of observed measurements|
|tGravityAccMag-std() | numeric | average of observed measurements|
|tBodyAccJerkMag-mean() | numeric | average of observed measurements|
|tBodyAccJerkMag-std() | numeric | average of observed measurements|
|tBodyGyroMag-mean() | numeric | average of observed measurements|
|tBodyGyroMag-std() | numeric | average of observed measurements|
|tBodyGyroJerkMag-mean() | numeric | average of observed measurements|
|tBodyGyroJerkMag-std() | numeric | average of observed measurements|
|fBodyAcc-mean()-X | numeric | average of observed measurements|
|fBodyAcc-mean()-Y | numeric | average of observed measurements|
|fBodyAcc-mean()-Z | numeric | average of observed measurements|
|fBodyAcc-std()-X | numeric | average of observed measurements|
|fBodyAcc-std()-Y | numeric | average of observed measurements|
|fBodyAcc-std()-Z | numeric | average of observed measurements|
|fBodyAcc-meanFreq()-X | numeric | average of observed measurements|
|fBodyAcc-meanFreq()-Y | numeric | average of observed measurements|
|fBodyAcc-meanFreq()-Z | numeric | average of observed measurements|
|fBodyAccJerk-mean()-X | numeric | average of observed measurements|
|fBodyAccJerk-mean()-Y | numeric | average of observed measurements|
|fBodyAccJerk-mean()-Z | numeric | average of observed measurements|
|fBodyAccJerk-std()-X | numeric | average of observed measurements|
|fBodyAccJerk-std()-Y | numeric | average of observed measurements|
|fBodyAccJerk-std()-Z | numeric | average of observed measurements|
|fBodyAccJerk-meanFreq()-X | numeric | average of observed measurements|
|fBodyAccJerk-meanFreq()-Y | numeric | average of observed measurements|
|fBodyAccJerk-meanFreq()-Z | numeric | average of observed measurements|
|fBodyGyro-mean()-X | numeric | average of observed measurements|
|fBodyGyro-mean()-Y | numeric | average of observed measurements|
|fBodyGyro-mean()-Z | numeric | average of observed measurements|
|fBodyGyro-std()-X | numeric | average of observed measurements|
|fBodyGyro-std()-Y | numeric | average of observed measurements|
|fBodyGyro-std()-Z | numeric | average of observed measurements|
|fBodyGyro-meanFreq()-X | numeric | average of observed measurements|
|fBodyGyro-meanFreq()-Y | numeric | average of observed measurements|
|fBodyGyro-meanFreq()-Z | numeric | average of observed measurements|
|fBodyAccMag-mean() | numeric | average of observed measurements|
|fBodyAccMag-std() | numeric | average of observed measurements|
|fBodyAccMag-meanFreq() | numeric | average of observed measurements|
|fBodyBodyAccJerkMag-mean() | numeric | average of observed measurements|
|fBodyBodyAccJerkMag-std() | numeric | average of observed measurements|
|fBodyBodyAccJerkMag-meanFreq() | numeric | average of observed measurements|
|fBodyBodyGyroMag-mean() | numeric | average of observed measurements|
|fBodyBodyGyroMag-std() | numeric | average of observed measurements|
|fBodyBodyGyroMag-meanFreq() | numeric | average of observed measurements|
|fBodyBodyGyroJerkMag-mean() | numeric | average of observed measurements|
|fBodyBodyGyroJerkMag-std() | numeric | average of observed measurements|
|fBodyBodyGyroJerkMag-meanFreq() | numeric | average of observed measurements|
|angle(tBodyAccMean,gravity) | numeric | average of observed measurements|
|angle(tBodyAccJerkMean),gravityMean) | numeric | average of observed measurements|
|angle(tBodyGyroMean,gravityMean) | numeric | average of observed measurements|
|angle(tBodyGyroJerkMean,gravityMean) | numeric | average of observed measurements|
|angle(X,gravityMean) | numeric | average of observed measurements|
|angle(Y,gravityMean) | numeric | average of observed measurements|
|angle(Z,gravityMean) | numeric | average of observed measurements|

