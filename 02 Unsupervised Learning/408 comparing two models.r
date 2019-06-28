### k-means clustering and comparing results

# As you now know, there are two main types of clustering: hierarchical and k-means.

# In this exercise, you will create a k-means clustering model on the Wisconsin breast cancer data and compare the 
# results to the actual diagnoses and the results of your hierarchical clustering model. 
# Take some time to see how each clustering model performs in terms of separating the two diagnoses and 
# how the clustering models compare to each other.

### Instructions

# wisc.data, diagnosis, and wisc.hclust.clusters are still available.

# Create a k-means model on wisc.data, assigning the result to wisc.km. Be sure to create 2 clusters, 
# ....corresponding to the actual number of diagnosis. 

# Also, remember to scale the data and repeat the algorithm 20 times to find a well performing model.

# Use the table() function to compare the cluster membership of the k-means model to the actual diagnoses contained 
# ......in the diagnosis vector. How well does k-means separate the two diagnoses?

# Use the table() function to compare the cluster membership of the k-means model to the hierarchical clustering model. 
# Recall the cluster membership of the hierarchical clustering model is contained in wisc.hclust.clusters.

### R

> # Create a k-means model on wisc.data: wisc.km
> wisc.km <- kmeans(scale(wisc.data), centers = 2, nstart = 20)
> 
> # Compare k-means to actual diagnoses
> table(wisc.km$cluster, diagnosis)
   diagnosis
      0   1
  1 343  37
  2  14 175
> 
> # Compare k-means to hierarchical clustering
> table(wisc.hclust.clusters, wisc.km$cluster)
                    
wisc.hclust.clusters   1   2
                   1  17 160
                   2   0   7
                   3 363  20
                   4   0   2
> 

 # Looking at the second table you generated, it looks like clusters 1, 2, and 4 
 # from the hierarchical clustering model can be interpreted as the cluster 1 equivalent from the k-means algorithm, 
 # and cluster 3 can be interpreted as the cluster 2 equivalent.
