# CodeBook
This CodeBook tend to explain the information contain in `tidy_data.txt`, which is the output of the file `run_analysis.R`

## Introduction
The original dataset for the project consists in an experiment that have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.
The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

## Description
The coding is divided in 5 steps following the assignment instructions and describe in the readme file.
1. Once the data is read using the `read.table` command and after taking a quick view,
I decided to create `train_all` and `test_all` using `cbind` for merge `subject`, `activities` and `variables` of `train` and `test`. 
Then `rbind` was used to merge the `train_all` and `test_all`. This is a first step to tidy the data were the columns were the measurement and
in rows we have every subject and every activities with the result of the corresponding measurement.

2. Using the function `grep`, only the columns that contains mean and standard deviation for each measurement are taken.

3. Using the factor function I label the activities from `activities.txt`, changing the value numbers from 1 to 6 to the corresponding name.
  Hence, the activities labels are change in this way :
  
  Value | Activity
  ------|-----------------
  1 | Walking 
  2 | Walking Upstairs
  3 | Walking Downstars
  4 | Sitting
  5 | Standing
  6 | Laying

4. `melt` and `colnames` functions labels those vague columns names
5. Finally, `tidy_data.txt` is created with the mean of each measurement for each subject and activities. 
Thus, the number of row is 180 (30 subjects * 6 activities), and the measurement are in columns.

## More Information

More information of the data and its measurement can be found in:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones




