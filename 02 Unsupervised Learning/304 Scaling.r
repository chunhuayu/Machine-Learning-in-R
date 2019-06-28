### Practical issues: scaling

# You saw in the video that scaling your data before doing PCA changes the results of the PCA modeling. 
# Here, you will perform PCA with and without scaling, then visualize the results using biplots.

# Sometimes scaling is appropriate when the variances of the variables are substantially different. 
# This is commonly the case when variables have different units of measurement, for example, 
# degrees Fahrenheit (temperature) and miles (distance). 
# Making the decision to use scaling is an important step in performing a principal component analysis.

### Instructions

# The same Pokemon dataset is available in your workspace as pokemon, but one new variable has been added: Total.

# There is some code at the top of the editor to calculate the mean and standard deviation of each variable in the model. Run this code to see how the scale of the variables differs in the original data.
# Create a PCA model of pokemon with scaling, assigning the result to pr.with.scaling.
# Create a PCA model of pokemon without scaling, assigning the result to pr.without.scaling.
# Use biplot() to plot both models (one at a time) and compare their outputs.

### R

> # Mean of each variable
> colMeans(pokemon)
    Total HitPoints    Attack   Defense     Speed 
   448.82     71.08     81.22     78.44     66.58
> 
> # Standard deviation of each variable
> apply(pokemon, 2, sd)
    Total HitPoints    Attack   Defense     Speed 
119.32321  25.62193  33.03078  32.05809  27.51036
> 
> # PCA model with scaling: pr.with.scaling
> pr.with.scaling <- prcomp(pokemon, scale = TRUE)
> 
> # PCA model without scaling: pr.without.scaling
> pr.without.scaling <- prcomp(pokemon, scale = FALSE)
> 
> # Create biplots of both for comparison
> biplot(pr.with.scaling)
> biplot(pr.without.scaling)
> 
