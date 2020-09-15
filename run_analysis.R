library(dplyr)

# We are going to store the working directory to create various paths to extract
# the downloaded data:

WD <- getwd()

### If the data isn't already in the working directory, uncomment this chunk
### of code

# download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",
#               "accelerometer_data.zip", method = "curl")

# zip_folder_path <- paste(WD,"accelerometer_data.zip", sep = "/")

# unzip(zip_folder_path)

# Having checked the name of the new directory of the data (resulting from unzip)
# we start to extract the data in different tables

global_folder_path <- paste(WD,"UCI HAR Dataset", sep = "/")

#### We will use the features to label the columns of the data:
features <- read.table(paste(global_folder_path,"features.txt", sep = "/"),
                       row.names = 1)

#### We will use the activity_labels to replace the identifier numbers with the
#### corresponding activity:
activity_labels <- read.table(paste(global_folder_path,"activity_labels.txt",
                                    sep = "/"))

#### These will serve to identify the subjects:
subject_train <- read.table(paste(global_folder_path,"train/subject_train.txt",
                                 sep = "/"), col.names = "SubjectId")

subject_test <- read.table(paste(global_folder_path,"test/subject_test.txt",
                                  sep = "/"), col.names = "SubjectId")

#### These are the numbers indicating the measured activity:
y_train <- read.table(paste(global_folder_path,"train/y_train.txt", sep = "/"), 
                      col.names = "ActivityType")

y_test <- read.table(paste(global_folder_path,"test/y_test.txt", sep = "/"), 
                     col.names = "ActivityType")

# We have stored in the above tables the features names of the measured
# variables, the ids of the subjects and the activity type corresponding to 
# each measurement. We will now store the measurements:

#### Note that we are using the features data frame to label de columns
X_train <- read.table(paste(global_folder_path,"train/X_train.txt", sep = "/"),
                       col.names = features[,1], colClasses = "numeric")

X_test <- read.table(paste(global_folder_path,"test/X_test.txt", sep = "/"),
                      col.names = features[,1], colClasses = "numeric")

# we start to bind the data frames to create one large and complete data frame

#### We bind the subjects ids with the measures and activity labels and add one
#### new column to store whether the measures of the subject were used for
#### training or testing
train <- cbind.data.frame(subject_train, SubjectType = "train",
                          y_train, X_train)

test <- cbind.data.frame(subject_test, SubjectType = "test",
                         y_test, X_test)

#### We create the complete data frame and arrange it by subject id:
global_data <- 
        rbind.data.frame(train,test) %>%
        arrange(SubjectId)

# We are going to extract only de columns that refer to mean and std 
# (apart from the info, which is in the first three columns). We decide to
# select the columns whose name contains "mean" or "std" in any place

reduced_data <- global_data[, c(1:3,grep("mean|std", names(global_data),
                                         ignore.case = T))]    

#### We replace the numbers labeling the activities with its full names
for(i in 1:6){
        reduced_data$ActivityType <- gsub(activity_labels[i,1],
                                          activity_labels[i,2],
                                          reduced_data$ActivityType)
}

#### We are going to replace de column names with descriptive variable names
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
        

###########At this moment we already have one large data set with all the 
###########information provided and descriptive activity labels


# Now we are going to take the average of the measurements by each subject and
# each activity. So we make the groups:
reduced_data <- group_by(reduced_data, SubjectId, ActivityType)

#### We make sure that the data we want to summarize is "numeric" type after all
#### this processing:

for(j in 4:ncol(reduced_data)){
        reduced_data[[j]] <- as.numeric(reduced_data[[j]])
}

tidy_data <- summarise_at(reduced_data,
                          vars(TimeSignalBodyAccelerometer.mean...X:angle.Z.gravityMean.),
                          mean)

#### In this summary we have lost the column that tells us whether the subject
#### data was for training or testing, so we add it once again using join (and
#### unique to avoid repetitions):
tidy_data <- unique(left_join(reduced_data[,1:2],tidy_data))

print(tidy_data)
#### Comment this part if you want to keep the intermediate data in 
#### the environment

rm(activity_labels,features,subject_test,subject_train,test,train,X_test,X_train,
   y_test,y_train,i,j,zip_folder_path)

rm(global_data,reduced_data,global_folder_path,WD)