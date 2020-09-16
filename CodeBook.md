# Code Book: Samsung smartphones accelerometer's data

This code book contains an explanation of the variable names and an explanation of the code used to obtain the final data set containing 
those variables, to give the followed steps to cleaning and tidying the data from the "UCI HAR Dataset" folder.

## Introduction about the measurements

In this section we provide information about the data that was used for the project. This information has been taken from the README file of the "UCI HAR Dataset" folder.

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. More information about the meaning of the variable names is provided in the following section.

## The variables

This code book contains the information on the variables of the final and tidy data set obtained afer running the run_analysis.R script.
The names of the variables are an adaptation of the names we can see in the features.txt file (contained in the "UCI HAR Dataset" folder
provided for the assignment), but avoiding abreviations, in order to provide more descriptive variable names than the default ones. It
has been chosen to keep the same structure of the names, but writing complete words insted of abreviations. The words in the variable 
names are "separated" by periods or by changing from lower to upper case letters (e.g. SubjectId is Subject Id).

The final and tidy data set obtained from run_analysis.R (or contained in the accelerometers_data.txt file) has the variables listed below,
for which will be given further information. These are some variables selected from the global data provided in the "UCI HAR Dataset" folder:
the assignment's instructions asked to keep the columns regarding mean and standard deviation of the measured variables, for each 
measurements. The assignment required to extract the mean of those variables (by subject and performed activity) and it's been chosen to not
write explicitly in the name of the variables that a mean has been taken, as the names were already very long. So, for example, if the name
of a variable says "TimeSignalBodyAcceleration.mean...X" what it is meant to say is "mean of the means of the time signals of the body
acceleration, in the X axis".

Now we provide the descriptions of the variables:

1. "SubjectId": identification number of the subject, it ranges from 1 to 30.                       
2. "SubjectType": it takes "train" or "test" and tells whether the data of the subject was used for training or testint, respectively.
3. "ActivityType": it takes "WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", or "LAYING", and indicates the activity
the subject was making during the measurement.

**In the rest of the variables, the names always refer to the mean of the named variable** (which are already means or standard deviations).
**It will be provided a guide to interpret the names, instead of a full description, as there are common terms among them with the
same meaning.** The following explanation is an adaptation from the one given in the file features_info.txt, contained in the "UCI HAR Dataset"
folder provided for the assignment.

In the variables whose name starts with "TimeSignal" was stored data from time domain signals captured at constant rate of 50 Hz.

If the name contains the word "Accelerometer", it means that the data was obtained from accelerometer, whereas if it contains the word
"Gyroscope", the data was obtained from gyroscopes. The acceleration signal was separated into body and gravity acceleration
signals, giving variables whose name contains "BodyAccelerometer" or "GravityAccelerometer", using another low pass Butterworth filter
with a corner frequency of 0.3 Hz.

The body linear acceleration and angular velocity were derived in time to obtain Jerk signals, producing variables whose name contains
"BodyAccelerometerJerk" or "BodyGyroscopeJerk".

All of the type of variables explained above were measured along the 3 directions X, Y, and Z, and contain in their names the corresponding
letter "X", "Y" or "Z" indicating along which axis was measured. The five variables that can be produced with these name combinations
(grouped in the first five blocks of the list below), where procesed to obtain its magnitud, calculated using the Euclidean norm,
and producing analogous variables containing the word "Magnitude" instead of the axis (the second five blocks of the list below).

For these time domain signals were taken both the mean and the standard deviation, so the variables containing "mean" or "std" are the
mean or standard deviation, respectively, of the measures indicated by the rest of the name.

4. "TimeSignalBodyAccelerometer.mean...X"                    
5. "TimeSignalBodyAccelerometer.mean...Y"                    
6. "TimeSignalBodyAccelerometer.mean...Z"                    
7. "TimeSignalBodyAccelerometer.std...X"                     
8. "TimeSignalBodyAccelerometer.std...Y"                     
9. "TimeSignalBodyAccelerometer.std...Z"

---

