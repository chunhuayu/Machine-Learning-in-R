### Results of hierarchical clustering

# Let's use the hierarchical clustering model you just created to determine a height (or distance between clusters) 
# where a certain number of clusters exists. The variables you created before—wisc.data, diagnosis, wisc.pr, pve, 
# and wisc.hclust—are all available in your workspace.

# Using the plot() function, what is the height at which the clustering model has 4 clusters?

### R
plot(wisc.hclust) # look at how much the y axis is when clusters=4?
