### Selecting number of clusters

# In this exercise, you will compare the outputs from your hierarchical clustering model to the actual diagnoses. 
# Normally when performing unsupervised learning like this, a target variable isn't available. 
# We do have it with this dataset, however, so it can be used to check the performance of the clustering model.

# When performing supervised learning—that is, when you're trying to predict some target variable of interest and 
# that target variable is available in the original data—using clustering to create new features may or may not 
# improve the performance of the final model. This exercise will help you determine if, 
# in this case, hierarchical clustering provides a promising new feature.

### Instructions

### wisc.data, diagnosis, wisc.pr, pve, and wisc.hclust are available in your workspace.

# Use cutree() to cut the tree so that it has 4 clusters. Assign the output to the variable wisc.hclust.clusters.
# Use the table() function to compare the cluster membership to the actual diagnoses.


### R

> # Cut tree so that it has 4 clusters: wisc.hclust.clusters
> wisc.hclust.clusters=cutree(wisc.hclust,k=4)
> 
> # Compare cluster membership to actual diagnoses
> table(wisc.hclust.clusters,diagnosis)
                    diagnosis
wisc.hclust.clusters   0   1
                   1  12 165
                   2   2   5
                   3 343  40
                   4   0   2
