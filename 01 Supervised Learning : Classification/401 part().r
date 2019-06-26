### Building a simple decision tree

# The loans dataset contains 11,312 randomly-selected people who were applied for and later received loans from Lending Club, 
# a US-based peer-to-peer lending company.

# You will use a decision tree to try to learn patterns in the outcome of these loans (either repaid or default) based 
# on the requested loan amount and credit score at the time of application.

# Then, see how the tree's predictions differ for an applicant with good credit versus one with bad credit.

# The dataset loans is already in your workspace.

### Instructions

# Load the rpart package.
# Fit a decision tree model with the function rpart().
# Supply the R formula that specifies outcome as a function of loan_amount and credit_score as the first argument.
# Leave the control argument alone for now. (You'll learn more about that later!)
# Use predict() with the resulting loan model to predict the outcome for the good_credit applicant. 
# ...Use the type argument to predict the "class" of the outcome.
# Do the same for the bad_credit applicant.

### R

> # Load the rpart package
> library(rpart)
> 
> # Build a lending model predicting loan outcome versus loan amount and credit score
> loan_model <- rpart(outcome ~ loan_amount + credit_score, data = loans, method = "class", control = rpart.control(cp = 0))
> 
> # Make a prediction for someone with good credit
> predict(loan_model, newdata=good_credit, type = "class")
     1 
repaid 
Levels: default repaid
> 
> # Make a prediction for someone with bad credit
> predict(loan_model,newdata=bad_credit,type="class")
      1 
default 
Levels: default repaid
> 
