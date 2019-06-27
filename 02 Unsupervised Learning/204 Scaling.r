### Practical matters: scaling

# Recall from the video that clustering real data may require scaling the features if they have different distributions. 
# So far in this chapter, you have been working with synthetic data that did not need scaling.

# In this exercise, you will go back to working with "real" data, the pokemon dataset introduced in the first chapter. 
# You will observe the distribution (mean and standard deviation) of each feature, scale the data accordingly, 
# then produce a hierarchical clustering model using the complete linkage method.

### Instructions

# The data is stored in the pokemon object in your workspace.
# Observe the mean of each variable in pokemon using the colMeans() function.
# Observe the standard deviation of each variable using the apply() and sd() functions. 
# ....Since the variables are the columns of your matrix, make sure to specify 2 as the MARGIN argument to apply().
# Scale the pokemon data using the scale() function and store the result in pokemon.scaled.
# Create a hierarchical clustering model of the pokemon.scaled data using the complete linkage method. 
# ....Manually specify the method argument and store the result in hclust.pokemon.

### R

> # View column standard deviations
> apply(pokemon, 2, sd)
     HitPoints         Attack        Defense  SpecialAttack SpecialDefense 
      25.53467       32.45737       31.18350       32.72229       27.82892 
         Speed 
      29.06047
> 
> # Scale the data
> pokemon.scaled <- scale(pokemon)
> 
> # Create hierarchical clustering model: hclust.pokemon
> hclust.pokemon <- hclust(dist(pokemon.scaled), method = "complete")
> 
