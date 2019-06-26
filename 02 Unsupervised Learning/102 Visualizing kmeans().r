### Visualizing and interpreting results of kmeans()

# One of the more intuitive ways to interpret the results of k-means models is by plotting the data as a scatter plot 
# and using color to label the samples' cluster membership. 

# To create a scatter plot, you can pass data with two features (i.e. columns) to plot() with an extra argument 
# col = km.out$cluster, which sets the color of each point in the scatter plot according to its cluster membership.

### Instructions

# x and km.out are available in your workspace. Using the plot() function to create a scatter plot of data x:
# Color the dots on the scatterplot by setting the col argument to the cluster component in km.out.
# Title the plot "k-means with 3 clusters" using the main argument to plot().
# Ensure there are no axis labels by specifying "" for both the xlab and ylab arguments to plot().

### R 

# Scatter plot of x
plot(x,col=km.out$cluster,main="k-means with 3 clusters",xlab="",ylab="")
