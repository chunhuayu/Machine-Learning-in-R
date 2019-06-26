### Building a random forest model

# In spite of the fact that a forest can contain hundreds of trees, 
# growing a decision tree forest is perhaps even easier than creating a single highly-tuned tree.

# Using the randomForest package, build a random forest and see how it compares to the single trees you built previously.

# Keep in mind that due to the random nature of the forest, the results may vary slightly each time you create the forest.

### Instructions

# Load the randomForest package.
# Build a random forest model using all of the loan application variables. 
# The randomForest function also uses the formula interface.
# Compute the accuracy of the random forest model to compare to the original tree's accuracy of 58.3% 
# using predict() and mean()

> # Load the randomForest package
> library(randomForest)
> 
> # Build a random forest model
> loan_model <- randomForest(outcome ~ ., data = loans_train)
> 
> # Compute the accuracy of the random forest
> loans_test$pred <- predict(loan_model, loans_test)
> mean(loans_test$pred == loans_test$outcome)
[1] 0.6000707
> summary(loan_model)
                Length Class  Mode     
call                3  -none- call     
type                1  -none- character
predicted        8484  factor numeric  
err.rate         1500  -none- numeric  
confusion           6  -none- numeric  
votes           16968  matrix numeric  
oob.times        8484  -none- numeric  
classes             2  -none- character
importance         13  -none- numeric  
importanceSD        0  -none- NULL     
localImportance     0  -none- NULL     
proximity           0  -none- NULL     
ntree               1  -none- numeric  
mtry                1  -none- numeric  
forest             14  -none- list     
y                8484  factor numeric  
test                0  -none- NULL     
inbag               0  -none- NULL     
terms               3  terms  call
> 
