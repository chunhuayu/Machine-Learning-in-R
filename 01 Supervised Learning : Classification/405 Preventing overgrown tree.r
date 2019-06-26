Preventing overgrown trees

The tree grown on the full set of applicant data grew to be extremely large and extremely complex, with hundreds of splits and leaf nodes containing only a handful of applicants. This tree would be almost impossible for a loan officer to interpret.

Using the pre-pruning methods for early stopping, you can prevent a tree from growing too large and complex. See how the rpart control options for maximum tree depth and minimum split count impact the resulting tree.

rpart is loaded.

Instructions 1/2
75 XP

Use rpart() to build a loan model using the training dataset and all of the available predictors.
Set the model controls using rpart.control() with parameters cp set to 0 and maxdepth set to 6.
See how the test set accuracy of the simpler model compares to the original accuracy of 58.3%.
First create a vector of predictions using the predict() function.
Compare the predictions to the actual outcomes and use mean() to calculate the accuracy.

### R
> # Grow a tree with maxdepth of 6
> loan_model <- rpart(outcome~.,data=loans_train,control=rpart.control(cp=0, maxdepth=6),method="class")
> 
> # Make a class prediction on the test set
> loans_test$pred <- predict(loan_model,loans_test,type="class")
> 
> # Compute the accuracy of the simpler tree
> mean(loans_test$outcome==loans_test$pred)
[1] 0.5919378
> 

