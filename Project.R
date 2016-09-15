library(caret)

dat = read.csv("~/Dropbox/Practical Machine Learning/Project/Data/pml-training.csv")

# Eliminate columns 
training <- dat[, colSums(is.na(dat))==0]


# Set up training control

train_control <- trainControl(method = "cv", number = 5)

# train the model

modFit <- train(classe~., data = training, trControl = train_control, method = "rf" )

print(modFit)
