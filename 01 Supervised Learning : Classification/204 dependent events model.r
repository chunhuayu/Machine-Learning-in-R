### A more sophisticated location model

# The locations dataset records Brett's location every hour for 13 weeks. 
# Each hour, the tracking information includes the daytype (weekend or weekday) as well as the 
# hourtype (morning, afternoon, evening, or night).

# Using this data, build a more sophisticated model to see how Brett's predicted location not only varies by 
# the day of week but also by the time of day. The dataset locations is already loaded in your workspace.

### Instructions

# Use the R formula interface to build a model where location depends on both daytype and hourtype. 
# .....Recall that the function naive_bayes() takes 2 arguments: formula and data.
# Predict Brett's location on a weekday afternoon using the dataframe weekday_afternoon and the predict() function.
# Do the same for a weekday_evening.

### R

> # The 'naivebayes' package is loaded into the workspace already
> 
> # Build a NB model of location
> locmodel <- naive_bayes(location~daytype+hourtype,locations)
> 
> # Predict Brett's location on a weekday afternoon
> predict(locmodel,newdata= weekday_afternoon)
[1] office
Levels: appointment campus home office restaurant store theater
> 
> # Predict Brett's location on a weekday evening
> predict(locmodel,newdata=weekday_evening)
[1] home
Levels: appointment campus home office restaurant store theater
> 
