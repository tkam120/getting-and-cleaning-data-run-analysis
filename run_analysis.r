library(tidyr)

#read in features
features <- read.table("features.txt")[,2]

# Extract only the measurements on the mean and standard deviation
mnsd_features <- grepl("mean|std", features)

# Load and process X_test & y_test data.
X_test <- read.table("X_test.txt")
y_test <- read.table("y_test.txt")

#subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
names(X_test) = features

# Extract only the measurements on the mean and standard deviation for each measurement.
X_test = X_test[,mnsd_features]

#read acitivity labels
activity_labels <- read.table("activity_labels.txt")[,2]
# Load activity labels
y_test[,2] = activity_labels[y_test[,1]]

names(y_test) = c("Activity_ID", "Activity_Label")

#read in subject test
subject_test <- read.table("subject_test.txt")
names(subject_test) = "subject"

# merge all test data 
test_data <- cbind(subject_test, y_test, X_test)

# Read in training data.
X_train <- read.table("X_train.txt")
y_train <- read.table("y_train.txt")

subject_train <- read.table("subject_train.txt")

names(X_train) = features

# Extract only the measurements on the mean and standard deviation
X_train = X_train[,mnsd_features]

# Load activity data
y_train[,2] = activity_labels[y_train[,1]]

names(y_train) = c("Activity_ID", "Activity_Label")
names(subject_train) = "subject"

# merge train data
train_data <- cbind(subject_train, y_train, X_train)

# combine test and train data
data = rbind(test_data, train_data)
id_labels   = c("subject", "Activity_ID", "Activity_Label")
data_labels = setdiff(colnames(data), id_labels)
melt_data = melt(data, id = id_labels, measure.vars = data_labels)

# Apply mean function to dataset using dcast function
tidy_data   = dcast(melt_data, subject + Activity_Label ~ variable, mean)

write.table(tidy_data, file = "./tidy_data.txt")