10. "TimeSignalGravityAccelerometer.mean...X"                 
11. "TimeSignalGravityAccelerometer.mean...Y"                 
12. "TimeSignalGravityAccelerometer.mean...Z"                 
13. "TimeSignalGravityAccelerometer.std...X"                  
14. "TimeSignalGravityAccelerometer.std...Y"                  
15. "TimeSignalGravityAccelerometer.std...Z"    

---

16. "TimeSignalBodyAccelerometerJerk.mean...X"                
17. "TimeSignalBodyAccelerometerJerk.mean...Y"                
18. "TimeSignalBodyAccelerometerJerk.mean...Z"                
19. "TimeSignalBodyAccelerometerJerk.std...X"                 
20. "TimeSignalBodyAccelerometerJerk.std...Y"                 
21. "TimeSignalBodyAccelerometerJerk.std...Z"

---

22. "TimeSignalBodyGyroscope.mean...X"                        
23. "TimeSignalBodyGyroscope.mean...Y"                        
24. "TimeSignalBodyGyroscope.mean...Z"                        
25. "TimeSignalBodyGyroscope.std...X"                         
26. "TimeSignalBodyGyroscope.std...Y"                         
27. "TimeSignalBodyGyroscope.std...Z"

---

28. "TimeSignalBodyGyroscopeJerk.mean...X"                    
29. "TimeSignalBodyGyroscopeJerk.mean...Y"                    
30. "TimeSignalBodyGyroscopeJerk.mean...Z"                    
31. "TimeSignalBodyGyroscopeJerk.std...X"                     
32. "TimeSignalBodyGyroscopeJerk.std...Y"                     
33. "TimeSignalBodyGyroscopeJerk.std...Z"

---

34. "TimeSignalBodyAccelerometerMagnitude.mean.."             
35. "TimeSignalBodyAccelerometerMagnitude.std.."

---

36. "TimeSignalGravityAccelerometerMagnitude.mean.."          
37. "TimeSignalGravityAccelerometerMagnitude.std.."

---

38. "TimeSignalBodyAccelerometerJerkMagnitude.mean.."         
39. "TimeSignalBodyAccelerometerJerkMagnitude.std.."

---

40. "TimeSignalBodyGyroscopeMagnitude.mean.."                 
41. "TimeSignalBodyGyroscopeMagnitude.std.."

---

42. "TimeSignalBodyGyroscopeJerkMagnitude.mean.."             
43. "TimeSignalBodyGyroscopeJerkMagnitude.std.."

---

It was applied a Fast Fourier Transform to some of the time domain signals, producing variables that start with "FrequencySignal",
which indicates the storing of frequency domain signals. The explanation regarding the terms "Accelerometer", "Gyroscope", "Body",
"Jerk" and "Magnitude" given for the time domain signals applies also to the frequency domain signals.

For these frequency domain signals were taken the mean, the standard deviation, and the "mean frequency" (weighted average of the
frequency components to obtain a mean frequency) so the variables containing "mean", "std", or "meanFrequency" at the end of the
name are the mean, standard deviation, or mean frequency, respectively, of the measures indicated by the rest of the name.

44. "FrequencySignalBodyAccelerometer.mean...X"               
45. "FrequencySignalBodyAccelerometer.mean...Y"               
46. "FrequencySignalBodyAccelerometer.mean...Z"
47. "FrequencySignalBodyAccelerometer.std...X"                
48. "FrequencySignalBodyAccelerometer.std...Y"                
49. "FrequencySignalBodyAccelerometer.std...Z" 
50. "FrequencySignalBodyAccelerometer.meanFrequency...X"           
51. "FrequencySignalBodyAccelerometer.meanFrequency...Y"           
52. "FrequencySignalBodyAccelerometer.meanFrequency...Z"

---

