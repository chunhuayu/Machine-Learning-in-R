### Creating a nicely pruned tree

# Stopping a tree from growing all the way can lead it to ignore some aspects of the data or miss important trends 
# it may have discovered later.

# By using post-pruning, you can intentionally grow a large and complex tree then prune it to be smaller 
# and more efficient later on.

# In this exercise, you will have the opportunity to construct a visualization of the tree's performance versus complexity, 
# and use this information to prune the tree to an appropriate level.

# The rpart package is loaded into the workspace, along with loans_test and loans_train.

### Instructions

# Use all of the applicant variables and no pre-pruning to create an overly complex tree. 
# ........Make sure to set cp = 0 in rpart.control() to prevent pre-pruning.
# Create a complexity plot by using plotcp() on the model.
# Based on the complexity plot, prune the tree to a complexity of 0.0014 using the prune() function 
# ........with the tree and the complexity parameter.
# Compare the accuracy of the pruned tree to the original accuracy of 58.3%. 
# ........To calculate the accuracy use the predict() and mean() functions.

### R
> # Grow an overly complex tree
> loan_model <- rpart(outcome~.,data=loans_train,control=rpart.control(cp=0),method="class")
> 
> # Examine the complexity plot
> plotcp(loan_model)
> 
> # Prune the tree
> loan_model_pruned <- prune(loan_model, cp = 0.0014)
> 
> # Compute the accuracy of the pruned tree
> loans_test$pred <- predict(loan_model_pruned,loans_test,type="class")
> mean(loans_test$pred==loans_test$outcome)
[1] 0.6007779
> 
