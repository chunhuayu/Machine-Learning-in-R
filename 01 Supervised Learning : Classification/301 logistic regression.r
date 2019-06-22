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

> # Examine the dataset to identify potential independent variables
> str(donors)
'data.frame':	93462 obs. of  13 variables:
 $ donated          : int  0 0 0 0 0 0 0 0 0 0 ...
 $ veteran          : int  0 0 0 0 0 0 0 0 0 0 ...
 $ bad_address      : int  0 0 0 0 0 0 0 0 0 0 ...
 $ age              : int  60 46 NA 70 78 NA 38 NA NA 65 ...
 $ has_children     : int  0 1 0 0 1 0 1 0 0 0 ...
 $ wealth_rating    : int  0 3 1 2 1 0 2 3 1 0 ...
 $ interest_veterans: int  0 0 0 0 0 0 0 0 0 0 ...
 $ interest_religion: int  0 0 0 0 1 0 0 0 0 0 ...
 $ pet_owner        : int  0 0 0 0 0 0 1 0 0 0 ...
 $ catalog_shopper  : int  0 0 0 0 1 0 0 0 0 0 ...
 $ recency          : Factor w/ 2 levels "CURRENT","LAPSED": 1 1 1 1 1 1 1 1 1 1 ...
 $ frequency        : Factor w/ 2 levels "FREQUENT","INFREQUENT": 1 1 1 1 1 2 2 1 2 2 ...
 $ money            : Factor w/ 2 levels "HIGH","MEDIUM": 2 1 2 2 2 2 2 2 2 2 ...
> 
> # Explore the dependent variable
> table(donors$donated)

    0     1 
88751  4711
> 
> # Build the donation model
> donation_model <- glm(donated ~ bad_address + interest_religion + interest_veterans, 
                        data = donors, family = "binomial")
> 
> # Summarize the model results
> summary(donation_model)

Call:
glm(formula = donated ~ bad_address + interest_religion + interest_veterans, 
    family = "binomial", data = donors)

Deviance Residuals: 
    Min       1Q   Median       3Q      Max  
-0.3480  -0.3192  -0.3192  -0.3192   2.5678  

Coefficients:
                  Estimate Std. Error  z value Pr(>|z|)    
(Intercept)       -2.95139    0.01652 -178.664   <2e-16 ***
bad_address       -0.30780    0.14348   -2.145   0.0319 *  
interest_religion  0.06724    0.05069    1.327   0.1847    
interest_veterans  0.11009    0.04676    2.354   0.0186 *  
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

(Dispersion parameter for binomial family taken to be 1)

    Null deviance: 37330  on 93461  degrees of freedom
Residual deviance: 37316  on 93458  degrees of freedom
AIC: 37324

Number of Fisher Scoring iterations: 5
> 
