# Load caret package in R
library(caret)

# Read revised training data (pml-training-copy.csv) that contains all the considered valuable predictors
dat = read.csv("~/Dropbox/Practical Machine Learning/Project/Data/pml-training-copy.csv")

# Eliminate columns that contain NAs
training <- dat[, colSums(is.na(dat))==0]

# Set up training control
# Use k-fold cross validation, set k = 5
train_control <- trainControl(method = "cv", number = 5)

# Train the model using "train" function
modFit <- train(classe~., data = training, trControl = train_control, method = "rf" )

# Print the summary of the model. Get the accuracy.
print(modFit)

# Read revised testing data (pml-testing-copy.csv) that contains all the considered valuable predictors
dat = read.csv("~/Dropbox/Practical Machine Learning/Project/Data/pml-testing-copy.csv")

# Eliminate columns that contain NAs
testing <- dat[, colSums(is.na(dat))==0]

# Apply the model to the testing set
outcome <- predict(modFit, newdata = testing)

# Print the final prediction
outcome
