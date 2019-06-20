### Seeing how the neighbors voted

# When multiple nearest neighbors hold a vote, 
# it can sometimes be useful to examine whether the voters were unanimous or widely separated.

# For example, knowing more about the voters' confidence in the classification could allow an autonomous vehicle to 
# use caution in the case there is any chance at all that a stop sign is ahead.

# In this exercise, you will learn how to obtain the voting results from the knn() function.

# The class package has already been loaded in your workspace along with the datasets signs, sign_types. and signs_actual.

### Instructions

# Build a kNN model with the prob = TRUE parameter to compute the vote proportions. Set k = 7.
# Use the attr() function to obtain the vote proportions for the predicted class. These are stored in the attribute "prob".
# Examine the first several vote outcomes and percentages 
# .....using the head() function to see how the confidence varies from sign to sign.


### R

> # Use the prob parameter to get the proportion of votes for the winning class
> sign_pred <- knn(train = signs[-1], test = signs_test[-1], cl = sign_types, k = 7, prob = TRUE)
> 
> # Get the "prob" attribute from the predicted classes
> sign_prob <- attr(sign_pred, "prob")
> 
> # Examine the first several predictions
> head(sign_pred)
[1] pedestrian pedestrian pedestrian stop       pedestrian pedestrian
Levels: pedestrian speed stop
> 
> # Examine the proportion of votes for the winning class
> head(sign_prob)
[1] 0.5714286 0.5714286 0.8571429 0.5714286 0.8571429 0.5714286
> 
