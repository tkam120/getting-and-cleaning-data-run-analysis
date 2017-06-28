# *[Cleaning and Getting Data]* - course project code book

### Analysis process

The `run_analysis.R` script reads in both test and train data and performs followings:

 - Both the processed test and training datasets are read in and merged into one data frame.
 - The data columns are then given names based on the `features.txt` file.
 - Columns which contain mean or standard deviation measurements are selected from the dataset
 - The activity identifiers are replaced with the activity labels based on the `activity_labels.txt` file.
 - The data is grouped by subject and activity, and the mean is calculated for every measurement column.
 - final dataset is written to a tidydata.txt file.


### Columns variales

The columns included in the output file are listed below:

  - subject - The id of the experiment.
  - activity_label - Activity measurements (`LAYING` or `WALKING`, 'SITTING', etc)

   following fields are from  `features_info.txt` file included in the given zipfile.

  - tBodyAcc_mean_X
  - tBodyAcc_mean_Y
  - tBodyAcc_mean_Z
  - tGravityAcc_mean_X
  - tGravityAcc_mean_Y
  - tGravityAcc_mean_Z
  - tBodyAccJerk_mean_X
  - tBodyAccJerk_mean_Y
  - tBodyAccJerk_mean_Z
  - tBodyGyro_mean_X
  - tBodyGyro_mean_Y
  - tBodyGyro_mean_Z
  - tBodyGyroJerk_mean_X
  - tBodyGyroJerk_mean_Y
  - tBodyGyroJerk_mean_Z
  - tBodyAccMag_mean
  - tGravityAccMag_mean
  - tBodyAccJerkMag_mean
  - tBodyGyroMag_mean
  - tBodyGyroJerkMag_mean
  - fBodyAcc_mean_X
  - fBodyAcc_mean_Y
  - fBodyAcc_mean_Z
  - fBodyAccJerk_mean_X
  - fBodyAccJerk_mean_Y
  - fBodyAccJerk_mean_Z
  - fBodyGyro_mean_X
  - fBodyGyro_mean_Y
  - fBodyGyro_mean_Z
  - fBodyAccMag_mean
  - fBodyAccJerkMag_mean
  - fBodyGyroMag_mean
  - fBodyGyroJerkMag_mean
  - tBodyAcc_std_X
  - tBodyAcc_std_Y
  - tBodyAcc_std_Z
  - tGravityAcc_std_X
  - tGravityAcc_std_Y
  - tGravityAcc_std_Z
  - tBodyAccJerk_std_X
  - tBodyAccJerk_std_Y
  - tBodyAccJerk_std_Z
  - tBodyGyro_std_X
  - tBodyGyro_std_Y
  - tBodyGyro_std_Z
  - tBodyGyroJerk_std_X
  - tBodyGyroJerk_std_Y
  - tBodyGyroJerk_std_Z
  - tBodyAccMag_std
  - tGravityAccMag_std
  - tBodyAccJerkMag_std
  - tBodyGyroMag_std
  - tBodyGyroJerkMag_std
  - fBodyAcc_std_X
  - fBodyAcc_std_Y
  - fBodyAcc_std_Z
  - fBodyAccJerk_std_X
  - fBodyAccJerk_std_Y
  - fBodyAccJerk_std_Z
  - fBodyGyro_std_X
  - fBodyGyro_std_Y
  - fBodyGyro_std_Z
  - fBodyAccMag_std
  - fBodyAccJerkMag_std
  - fBodyGyroMag_std
  - fBodyGyroJerkMag_std
