### Hierarchical clustering of case data

# The goal of this exercise is to do hierarchical clustering of the observations. 
# Recall from Chapter 2 that this type of clustering does not assume in advance the number of natural groups that 
# exist in the data.

# As part of the preparation for hierarchical clustering, distance between all pairs of observations are computed. 
# Furthermore, there are different ways to link clusters together, with single, complete, 
# and average being the most common linkage methods.

### Instructions

# The variables you created before, wisc.data, diagnosis, wisc.pr, and pve, are available in your workspace.
# Scale the wisc.data data and assign the result to data.scaled.
# Calculate the (Euclidean) distances between all pairs of observations in the new scaled dataset and assign the result to
# data.dist.
# Create a hierarchical clustering model using complete linkage. 
# Manually specify the method argument to hclust() and assign the results to wisc.hclust.

### R

# Scale the wisc.data data: data.scaled
data.scaled <- scale(wisc.data)
data.scaled
# Calculate the (Euclidean) distances: data.dist
data.dist <- dist(data.scaled)
data.dist
# Create a hierarchical clustering model: wisc.hclust
wisc.hclust <- hclust(data.dist, method = "complete")
