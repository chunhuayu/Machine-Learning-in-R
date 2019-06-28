### Visualize variance explained

# Now you will create a scree plot showing the proportion of variance explained by each principal component, 
# as well as the cumulative proportion of variance explained.

# Recall from the video that these plots can help to determine the number of principal components to retain. 
# One way to determine the number of principal components to retain is by looking for an elbow in the scree plot showing 
# that as the number of principal components increases, the rate at which variance is explained decreases substantially. 
# In the absence of a clear elbow, you can use the scree plot as a guide for setting a threshold.

### Instructions

# The proportion of variance explained is still available in the pve object you created in the last exercise.

# Use plot() to plot the proportion of variance explained by each principal component.

# Use plot() and cumsum() (cumulative sum) to plot the cumulative proportion of variance explained as 
# a function of the number principal components.

### R

> # Plot variance explained for each principal component
> plot(pve, xlab = "Principal Component",
       ylab = "Proportion of Variance Explained",
       ylim = c(0, 1), type = "b")
> 
> # Plot cumulative proportion of variance explained
> plot(cumsum(pve), xlab = "Principal Component",
       ylab = "Cumulative Proportion of Variance Explained",
       ylim = c(0, 1), type = "b")
