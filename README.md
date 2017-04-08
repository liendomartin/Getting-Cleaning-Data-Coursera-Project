# Getting-Cleaning-Data-Coursera-Project
Coursera JHU specialization in Data Science

This resository host the required documentation for the  "Getting and Cleaning Data" course Project.
This course corresponds to the Data Science Specialization of John Hopkins University available in Coursera 

## General Instructions for this project
Create one R script called run_analysis.R that does the following.

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each    subject.

## Files in the respository

`run_analysis.R` contains the code use to perform the analysis and obtain the tidy data required in the assignment.
`CoodBook.md` describes the variables in the dataset and the main function used for the project.
`tidy_data.txt` contains the output require in the 5th step and uploaded in the course' assignment form, in order to be correct by peers.

## Recommendation
For this project I have used Rstudio IDE and library(Reshape2).

It's reccomend to read `tidy_data.txt` using the `read.table(header = TRUE)` function 

## Sources
[1] David Hood, post with insightful information about the assignment:
https://thoughtfulbloke.wordpress.com/2015/09/09/getting-and-cleaning-the-assignment/ .

[2] Wickham, H. (2014). "Tidy data". Journal of Statistical Software, 59(10), 1-23 
https://www.jstatsoft.org/article/view/v059i10/v59i10.pdf






