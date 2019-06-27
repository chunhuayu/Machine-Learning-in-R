### Comparing kmeans() and hclust()

# Comparing k-means and hierarchical clustering, you'll see the two methods produce different cluster memberships. 
# This is because the two algorithms make different assumptions about how the data is generated. 
# In a more advanced course, we could choose to use one model over another based on the quality of the models' assumptions, 
# but for now, it's enough to observe that they are different.

# This exercise will have you compare results from the two models on the pokemon dataset to see how they differ.

### Instructions

# The results from running k-means clustering on the pokemon data (for 3 clusters) are stored as km.pokemon. 
# The hierarchical clustering model you created in the previous exercise is still available as hclust.pokemon.

# Using cutree() on hclust.pokemon, assign cluster membership to each observation. 
# Assume three clusters and assign the result to a vector called cut.pokemon.

# Using table(), compare cluster membership between the two clustering methods. 
# Recall that the different components of k-means model objects can be accessed with the $ operator.

### R
> # Apply cutree() to hclust.pokemon: cut.pokemon
> cut.pokemon <- cutree(hclust.pokemon, k = 3)
> 
> # Compare methods
> table(km.pokemon$cluster, cut.pokemon)
   cut.pokemon
      1   2   3
  1 204   9   1
  2 242   1   0
  3 342   1   0
>
### Comment:
# Looking at the table, it looks like the hierarchical clustering model assigns most of the observations to cluster 1, 
# while the k-means algorithm distributes the observations relatively evenly among all clusters. 
# It's important to note that there's no consensus on which method produces better clusters. 
# The job of the analyst in unsupervised clustering is to observe the cluster assignments and make a judgment call as to 
# which method provides more insights into the data. Excellent job!
