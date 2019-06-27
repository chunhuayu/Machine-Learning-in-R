### PCA using prcomp()
# PCA models in R produce additional diagnostic and output components:

# center: the column means used to center to the data, or FALSE if the data weren't centered
# scale: the column standard deviations used to scale the data, or FALSE if the data weren't scaled
# rotation: the directions of the principal component vectors in terms of the original features/variables.
# ...........This information allows you to define new data in terms of the original principal components
# x: the value of each observation in the original dataset projected to the principal components

# In this exercise, you will create your first PCA model and observe the diagnostic results. 
# We have loaded the Pokemon data from earlier, which has four dimensions, and placed it in a variable called pokemon. 
# Your task is to create a PCA model of the data, then to inspect the resulting model using the summary() function.

### Instructions

# Create a PCA model of the data in pokemon, setting scale to TRUE. Store the result in pr.out.
# Inspect the result with the summary() function.

### R

> # Perform scaled PCA: pr.out
> pr.out=prcomp(pokemon,scale=TRUE)
> 
> # Inspect model output
> summary(pr.out)
Importance of components:
                          PC1    PC2    PC3     PC4
Standard deviation     1.4420 1.0013 0.7941 0.53595
Proportion of Variance 0.5199 0.2507 0.1577 0.07181
Cumulative Proportion  0.5199 0.7705 0.9282 1.00000
> 

### comment
# What is the minimum number of principal components that are required to describe at least 75% of the cumulative variance 
# in this dataset?____PC2

