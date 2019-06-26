### Creating random test datasets

# Before building a more sophisticated lending model, it is important to hold out a portion of the loan data to simulate 
# how well it will predict the outcomes of future loan applicants.

# As depicted in the following image, you can use 75% of the observations for training and 25% for testing the model.

# Decision Tree Plot

# The sample() function can be used to generate a random sample of rows to include in the training set. 
# Simply supply it the total number of observations and the number needed for training.

# Use the resulting vector of row IDs to subset the loans into training and testing datasets. 
# The dataset loans is loaded in your workspace.

### Instructions

# Apply the nrow() function to determine how many observations are in the loans dataset, the number needed for a 75% sample.
# Use the sample() function to create an integer vector of row IDs for the 75% sample. 
# The first argument of sample() should be the number of rows in the data set, 
# .........and the second is the number of rows you need in your training set.
# Subset the loans data using the row IDs to create the training dataset. Save this as loans_train.
# Subset loans again, but this time select all the rows that are not in sample_rows. Save this as loans_test

### R

> # Determine the number of rows for training
> nrow(loans)*0.75
[1] 8484
> 
> # Create a random sample of row IDs
> sample_rows <- sample(11312, 8484)
> 
> # Create the training dataset
> loans_train <- loans[sample_rows,]
> 
> # Create the test dataset
> loans_test <- loans[-sample_rows, ]
> 
