### A simple Naive Bayes location model

# The previous exercises showed that the probability that Brett is at work or at home at 9am is highly dependent on 
# ....whether it is the weekend or a weekday.

# To see this finding in action, use the where9am data frame to build a Naive Bayes model on the same data.

# You can then use this model to predict the future: where does the model think that Brett will be at 9am on Thursday and 
# at 9am on Saturday?

# The dataframe where9am is available in your workspace. This dataset contains information about Brett's location at 9am 
# on different days.

### Instructions

# Load the naivebayes package.
# Use naive_bayes() with a formula like y ~ x to build a model of location as a function of daytype.
# Forecast the Thursday 9am location using predict() with the thursday9am object as the newdata argument.
# Do the same for predicting the saturday9am location.

### R

> # Load the naivebayes package
> library(naivebayes)
> 
> # Build the location prediction model
> locmodel <- naive_bayes(location~daytype, data = where9am)
> 
> # Predict Thursday's 9am location
> predict(locmodel, newdata=thursday9am)
[1] office
Levels: appointment campus home office
> 
> # Predict Saturdays's 9am location
> predict(locmodel, newdata=saturday9am)
[1] home
Levels: appointment campus home office
> 
