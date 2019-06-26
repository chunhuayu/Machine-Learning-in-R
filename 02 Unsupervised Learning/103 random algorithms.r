### Handling random algorithms

# In the video, you saw how kmeans() randomly initializes the centers of clusters. 
# This random initialization can result in assigning observations to different cluster labels. 
# Also, the random initialization can result in finding different local minima for the k-means algorithm. 
# This exercise will demonstrate both results.

# At the top of each plot, the measure of model quality—total within cluster sum of squares error—will be plotted. 
# Look for the model(s) with the lowest error to find models with the better model results.

# Because kmeans() initializes observations to random clusters, it is important to set the random number 
# generator seed for reproducibility.

### Instructions

# The data, x, is still available in your workspace. Your task is to generate six kmeans() models on the data, 
# plotting the results of each, in order to see the impact of random initializations on model results.

# Set the random number seed to 1 with set.seed().
# For each iteration of the for loop, run kmeans() on x. Assume the number of clusters is 3 and number of starts (nstart) is 1.
# Visualize the cluster memberships using the col argument to plot(). 
# Observe how the measure of quality and cluster assignments vary among the six model runs.

### R

> # Set up 2 x 3 plotting grid
> par(mfrow = c(2, 3))
> 
> # Set seed
> set.seed(1)
> 
> for(i in 1:6) {
    # Run kmeans() on x with three clusters and one start
    km.out <- kmeans(x, centers=3, nstart=1)
    
    # Plot clusters
    plot(x, col = km.out$cluster , 
         main = km.out$tot.withinss, 
         xlab = "", ylab = "")
  }
> 
