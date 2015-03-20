Codebook for refactored UCI HAR Dataset
====================

Variables
---------------------

Dataset contains following variables :

tBodyAcc-mean()-X               
tBodyAcc-mean()-Y              
tBodyAcc-mean()-Z               
tBodyAcc-std()-X               
tBodyAcc-std()-Y                
tBodyAcc-std()-Z               
tGravityAcc-mean()-X            
tGravityAcc-mean()-Y           
tGravityAcc-mean()-Z            
tGravityAcc-std()-X            
tGravityAcc-std()-Y             
tGravityAcc-std()-Z            
tBodyAccJerk-mean()-X           
tBodyAccJerk-mean()-Y          
tBodyAccJerk-mean()-Z           
tBodyAccJerk-std()-X           
tBodyAccJerk-std()-Y            
tBodyAccJerk-std()-Z           
tBodyGyro-mean()-X             
tBodyGyro-mean()-Y             
tBodyGyro-mean()-Z              
tBodyGyro-std()-X              
tBodyGyro-std()-Y               
tBodyGyro-std()-Z              
tBodyGyroJerk-mean()-X          
tBodyGyroJerk-mean()-Y         
tBodyGyroJerk-mean()-Z          
tBodyGyroJerk-std()-X          
tBodyGyroJerk-std()-Y           
tBodyGyroJerk-std()-Z          
tBodyAccMag-mean()              
tBodyAccMag-std()              
tGravityAccMag-mean()           
tGravityAccMag-std()           
tBodyAccJerkMag-mean()          
tBodyAccJerkMag-std()          
tBodyGyroMag-mean()             
tBodyGyroMag-std()             
tBodyGyroJerkMag-mean()         
tBodyGyroJerkMag-std()         
fBodyAcc-mean()-X           
fBodyAcc-mean()-Y              
fBodyAcc-mean()-Z               
fBodyAcc-std()-X               
fBodyAcc-std()-Y                
fBodyAcc-std()-Z               
fBodyAcc-meanFreq()-X           
fBodyAcc-meanFreq()-Y          
fBodyAcc-meanFreq()-Z           
fBodyAccJerk-mean()-X          
fBodyAccJerk-mean()-Y           
fBodyAccJerk-mean()-Z          
fBodyAccJerk-std()-X           
fBodyAccJerk-std()-Y           
fBodyAccJerk-std()-Z            
fBodyAccJerk-meanFreq()-X      
fBodyAccJerk-meanFreq()-Y       
fBodyAccJerk-meanFreq()-Z      
fBodyGyro-mean()-X         
fBodyGyro-mean()-Y             
fBodyGyro-mean()-Z              
fBodyGyro-std()-X              
fBodyGyro-std()-Y               
fBodyGyro-std()-Z              
fBodyGyro-meanFreq()-X          
fBodyGyro-meanFreq()-Y         
fBodyGyro-meanFreq()-Z          
fBodyAccMag-mean()        
fBodyAccMag-std()             
fBodyAccMag-meanFreq()         
fBodyBodyAccJerkMag-mean()      
fBodyBodyAccJerkMag-std()      
fBodyBodyAccJerkMag-meanFreq()  
fBodyBodyGyroMag-mean()  
fBodyBodyGyroMag-std()          
fBodyBodyGyroMag-meanFreq()    
fBodyBodyGyroJerkMag-mean()     
fBodyBodyGyroJerkMag-std()     
fBodyBodyGyroJerkMag-meanFreq() 
Total_Mean 
Activity                      
Subject      

Remarks for the data
---------------------

Activity column represents the activity which is carried during gathering the data.
Subject column represents the subject who did the activity.
Total mean column represents the average of recorded features for every subject for every activity.
Other columns represents the features gathered from accelerometer and gyroscope.

Cleaning Procedure
---------------------

Originally data was consists of several different data files which contained the information about features gathered, activities done and subjects.

During the cleaning of the data, train and test sets for activity, subject and feature datasets are merged. Only features with mean or standard deviation is extracted for the tidy dataset. Features of X-test and X-train dataset are labeled with their corresponding feature labels. Activities in Y-test and Y-train are also labeled as same way. A new column of Total Mean is added into the dataset.