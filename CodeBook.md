DATA DICTIONARY - Experiment Result for Human Activity Recognition

Volunteersno
1~30
The sequence number granted to 30 volunteers within an age bracket of 19-48 years.

Activity
6: activity label for every experiment subjects
WALKING
WALKING_UPSTAIRS
WALKING_DOWNSTAIRS
SITTING
STANDING
LAYING

Label
2: Data from Train set / Test set
train
test

Measurements:

tBodyAcc-mean()-X   tGravityAcc-mean()-X  tBodyAccJerk-mean()-X
tBodyAcc-mean()-Y   tGravityAcc-mean()-Y  tBodyAccJerk-mean()-Y
tBodyAcc-mean()-Z   tGravityAcc-mean()-Z  tBodyAccJerk-mean()-Z
tBodyAcc-std()-X    tGravityAcc-std()-X   tBodyAccJerk-std()-X 
tBodyAcc-std()-Y    tGravityAcc-std()-Y   tBodyAccJerk-std()-Y 
tBodyAcc-std()-Z    tGravityAcc-std()-Z   tBodyAccJerk-std()-Z 

tBodyGyro-mean()-X  tBodyGyroJerk-mean()-X
tBodyGyro-mean()-Y  tBodyGyroJerk-mean()-Y
tBodyGyro-mean()-Z  tBodyGyroJerk-mean()-Z
tBodyGyro-std()-X   tBodyGyroJerk-std()-X 
tBodyGyro-std()-Y   tBodyGyroJerk-std()-Y 
tBodyGyro-std()-Z   tBodyGyroJerk-std()-Z 

tBodyAccMag-mean()  tGravityAccMag-mean() tBodyAccJerkMag-mean()
tBodyAccMag-std()   tGravityAccMag-std()  tBodyAccJerkMag-std() 

tBodyGyroMag-mean() tBodyGyroJerkMag-mean()
tBodyGyroMag-std()  tBodyGyroJerkMag-std() 

fBodyAcc-mean()-X      fBodyAccJerk-mean()-X       fBodyGyro-mean()-X    
fBodyAcc-mean()-Y      fBodyAccJerk-mean()-Y       fBodyGyro-mean()-Y    
fBodyAcc-mean()-Z      fBodyAccJerk-mean()-Z       fBodyGyro-mean()-Z    
fBodyAcc-std()-X       fBodyAccJerk-std()-X        fBodyGyro-std()-X     
fBodyAcc-std()-Y       fBodyAccJerk-std()-Y        fBodyGyro-std()-Y     
fBodyAcc-std()-Z       fBodyAccJerk-std()-Z        fBodyGyro-std()-Z     
fBodyAcc-meanFreq()-X  fBodyAccJerk-meanFreq()-X   fBodyGyro-meanFreq()-X
fBodyAcc-meanFreq()-Y  fBodyAccJerk-meanFreq()-Y   fBodyGyro-meanFreq()-Y
fBodyAcc-meanFreq()-Z  fBodyAccJerk-meanFreq()-Z   fBodyGyro-meanFreq()-Z


fBodyAccMag-mean()      fBodyBodyAccJerkMag-mean()      fBodyBodyGyroMag-mean()      fBodyBodyGyroJerkMag-mean()    
fBodyAccMag-std()       fBodyBodyAccJerkMag-std()       fBodyBodyGyroMag-std()       fBodyBodyGyroJerkMag-std()     
fBodyAccMag-meanFreq()  fBodyBodyAccJerkMag-meanFreq()  fBodyBodyGyroMag-meanFreq()  fBodyBodyGyroJerkMag-meanFreq()

Measurements come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ.
These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz.
Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.
Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). 
Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. 
(Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
meanFreq(): Weighted average of the frequency components to obtain a mean frequency