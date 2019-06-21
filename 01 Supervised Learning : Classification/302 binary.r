### Making a binary prediction

# In the previous exercise, you used the glm() function to build a logistic regression model of donor behavior. 
# As with many of R's machine learning methods, you can apply the predict() function to the model object to 
# forecast future behavior. 
# By default, predict() outputs predictions in terms of log odds unless type = "response" is specified. 
# This converts the log odds to probabilities.

# Because a logistic regression model estimates the probability of the outcome, 
# it is up to you to determine the threshold at which the probability implies action. 
# One must balance the extremes of being too cautious versus being too aggressive. 
# For example, if you were to solicit only the people with a 99% or greater donation probability, 
# you may miss out on many people with lower estimated probabilities that still choose to donate. 
# This balance is particularly important to consider for severely imbalanced outcomes, 
# such as in this dataset where donations are relatively rare.

# The dataset donors and the model donation_model are already loaded in your workspace.

### Instructions

# Use the predict() function to estimate each person's donation probability. 
# Use the type argument to get probabilities. Assign the predictions to a new column called donation_prob.
# Find the actual probability that an average person would donate by passing the mean() function the appropriate 
# column of the donors dataframe.
# Use ifelse() to predict a donation if their predicted donation probability is greater than average. 
# Assign the predictions to a new column called donation_pred.
# Use the mean() function to calculate the model's accuracy.

### R
> # Estimate the donation probability
> donors$donation_prob <- predict(donation_model, type = "response")
> 
> # Find the donation probability of the average prospect
> mean(donors$donated)
[1] 0.05040551
> 
> # Predict a donation if probability of donation is greater than average
> donors$donation_pred <- ifelse(donors$donation_prob > 0.0504, 1, 0)
> 
> # Calculate the model's accuracy
> mean(donors$donated == donors$donation_pred)
[1] 0.794815
> 
