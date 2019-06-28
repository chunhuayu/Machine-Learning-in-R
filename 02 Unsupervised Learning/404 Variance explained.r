### Variance explained

# In this exercise, you will produce scree plots showing the proportion of variance explained as the number of principal 
# components increases. The data from PCA must be prepared for these plots, 
# as there is not a built-in function in R to create them directly from the PCA model.

# As you look at these plots, ask yourself if there's an elbow in the amount of variance explained that might lead you to 
# pick a natural number of principal components. If an obvious elbow does not exist, as is typical in real-world datasets, 
# consider how else you might determine the number of principal components to retain based on the scree plot.

### Instructions

# The variables you created before, wisc.data, diagnosis, and wisc.pr, are still available.
# Calculate the variance of each principal component by squaring the sdev component of wisc.pr. 
# .....Save the result as an object called pr.var.
# Calculate the variance explained by each principal component by dividing by the total variance explained of 
# .....all principal components. Assign this to a variable called pve.
# Create a plot of variance explained for each principal component.
# Using the cumsum() function, create a plot of cumulative proportion of variance explained.

### R

> # Set up 1 x 2 plotting grid
> par(mfrow = c(1, 2))
> 
> # Calculate variability of each component
> pr.var <- wisc.pr$sdev^2
> 
> # Variance explained by each principal component: pve
> pve <- pr.var / sum(pr.var)
> 
> # Plot variance explained for each principal component
> plot(pve, xlab = "Principal Component", 
       ylab = "Proportion of Variance Explained", 
       ylim = c(0, 1), type = "b")
> 
> # Plot cumulative proportion of variance explained
> plot(cumsum(pve), xlab = "Principal Component", 
       ylab = "Cumulative Proportion of Variance Explained", 
       ylim = c(0, 1), type = "b")
> 
