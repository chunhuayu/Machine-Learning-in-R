### Building simple logistic regression models

# The donors dataset contains 93,462 examples of people mailed in a fundraising solicitation for paralyzed military veterans. 
# The donated column is 1 if the person made a donation in response to the mailing and 0 otherwise. 
# This binary outcome will be the dependent variable for the logistic regression model.

# The remaining columns are features of the prospective donors that may influence their donation behavior. 
# These are the model's independent variables.

# When building a regression model, it is often helpful to form a hypothesis about 
# which independent variables will be predictive of the dependent variable. The bad_address column, 
# which is set to 1 for an invalid mailing address and 0 otherwise, seems like it might reduce the chances of a donation. 
# one might suspect that religious interest (interest_religion) and interest in veterans affairs (interest_veterans) would be 
# associated with greater charitable giving.

# In this exercise, you will use these three factors to create a simple model of donation behavior. 
# The dataset donors is available in your workspace.

### Instructions

# Examine donors using the str() function.
# Count the number of occurrences of each level of the donated variable using the table() function.
# Fit a logistic regression model using the formula interface and the three independent variables described above.
# Call glm() with the formula as its first argument and the dataframe as the data argument.
# Save the result as donation_model.
# Summarize the model object with summary()

