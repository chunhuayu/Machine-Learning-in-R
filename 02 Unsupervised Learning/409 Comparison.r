### Clustering on PCA results

# In this final exercise, you will put together several steps you used earlier and, 
# in doing so, you will experience some of the creativity that is typical in unsupervised learning.

# Recall from earlier exercises that the PCA model required significantly fewer features 
# to describe 80% and 95% of the variability of the data. In addition to normalizing data and potentially avoiding overfitting
# PCA also uncorrelates the variables, sometimes improving the performance of other modeling techniques.

# Let's see if PCA improves or degrades the performance of hierarchical clustering.

### Instructions

# wisc.pr, diagnosis, wisc.hclust.clusters, and wisc.km are still available in your workspace.

# Using the minimum number of principal components required to describe at least 90% of the variability in the data, 
# create a hierarchical clustering model with complete linkage. Assign the results to wisc.pr.hclust.
# Cut this hierarchical clustering model into 4 clusters and assign the results to wisc.pr.hclust.clusters.
# Using table(), compare the results from your new hierarchical clustering model with the actual diagnoses. 
# How well does the newly created model with four clusters separate out the two diagnoses?
# How well do the k-means and hierarchical clustering models you created in previous exercises do in terms of separating 
# the diagnoses? 
# Again, use the table() function to compare the output of each model with the vector containing the actual diagnoses.

> # Compare to k-means and hierarchical
> table(wisc.km$cluster,wisc.pr.hclust.clusters)
   wisc.pr.hclust.clusters
      1   2   3   4
  1 115  70   2   2
  2   3 377   0   0
> # Create a hierarchical clustering model: wisc.pr.hclust
> wisc.pr.hclust <- hclust(dist(wisc.pr$x[, 1:7]), method = "complete")
> 
> # Cut model into 4 clusters: wisc.pr.hclust.clusters
> wisc.pr.hclust.clusters <- cutree(wisc.pr.hclust, k = 4)
> 
> # Compare to actual diagnoses
> table(diagnosis, wisc.pr.hclust.clusters)
         wisc.pr.hclust.clusters
diagnosis   1   2   3   4
        0   5 350   2   0
        1 113  97   0   2
> 
> # Compare to k-means and hierarchical
> table(diagnosis, wisc.hclust.clusters)
         wisc.hclust.clusters
diagnosis   1   2   3   4
        0  12   2 343   0
        1 165   5  40   2
> table(diagnosis, wisc.km$cluster)
         
diagnosis   1   2
        0  14 343
        1 175  37
> 
