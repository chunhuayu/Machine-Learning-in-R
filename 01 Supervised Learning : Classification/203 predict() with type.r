### Examining "raw" probabilities

# The naivebayes package offers several ways to peek inside a Naive Bayes model.

# Typing the name of the model object provides the a priori (overall) and 
# conditional probabilities of each of the model's predictors. 
# If one were so inclined, you might use these for calculating posterior (predicted) probabilities by hand.

# Alternatively, R will compute the posterior probabilities for you 
# if the type = "prob" parameter is supplied to the predict() function.

# Using these methods, examine how the model's predicted 9am location probability varies from day-to-day. 
# The model locmodel that you fit in the previous exercise is in your workspace.

### Instructions

# Print the locmodel object to the console to view the computed a priori and conditional probabilities.
# Use the predict() function similarly to the previous exercise, 
# ........ but with type = "prob" to see the predicted probabilities for Thursday at 9am.
# Compare these to the predicted probabilities for Saturday at 9am.

### R

> # The 'naivebayes' package is loaded into the workspace
> # and the Naive Bayes 'locmodel' has been built
> 
> # Examine the location prediction model
> locmodel
===================== Naive Bayes ===================== 
Call: 
naive_bayes.formula(formula = location ~ daytype, data = where9am)

A priori probabilities: 

appointment      campus        home      office 
 0.01098901  0.10989011  0.45054945  0.42857143 

Tables: 
         
daytype   appointment    campus      home    office
  weekday   1.0000000 1.0000000 0.3658537 1.0000000
  weekend   0.0000000 0.0000000 0.6341463 0.0000000
> 
> # Obtain the predicted probabilities for Thursday at 9am
> predict(locmodel, newdata= thursday9am , type = "prob")
     appointment    campus      home office
[1,]  0.01538462 0.1538462 0.2307692    0.6
> 
> # Obtain the predicted probabilities for Saturday at 9am
> predict(locmodel,newdata = saturday9am,  type = "prob")
     appointment campus home office
[1,]           0      0    1      0
> 
