# Getting and cleaning data Course work

This repo contains the following items:

1. R script run_analysis.R that creates tidy data set of Samsung data
2. README - contains brief description of how does the script work
3. Codebook - description of all variebles of the tidy data set

## Script work
The script does the following:

1. Merges data of all test and training measurments
2. excludes all columns which are not mean or std measurements
3. renames the data set with meaningful names according original codebook
4. adds data about Subjects and performed activities
5. creates a new tidy data set with the average of each variable for each activity and each subject 

## Used packages
For correct work packages to be installed:
* dplyr
* stringr

## R version
The script is written on R version 3.2.3 (2015-12-10)
