library(dplyr)

url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url, "dataset.zip")
unzip("dataset.zip")

features <- read.table("UCI HAR Dataset/features.txt", stringsAsFactors = FALSE)
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt", col.names = c("activity_id", "activity"))

# Remove parentheses, commas, dashes and replace them para nomes limpos
features_names <- gsub("[(),-]", "", features$V2)

subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt", col.names = "subject")
x_train <- read.table("UCI HAR Dataset/train/X_train.txt", col.names = features_names)
y_train <- read.table("UCI HAR Dataset/train/y_train.txt", col.names = "activity_id")

subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt", col.names = "subject")
x_test <- read.table("UCI HAR Dataset/test/X_test.txt", col.names = features_names)
y_test <- read.table("UCI HAR Dataset/test/y_test.txt", col.names = "activity_id")

train_data <- cbind(subject_train, y_train, x_train)
test_data <- cbind(subject_test, y_test, x_test)
combined_data <- rbind(train_data, test_data)

# Selecionar somente as colunas que contêm mean e std (ignore case)
mean_std_features <- grep("mean|std", features_names, ignore.case = TRUE, value = TRUE)

data_mean_std <- combined_data %>%
    select(subject, activity_id, all_of(mean_std_features))

data_mean_std <- merge(data_mean_std, activity_labels, by = "activity_id")

data_mean_std <- data_mean_std %>%
    select(subject, activity, everything(), -activity_id)

tidy_data <- data_mean_std %>%
    group_by(subject, activity) %>%
    summarise(across(everything(), mean))

write.table(tidy_data, "tidy_dataset.txt", row.names = FALSE)
