# CodeBook

## Dataset

The dataset is a tidy data set containing the average of each mean and standard deviation measurement for each activity and each subject.

## Variables

- **subject**: Integer identifier of the person who performed the activity. Values range from 1 to 30.
- **activity**: Factor with descriptive activity names:
  - WALKING
  - WALKING_UPSTAIRS
  - WALKING_DOWNSTAIRS
  - SITTING
  - STANDING
  - LAYING
- **Feature variables**: Numeric variables representing the average of mean and standard deviation measurements from the original dataset. Examples include:
  - tBodyAcc-mean()-X
  - tBodyAcc-mean()-Y
  - tBodyAcc-std()-X
  - tBodyAcc-std()-Y
  - (and others for each mean and std feature extracted)

## Data transformations

- Merged training and test sets.
- Extracted only measurements on the mean and standard deviation.
- Used descriptive activity names.
- Appropriately labeled variables with descriptive names.
- Created a second tidy dataset with averages grouped by subject and activity.

## Units

All feature variables are in units as originally measured by the Samsung Galaxy S accelerometer and gyroscope sensors.