53. "FrequencySignalBodyAccelerometerJerk.mean...X"           
54. "FrequencySignalBodyAccelerometerJerk.mean...Y"           
55. "FrequencySignalBodyAccelerometerJerk.mean...Z"           
56. "FrequencySignalBodyAccelerometerJerk.std...X"            
57. "FrequencySignalBodyAccelerometerJerk.std...Y"            
58. "FrequencySignalBodyAccelerometerJerk.std...Z"  
59. "FrequencySignalBodyAccelerometerJerk.meanFrequency...X"       
60. "FrequencySignalBodyAccelerometerJerk.meanFrequency...Y"       
61. "FrequencySignalBodyAccelerometerJerk.meanFrequency...Z"

---

62. "FrequencySignalBodyGyroscope.mean...X"                   
63. "FrequencySignalBodyGyroscope.mean...Y"                   
64. "FrequencySignalBodyGyroscope.mean...Z"
65. "FrequencySignalBodyGyroscope.std...X"                         
66. "FrequencySignalBodyGyroscope.std...Y"                         
67. "FrequencySignalBodyGyroscope.std...Z"
68. "FrequencySignalBodyGyroscope.meanFrequency...X"               
69. "FrequencySignalBodyGyroscope.meanFrequency...Y"               
70. "FrequencySignalBodyGyroscope.meanFrequency...Z"

---

71. "FrequencySignalBodyAccelerometerMagnitude.mean.."             
72. "FrequencySignalBodyAccelerometerMagnitude.std.."
73. "FrequencySignalBodyAccelerometerMagnitude.meanFrequency.."

---

74. "FrequencySignalBodyAccelerometerJerkMagnitude.mean.."         
75. "FrequencySignalBodyAccelerometerJerkMagnitude.std.."          
76. "FrequencySignalBodyAccelerometerJerkMagnitude.meanFrequency.."

---

77. "FrequencySignalBodyGyroscopeMagnitude.mean.."                 
78. "FrequencySignalBodyGyroscopeMagnitude.std.."                  
79. "FrequencySignalBodyGyroscopeMagnitude.meanFrequency.."

---

80. "FrequencySignalBodyGyroscopeJerkMagnitude.mean.."             
81. "FrequencySignalBodyGyroscopeJerkMagnitude.std.."              
82. "FrequencySignalBodyGyroscopeJerkMagnitude.meanFrequency.."

The rest of the variables indicate vectors obtained by averaging the signals in a signal window sample, and contain the word "angle".
The explanation regarding the terms "Accelerometer", "Gyroscope", "Body", "Jerk" and "gravity" given for the time domain signals
applies also to angle variables.

83. "angle.TimeSignalBodyAccelerometerMean.gravity."               
84. "angle.TimeSignalBodyAccelerometerJerkMean..gravityMean."      
85. "angle.TimeSignalBodyGyroscopeMean.gravityMean."               
86. "angle.TimeSignalBodyGyroscopeJerkMean.gravityMean."

---

87. "angle.X.gravityMean."                                         
88. "angle.Y.gravityMean."                                         
89. "angle.Z.gravityMean."  

## The code

Here it will be explained the code used to obtain the data set stored in "accelerometers_data.txt". The script run_analysis.R includes
one commented part that gives the steps followed to download the "UCI HAR Dataset" folder, if the foler is not downloaded, one can
uncomment that part and run the whole script to get the files in the working directory and, in the end, obtained the required data
frame.

It was downloaded the zip folder containing all the data using `download.file(url, "accelerometer_data.zip", method = "curl")` in the 
working directory, using the url "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip". It was 
unzipped in the working directory and the file path to the unzipped folder "UCI HAR Dataset" was used to extract the necessary data. 
It was used the package `dplyr` and the following steps were taken:

*(Here starts the body of the run_analysis.R script)*

`WD <- getwd()`
`global_folder_path <- paste(WD,"UCI HAR Dataset", sep = "/")`

We stored the path to the folder to avoid writing it multiple times while extracting the data. We used the features
to label the columns of the data and the activity labels to replace the identifier numbers with the corresponding activity,
sowe stored these to data sets.

`features <- read.table(paste(global_folder_path,"features.txt", sep = "/"), row.names = 1)`

