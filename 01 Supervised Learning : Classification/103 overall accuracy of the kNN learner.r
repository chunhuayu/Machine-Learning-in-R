### Classifying a collection of road signs

# Now that the autonomous vehicle has successfully stopped on its own, 
# your team feels confident allowing the car to continue the test course.

# The test course includes 58 additional road signs divided into three types:

# Stop Sign Speed Limit Sign Pedestrian Sign

# At the conclusion of the trial, you are asked to measure the car's overall performance at recognizing these signs.

# The class package and the dataset signs are already loaded in your workspace. So is the dataframe test_signs,
# which holds a set of observations you'll test your model on.

### Instructions

# Classify the test_signs data using knn().
# Set train equal to the observations in signs without labels.
# Use test_signs for the test argument, again without labels.
# For the cl argument, use the vector of labels provided for you.
# Use table() to explore the classifier's performance at identifying the three sign types (the confusion matrix).
# Create the vector signs_actual by extracting the labels from test_signs.
# Pass the vector of predictions and the vector of actual signs to table() to cross tabulate them.
# Compute the overall accuracy of the kNN learner using the mean() function.

### R Script

> # Use kNN to identify the test road signs
> sign_types <- signs$sign_type
> signs_pred <- knn(train = signs[-1], test = test_signs[-1], cl = sign_types)
> 
> # Create a confusion matrix of the predicted versus actual values
> signs_actual <- test_signs$sign_type
> table(signs_pred, signs_actual)
            signs_actual
signs_pred   pedestrian speed stop
  pedestrian         19     2    0
  speed               0    17    0
  stop                0     2   19
> 
> # Compute the accuracy
> mean(signs_pred == signs_actual)
[1] 0.9322034
> 
