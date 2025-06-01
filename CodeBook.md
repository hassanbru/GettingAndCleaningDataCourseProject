# CodeBook

## Data Source
Dataset: UCI Human Activity Recognition Using Smartphones  
URL: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## Variables
- **subject**: Integer, ID of the subject (1-30)
- **activity**: Factor, descriptive activity names, e.g., WALKING, SITTING, etc.
- **Feature variables**: Numeric variables representing mean and standard deviation measurements, e.g.,  
  - tBodyAcc-mean()-X  
  - tBodyAcc-mean()-Y  
  - tBodyAcc-std()-X  
  - tBodyAcc-std()-Y  
  - ... (all extracted mean/std variables)

## Transformations
- Merged training and test datasets.
- Extracted measurements on mean and standard deviation only.
- Replaced activity codes with descriptive activity names.
- Labeled variables with descriptive variable names from features.txt.
- Created a tidy dataset with the average of each variable for each activity and each subject.

## Units
- Accelerometer data: measured in standard gravity units (g).  
- Gyroscope data: measured in radians/second.
