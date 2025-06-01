Getting and Cleaning Data Course Project
This repository contains the final project for the Getting and Cleaning Data course offered by Johns Hopkins University on Coursera.

Project Objective
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare a tidy dataset that can be used for later analysis.

• Files in This Repository
run_analysis.R: Script that performs all steps to prepare the tidy data.
tidy_dataset.txt: The final tidy data set.

• How the script works (run_analysis.R)
Downloads and unzips the dataset if not already present.
Reads training and test datasets.
Merges them into one dataset.
Extracts only the measurements on the mean and standard deviation.
Uses descriptive activity names to name the activities.
Labels the dataset with descriptive variable names.
Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

• Running the Script
Make sure you have the dplyr package installed and working directory set to the folder where run_analysis.R is located.
source("run_analysis.R")

This will output the final tidy dataset as tidy_dataset.txt in your working directory.
