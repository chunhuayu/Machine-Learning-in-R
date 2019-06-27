### Linkage methods

# In this exercise, you will produce hierarchical clustering models using different linkages and plot the dendrogram for each,
# observing the overall structure of the trees.

# You'll be asked to interpret the results in the next exercise.

### Instructions

# Produce three hierarchical clustering models on x using the "complete", "average", and "single" linkage methods respectively.
# Plot a dendrogram for each model, using titles of "Complete", "Average", and "Single", respectively.

### R

> # Cluster using complete linkage: hclust.complete
> hclust.complete <- hclust(dist(x), method ="complete")
> 
> # Cluster using average linkage: hclust.average
> hclust.average <- hclust(dist(x), method ="average")
> 
> # Cluster using single linkage: hclust.single
> hclust.single <-  hclust(dist(x), method ="single")
> 
> # Plot dendrogram of hclust.complete
> plot(hclust.complete,main="Complete")
> 
> # Plot dendrogram of hclust.average
> plot(hclust.average, main="Average")
> 
> # Plot dendrogram of hclust.single
> plot(hclust.single, main="Single")
> 

### Which linkage(s) produce balanced trees? Complete and average. 
# Why?
# Whether you want balanced or unbalanced trees for your hierarchical clustering model depends on the context of the problem 
# you're trying to solve. Balanced trees are essential if you want an even number of observations assigned to each cluster. 
# On the other hand, if you want to detect outliers, 
# for example, an unbalanced tree is more desirable because pruning an unbalanced tree can result in most observations 
# assigned to one cluster and only a few observations assigned to other clusters.
