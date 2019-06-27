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
