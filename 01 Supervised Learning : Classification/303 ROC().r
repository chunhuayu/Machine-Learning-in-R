### Calculating ROC Curves and AUC

# The previous exercises have demonstrated that accuracy is a very misleading measure of model performance on imbalanced 
# datasets. Graphing the model's performance better illustrates the tradeoff between a model that is overly agressive 
# and one that is overly passive.

# In this exercise you will create a ROC curve and compute the area under the curve (AUC) to evaluate the logistic 
# regression model of donations you built earlier.

# The dataset donors with the column of predicted probabilities, donation_prob ,is already loaded in your workspace.

### Instructions

# Load the pROC package.
# Create a ROC curve with roc() and the columns of actual and predicted donations. Store the result as ROC.
# Use plot() to draw the ROC object. Specify col = "blue" to color the curve blue.
# Compute the area under the curve with auc().

### R

> # Load the pROC package
> library(pROC)
> 
> # Create a ROC curve
> ROC <- roc(donors$donated, donors$donation_prob)
> 
> # Plot the ROC curve
> plot(ROC, col = "blue")
> 
> # Calculate the area under the curve (AUC)
> auc(ROC)
Area under the curve: 0.5102
> 
