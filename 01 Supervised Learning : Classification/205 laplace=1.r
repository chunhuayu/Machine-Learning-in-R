### Preparing for unforeseen circumstances

# While Brett was tracking his location over 13 weeks, he never went into the office during the weekend. 
# Consequently, the joint probability of P(office and weekend) = 0.

# Explore how this impacts the predicted probability that Brett may go to work on the weekend in the future. 
# you can see how using the Laplace correction will allow a small chance for these types of unforeseen circumstances.

# The model locmodel is already in your workspace, along with the dataframe weekend_afternoon.

### Instructions

# Use the locmodel to output predicted probabilities for a weekend afternoon by using the predict() function. 
# Remember to set the type argument.
# Create a new naive Bayes model with the Laplace smoothing parameter set to 1. 
# You can do this by setting the laplace argument in your call to naive_bayes(). Save this as locmodel2.
# See how the new predicted probabilities compare by using the predict() function on your new model.


### R

> # The 'naivebayes' package is loaded into the workspace already
> # The Naive Bayes location model (locmodel) has already been built
> 
> # Observe the predicted probabilities for a weekend afternoon
> predict(locmodel,newdata=weekend_afternoon,type="prob")
     appointment campus      home office restaurant      store theater
[1,]  0.02472535      0 0.8472217      0  0.1115693 0.01648357       0
> 
> # Build a new model using the Laplace correction
> locmodel2 <- naive_bayes(location~daytype+hourtype, locations,laplace=1)
> 
> # Observe the new predicted probabilities for a weekend afternoon
> predict(locmodel2,type="prob",newdata=weekend_afternoon)
     appointment      campus      home      office restaurant      store
[1,]  0.01107985 0.005752078 0.8527053 0.008023444  0.1032598 0.01608175
         theater
[1,] 0.003097769
> 
