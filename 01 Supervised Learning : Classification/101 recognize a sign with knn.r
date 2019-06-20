### Recognizing a road sign with kNN

# After several trips with a human behind the wheel, it is time for the self-driving car to attempt the test course alone.

# As it begins to drive away, its camera captures the following image:

# Stop Sign

# Can you apply a kNN classifier to help the car recognize this sign?

# The dataset signs is loaded in your workspace along with the dataframe next_sign, 
# which holds the observation you want to classify.

### Instructions

# Load the class package.
# Create a vector of sign labels to use with kNN by extracting the column sign_type from signs.
# Identify the next_sign using the knn() function.
# Set the train argument equal to the signs data frame without the first column.
# Set the test argument equal to the data frame next_sign.
# Use the vector of labels you created as the cl argument.

### R

> # Load the 'class' package
> library(class)
> 
> # Create a vector of labels
> sign_types <- signs$sign_type
> 
> # Classify the next sign observed
> knn(train = signs[-1], test = next_sign, cl = sign_types)
[1] stop
Levels: pedestrian speed stop
> 

