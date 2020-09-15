# Getting-and-Cleaning-Data-Assignment
This github repository contains the information regarding the Getting and Cleaning Data final assignment and required files and code.

It contains the full folder "UCI HAR Dataset" used to obtain on first global data set, which was then tidyed and summarised. The final data set
is stored in the file accelerometers_data.txt while the code used to tidy and analyse the global data is in the run_analysis.R script.

The "UCI HAR Dataset" folder contains in its first layer one README.txt file, one file named "features_info.txt" that was read and
then used to write in the code book the descriptions of the variables, and the files "activity_labels.txt" and " "features.txt", that were used
in the script to tidy the data (give names to the  measures stored in the columns and subsitute the activity number with the full name of the
activity). Appart from these files, there are two folders name "test" and "train" that contain the files "X_test.txt", "y_test.txt", 
"subject_test.txt" and "X_train.txt", "y_train.txt", "subject_train.txt" respectively, that stored the full measurements data and other data of
interest to create a complete daat frame.

The Code Book contains a description of the variable names and an explanation of the code stored in run_analysis.R and used to tidy and analyse
the data and to provide the resulting data frame (stored in accelerometers_data.txt).
