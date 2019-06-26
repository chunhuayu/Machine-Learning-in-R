### Building and evaluating a larger tree

# Previously, you created a simple decision tree that used the applicant's credit score and requested loan amount to predict the loan outcome.

# Lending Club has additional information about the applicants, such as home ownership status, length of employment, loan purpose, and past bankruptcies, that may be useful for making more accurate predictions.

# Using all of the available applicant data, build a more sophisticated lending model using the random training dataset created previously. Then, use this model to make predictions on the testing dataset to estimate the performance of the model on future loan applications.

# The rpart package is loaded into the workspace and the loans_train and loans_test datasets have been created.

### Instructions

# Use rpart() to build a loan model using the training dataset and all of the available predictors. 
# ..............Again, leave the control argument alone.
# Applying the predict() function to the testing dataset, create a vector of predicted outcomes. 
# ..............Don't forget the type argument.
# Create a table() to compare the predicted values to the actual outcome values.
# Compute the accuracy of the predictions using the mean() function.


### R

> # Grow a tree using all of the available applicant data
> loan_model <- rpart(outcome ~ ., data = loans_train, method = "class", control = rpart.control(cp = 0))
> 
> # Make predictions on the test dataset
> loans_test$pred <- predict(loan_model, loans_test, type = "class")
> 
> # Examine the confusion matrix
> table(loans_test$pred, loans_test$outcome)
         
          default repaid
  default     821    546
  repaid      632    829
> 
> # Compute the accuracy on the test dataset
> mean(loans_test$pred == loans_test$outcome)
[1] 0.5834512
> 
