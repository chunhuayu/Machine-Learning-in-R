### Coding categorical features

# Sometimes a dataset contains numeric values that represent a categorical feature.
# In the donors dataset, wealth_rating uses numbers to indicate the donor's wealth level:

# 0 = Unknown
# 1 = Low
# 2 = Medium
# 3 = High

### Instructions
# Create a factor from the numeric wealth_rating with labels as shown above by passing the factor() function the column 
# ...you want to convert, the individual levels, and the labels.

# Use relevel() to change the reference category to Medium. The first argument should be your factor column.
# Build a logistic regression model using the column wealth_rating to predict donated and display the result with summary().


### R
> # Convert the wealth rating to a factor
> donors$wealth_rating <- factor(donors$wealth_rating, levels = c(0, 1, 2, 3), labels = c("Unknown", "Low", "Medium", "High"))
> 
> # Use relevel() to change reference category
> donors$wealth_rating <- relevel(donors$wealth_rating, ref = "Medium")
> 
> # See how our factor coding impacts the model
> summary(glm(donated ~ wealth_rating, data = donors, family = "binomial"))

Call:
glm(formula = donated ~ wealth_rating, family = "binomial", data = donors)

Deviance Residuals: 
    Min       1Q   Median       3Q      Max  
-0.3320  -0.3243  -0.3175  -0.3175   2.4582  

Coefficients:
                     Estimate Std. Error z value Pr(>|z|)    
(Intercept)          -2.91894    0.03614 -80.772   <2e-16 ***
wealth_ratingUnknown -0.04373    0.04243  -1.031    0.303    
wealth_ratingLow     -0.05245    0.05332  -0.984    0.325    
wealth_ratingHigh     0.04804    0.04768   1.008    0.314    
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

(Dispersion parameter for binomial family taken to be 1)

    Null deviance: 37330  on 93461  degrees of freedom
Residual deviance: 37323  on 93458  degrees of freedom
AIC: 37331

Number of Fisher Scoring iterations: 5
> 
