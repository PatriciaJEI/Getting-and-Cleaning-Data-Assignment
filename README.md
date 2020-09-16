# Getting-and-Cleaning-Data-Assignment
This github repository contains the information regarding the Getting and Cleaning Data final assignment and required files and code.

It contains:

* The full folder "UCI HAR Dataset" used to obtain on first global data set, which was then tidyed and summarised,
* The final data set, stored in the file accelerometers_data.txt,
* The code used to tidy and analyse the global data is in the run_analysis.R script.
* This README.md

The "UCI HAR Dataset" folder contains in its first layer:
* One README.txt file,
* One file named "features_info.txt" that was read and then used to write in the code book the descriptions of the variables
* And the files "activity_labels.txt" and " "features.txt", that were used in the script to tidy the data (give names to the  measures stored in the columns and subsitute the activity number with the full name of the activity). 

Appart from these files, in the "UCI HAR Dataset" folder there are two folders named "test" and "train" that contain:
* The files "X_test.txt" and "X_train", respectively, with the data of the measurements from the acceleometers.
* The files "y_test.txt" and "y_train", respectively, with the identification number of the activity corresponding to each row of the measurements stored in the "X_test" and "X_train" files.
* The files "subject_test.txt" and "subject_train.txt", respectively, that stored the id number of the subject corresponding to each measurement.

The CodeBook.md file contains a description of the variable names and an explanation of the code stored in run_analysis.R and used to tidy and 
analyse the data and to provide the resulting data frame (stored in accelerometers_data.txt).

Project by Patricia Esteban-Infantes for the Cleaning and Tidying Data course of the Coursera's Data Science specialization of the Johns Hopkins University.
