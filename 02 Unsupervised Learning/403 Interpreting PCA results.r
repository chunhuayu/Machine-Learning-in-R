### Interpreting PCA results

# Now you'll use some visualizations to better understand your PCA model. You were introduced to one of these visualizations, 
# the biplot, in an earlier chapter.

# You'll run into some common challenges with using biplots on real-world data containing a non-trivial number of observations
# and variables, then you'll look at some alternative visualizations. 
# You are encouraged to experiment with additional visualizations before moving on to the next exercise.

### Instructions

# The variables you created before, wisc.data, diagnosis, and wisc.pr, are still available.
# Create a biplot of the wisc.pr data. What stands out to you about this plot? Is it easy or difficult to understand? Why?
# Execute the code to scatter plot each observation by principal components 1 and 2, coloring the points by the diagnosis.
# Repeat the same for principal components 1 and 3. What do you notice about these plots?

### R
> # Create a biplot of wisc.pr
> biplot(wisc.pr)
> 
> # Scatter plot observations by components 1 and 2
> plot(wisc.pr$x[, c(1, 2)], col = (diagnosis + 1), 
       xlab = "PC1", ylab = "PC2")
> 
> # Repeat for components 1 and 3
> plot(wisc.pr$x[, c(1, 3)], col = (diagnosis + 1), 
       xlab = "PC1", ylab = "PC3")
> 
> # Do additional data exploration of your choosing below (optional)
> 
