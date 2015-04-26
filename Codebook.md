#Codebook for tidydata data set

##subject
Unique identity code of the subject  
:        01 to 30  .Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.  

##activitydescription
six activities description that subject performed  
:        1. WALKING  
:        2. WALKING_UPSTAIRS  
:        3. WALKING_DOWNSTAIRS  
:        4. SITTING  
:        5. STANDING  
:        6. LAYING  

##features
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ.  
These time domain signals were captured at a constant rate of 50 Hz.   
Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.  
Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ)   
using another low pass Butterworth filter with a corner frequency of 0.3 Hz.  

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals  
(tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated  
using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).   

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ,  
fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag.  

These signals were used to estimate variables of the feature vector for each pattern:  
'XYZ' is used to denote 3-axial signals in the X, Y and Z directions.  

The set of variables that were estimated from these signals are:  
mean(): Mean value  
std(): Standard deviation  
meanFreq(): Weighted average of the frequency components to obtain a mean frequency  
:        1. timebodyaccmeanx  
:        2. timebodyaccmeany  
:        3. timebodyaccmeanz  
:        4. timebodyaccstdx  
:        5. timebodyaccstdy  
:        6. timebodyaccstdz  
:        7. timegravityaccmeanx  
:        8. timegravityaccmeany  
:        9. timegravityaccmeanz  
:        10. timegravityaccstdx  
:        11. timegravityaccstdy  
:        12. timegravityaccstdz  
:        13. timebodyaccjerkmeanx  
:        14. timebodyaccjerkmeany  
:        15. timebodyaccjerkmeanz  
:        16. timebodyaccjerkstdx  
:        17. timebodyaccjerkstdy  
:        18. timebodyaccjerkstdz  
:        19. timebodygyromeanx  
:        20. timebodygyromeany  
:        21. timebodygyromeanz  
:        22. timebodygyrostdx  
:        23. timebodygyrostdy  
:        24. timebodygyrostdz  
:        25. timebodygyrojerkmeanx  
:        26. timebodygyrojerkmeany  
:        27. timebodygyrojerkmeanz  
:        28. timebodygyrojerkstdx  
:        29. timebodygyrojerkstdy  
:        30. timebodygyrojerkstdz  
:        31. timebodyaccmagmean  
:        32. timebodyaccmagstd  
:        33. timegravityaccmagmean  
:        34. timegravityaccmagstd  
:        35. timebodyaccjerkmagmean  
:        36. timebodyaccjerkmagstd  
:        37. timebodygyromagmean  
:        38. timebodygyromagstd  
:        39. timebodygyrojerkmagmean  
:        40. timebodygyrojerkmagstd  
:        41. frequencybodyaccmeanx  
:        42. frequencybodyaccmeany  
:        43. frequencybodyaccmeanz  
:        44. frequencybodyaccstdx  
:        45. frequencybodyaccstdy  
:        46. frequencybodyaccstdz  
:        47. frequencybodyaccmeanfreqx  
:        48. frequencybodyaccmeanfreqy  
:        49. frequencybodyaccmeanfreqz  
:        50. frequencybodyaccjerkmeanx  
:        51. frequencybodyaccjerkmeany  
:        52. frequencybodyaccjerkmeanz  
:        53. frequencybodyaccjerkstdx  
:        54. frequencybodyaccjerkstdy  
:        55. frequencybodyaccjerkstdz  
:        56. frequencybodyaccjerkmeanfreqx  
:        57. frequencybodyaccjerkmeanfreqy  
:        58. frequencybodyaccjerkmeanfreqz  
:        59. frequencybodygyromeanx  
:        60. frequencybodygyromeany  
:        61. frequencybodygyromeanz  
:        62. frequencybodygyrostdx  
:        63. frequencybodygyrostdy  
:        64. frequencybodygyrostdz  
:        65. frequencybodygyromeanfreqx  
:        66. frequencybodygyromeanfreqy  
:        67. frequencybodygyromeanfreqz  
:        68. frequencybodyaccmagmean  
:        69. frequencybodyaccmagstd  
:        70. frequencybodyaccmagmeanfreq  
:        71. frequencybodybodyaccjerkmagmean  
:        72. frequencybodybodyaccjerkmagstd  
:        73. frequencybodybodyaccjerkmagmeanfreq  
:        74. frequencybodybodygyromagmean  
:        75. frequencybodybodygyromagstd  
:        76. frequencybodybodygyromagmeanfreq  
:        77. frequencybodybodygyrojerkmagmean  
:        78. frequencybodybodygyrojerkmagstd
:        79. frequencybodybodygyrojerkmagmeanfreq  

##measurement
mean of signals  
:        -0.9976661 to 0.9745087 integer Hz of signals  


NOTE: For further information on how the data retrieved or the origin of the data  
please visit [READ ME file](https://github.com/Tomo230485/Getting-and-Cleaning-data-assignment/blob/master/README.md)