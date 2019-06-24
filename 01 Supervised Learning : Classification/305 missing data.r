# ifelse syntax: ifelse(test, yes, no)
# ....Conditional Element Selection
# ....ifelse returns a value with the same shape as test which is filled with elements selected from either yes or 
# ....no depending on whether the element of test is TRUE or FALSE.

### Handling missing data

# Some of the prospective donors have missing age data. Unfortunately, 
# R will exclude any cases with NA values when building a regression model.

# One workaround is to replace, or impute, the missing values with an estimated value. 
# After doing so, you may also create a missing data indicator to model the possibility that cases with missing data 
# are different in some way from those without.

# The dataframe donors is loaded in your workspace.

### Instructions

# Use summary() on donors$age to find the average age of prospects with non-missing data.

# Use ifelse() and the test is.na(donors$age) to impute the average (rounded to 2 decimal places) for cases with missing age. 
# Be sure to also ignore NAs.

# Create a binary dummy variable named missing_age indicating the presence of missing data using another ifelse() call 
# and the same test.

### R

> # Find the average age among non-missing values
> summary(donors$age)
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
   1.00   48.00   62.00   61.65   75.00   98.00   22546
> 
> # Impute missing age values with the mean age
> donors$imputed_age <- ifelse(is.na(donors$age), round(mean(donors$age, na.rm = TRUE), 2), donors$age)
> 
> # Create missing value indicator for age
> donors$missing_age <- ifelse(is.na(donors$age), 1, 0)
> 

