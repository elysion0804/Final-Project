Practical Machine Learning Final Project 

by Jenny Wan

1. Introduction

In this project, a machine learning model is fitted to predict the manner in which people did their exercise using the data from accelerometers on the belt, forearm, arm, and dumbell of 6 participants. The caret package in R is used to implement the machine learning algorithm. The accuracy is estimated using 5-fold cross validation. Finally, 20 different cases are predicted using the model built previously.

2. Selecting Predictors

The predictors are selected by observing the content of raw data file. The raw training data downloaded from course website contains 19622 observations and 159 variables. It's too time consuming and does not make sense to predict the model blindly with all the other variables. After taking a look at the data, it turns out that some columns are partially empty/filled with N/A values, so obviously they should be eliminated first.  
Variables such as the order of data (1st column), user name, time stamps and number of windows are not relevant to the prediction. So they are removed from the data sheet manually. The variables that are closely related to the accelerometers are selected. The variables that start with "total_accel_" also do not show much variance and do not seem to be relevant to the classe. They are also removed from the predictor list. 
After making the selection, only 48 predictors are left and will be used in building the prediction model.

3. Model and Cross Validation

The problem proposed is a classification problem. There are still 48 predictors exist in the revised data file. Random forest method is thus selected to build vairous classification trees and vote for the final prediction. 
To estimate the out of sample accuracy, a 5-fold cross validation is used when training the model. Below is the summary of final model:

Random Forest 

19622 samples
   48 predictor
    5 classes: 'A', 'B', 'C', 'D', 'E' 

No pre-processing
Resampling: Cross-Validated (5 fold) 
Summary of sample sizes: 15697, 15697, 15698, 15698, 15698 
Resampling results across tuning parameters:

  mtry  Accuracy   Kappa    
   2    0.9945978  0.9931664
  25    0.9943430  0.9928443
  48    0.9895525  0.9867836

Accuracy was used to select the optimal model using  the largest value.
The final value used for the model was mtry = 2. 

