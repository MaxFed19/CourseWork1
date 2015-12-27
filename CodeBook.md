# Getting and cleaning data Course work

##Data CodeBook

The items selected for this database are mean values of mean and std parameters of 
Samsung Galaxy S II accelerometer and gyroscope signals

The data set consists of 81 variables

### Var 1 - Activity - performed activity, factor, 6 levels

1. WALKING
2. WALKING_UPSTAIRS
3. WALKING_DOWNSTAIRS
4. SITTING
5. STANDING
6. LAYING

### Var 2 - Subject - Volontier number, factor, 30 levels

### Vars 3 - 81, double

**These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.**

tBodyAcc-XYZ

tGravityAcc-XYZ

tBodyAccJerk-XYZ

tBodyGyro-XYZ

tBodyGyroJerk-XYZ

tBodyAccMag

tGravityAccMag

tBodyAccJerkMag

tBodyGyroMag

tBodyGyroJerkMag

fBodyAcc-XYZ

fBodyAccJerk-XYZ

fBodyGyro-XYZ

fBodyAccMag

fBodyAccJerkMag

fBodyGyroMag

fBodyGyroJerkMag

**The set of variables that were estimated from these signals are: **

-mean(): Mean value

-std(): Standard deviation

**Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:**

gravityMean

tBodyAccMean

tBodyAccJerkMean

tBodyGyroMean

tBodyGyroJerkMean
