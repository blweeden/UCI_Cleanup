Instructions for run_analysis.R
======

Original Data
------
This is a cleaned and summarized data set based on data from the **Human Activity Recognition Using Smartphones Data Set**.  The original data set contains data regarding measurements taken from the accelerometers and gyroscopes in smartphones carried by test subjects while performing various activitites.

Processing
------
The run_analysis.R script takes data obtained from the **Human Activity Recognition Using Smartphones Data Set** and extracts out measurements on the mean and standard deviation.  Note: angle variables and weighted average of frequency component variables were left out of this analysis   The script then averages this remaining data for each combination of test subject and type of activity being performed.  The output of this is written to the  the tidy_data.txt outuput file.

To use the run_analysis.R script, please download the raw data set from here:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

Once the data is downloaded, please set your working directory to the root folder of the data set
(the "UCI HAR Dataset" folder) and then execute the run_analysis.R script.

To use the tidy_data.txt file within R, please read it in with the following command:
read.table("Tidy_Data.txt", header=TRUE)