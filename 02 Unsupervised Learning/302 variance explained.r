### Variance explained

# The second common plot type for understanding PCA models is a scree plot. 
# A scree plot shows the variance explained as the number of principal components increases. 
# Sometimes the cumulative variance explained is plotted as well.

# In this and the next exercise, you will prepare data from the pr.out model you created at the beginning of the chapter 
# for use in a scree plot. 
# Preparing the data for plotting is required because there is not a built-in function in R to create this type of plot.

### Instructions

# pr.out and the pokemon data are still available in your workspace.

# Assign to the variable pr.var the square of the standard deviations of the principal components (i.e. the variance). 
# The standard deviation of the principal components is available in the sdev component of the PCA model object.

# Assign to the variable pve the proportion of the variance explained, 
# calculated by dividing pr.var by the total variance explained by all principal components.

### R

> # Variability of each principal component: pr.var
> pr.var <- pr.out$sdev^2
> 
> # Variance explained by each principal component: pve
> pve <- pr.var / sum(pr.var)
> 
