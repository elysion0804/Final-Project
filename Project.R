library(caret)

dat = read.csv("~/Dropbox/Practical Machine Learning/Project/Data/pml-training-copy.csv")

# Eliminate columns 
training <- dat[, colSums(is.na(dat))==0]

#set.seed(32323)

#foldstrain <- createFolds(y = training$classe, k = 5, list = TRUE, returnTrain = TRUE)

#testfold <- training[-foldstrain$Fold01,]

#trainfold <- training[foldstrain$Fold01,]

#modFit <- train(classe~., method = "rf", data = trainfold)

#testout <- predict(modFit, newdata = testfold)

# Set up training control

train_control <- trainControl(method = "cv", number = 5)

# train the model

modFit <- train(classe~., data = training, trControl = train_control, method = "rf" )

print(modFit)
