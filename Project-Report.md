Practical Machine Learning Final Project 

by Jenny Wan

1. Introduction

In this project, a machine learning model is fitted to predict the manner in which people did their exercise using the data from accelerometers on the belt, forearm, arm, and dumbell of 6 participants. The caret package in R is used to implement the machine learning algorithm. The accuracy is estimated using 5-fold cross validation. Finally, 20 different cases are predicted using the model built previously.

2. Selecting Predictors

The raw training data downloaded from course website contains 19622 observations and 159 variables. Among all the variables, some columns are partially empty/filled with N/A values, so obviously they should be eliminated first.  