`activity_labels <- read.table(paste(global_folder_path,"activity_labels.txt", sep = "/"))`

We took the subject files to identify the measurements with the subject.

`subject_train <- read.table(paste(global_folder_path,"train/subject_train.txt", sep = "/"), col.names = "SubjectId")`

`subject_test <- read.table(paste(global_folder_path,"test/subject_test.txt", sep = "/"), col.names = "SubjectId")`

We stored the numbers identifying the activity that was made during the measurements.

`y_train <- read.table(paste(global_folder_path,"train/y_train.txt", sep = "/"), col.names = "ActivityType")`

`y_test <- read.table(paste(global_folder_path,"test/y_test.txt", sep = "/"), col.names = "ActivityType")`

Then, we stored the measurements. Note that we are using the features data frame to label de columns 

`X_train <- read.table(paste(global_folder_path,"train/X_train.txt", sep = "/"), col.names = features[,1], colClasses = "numeric")`

`X_test <- read.table(paste(global_folder_path,"test/X_test.txt", sep = "/"), col.names = features[,1], colClasses = "numeric")`

Afterwards, we start to bind the data frames to create one large and complete data frame. We begun binding the subjects ids with
the measures and activity labels and adding one new column to store whether the measures of the subject were used for training or testing.

`train <- cbind.data.frame(subject_train, SubjectType = "train", y_train, X_train)`

`test <- cbind.data.frame(subject_test, SubjectType = "test", y_test, X_test)`

We created the complete data frame and arranged it by subject id.

```
global_data <- 
        rbind.data.frame(train,test) %>%
        arrange(SubjectId)
```

We extracted only de columns that refer to mean and standard deviation (apart from the info, which is in the first three 
columns). We decided to select the columns whose name contains "mean" or "std" in any place. We also replaced the numbers labeling the
activities with its full names.

`reduced_data <- global_data[, c(1:3,grep("mean|std", names(global_data), ignore.case = T))]`   

```
for(i in 1:6){
        reduced_data$ActivityType <- gsub(activity_labels[i,1], activity_labels[i,2], reduced_data$ActivityType)
}
```

We replaced de column names with descriptive variable names as indicated in th first part od the code book, replacing any abreviature
with the full word.

```
names(reduced_data) <-
        names(reduced_data) %>%
        sub(pattern = "^t", replacement = "TimeSignal") %>%
        sub(pattern = "Freq", replacement = "Frequency") %>%
        sub(pattern = "^f", replacement = "FrequencySignal") %>%
        sub(pattern = "Acc", replacement = "Accelerometer") %>%
        sub(pattern = "Gyro", replacement = "Gyroscope") %>%
        sub(pattern = "Mag", replacement = "Magnitude") %>%
        sub(pattern = "BodyBody", replacement = "Body") %>%
        sub(pattern = "tBody", replacement = "TimeSignalBody")
```

At that moment we already had one large data set with all the information provided and descriptive activity labels. Then,
we took the average of the measurements by each subject and each activity, for what we made groups. We also made sure the
data we want to summarize is "numeric" type after all this processing.

`reduced_data <- group_by(reduced_data, SubjectId, ActivityType)`

```
for(j in 4:ncol(reduced_data)){
        reduced_data[[j]] <- as.numeric(reduced_data[[j]])
}
```

We finally took the mean of the measurements, by subject and activity. But in the summary we lose the column that tells us
whether the subject data was for training or testing, so we added it once again using join (and unique to avoid repetitions)
after the summary.

`tidy_data <- summarise_at(reduced_data, vars(TimeSignalBodyAccelerometer.mean...X:angle.Z.gravityMean.), mean)`
                          
`tidy_data <- unique(left_join(reduced_data[,1:2],tidy_data))`

After these steps we removed any intermediate data frames from the coding environment and printed the final dataset `tidy_data`.

Outside the code contained in run_analysis.R, we stored the data frame in the accelerometers_data.txt file using 
`write.table(tidy_data, "accelerometers_data.txt", row.names = F)`.
