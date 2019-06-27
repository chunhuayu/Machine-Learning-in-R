### Cutting the tree

# Remember from the video that cutree() is the R function that cuts a hierarchical model. 
# The h and k arguments to cutree() allow you to cut the tree based on a certain height h or a certain number of clusters k.

# you will use cutree() to cut the hierarchical model you created earlier based on each of these two criteria.

### Instructions
# The hclust.out model you created earlier is available in your workspace.

Cut the hclust.out model at height 7.
Cut the hclust.out model to create 3 clusters.

### R

> # Cut by height
> cutree(hclust.out,h=7)
 [1] 1 1 1 1 1 1 1 1 2 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 3 3 3 3 3 3 3 3 3 3 2 2 2
[39] 2 2 2 2 2 2 2 2 2 2 2 2
> 
> # Cut by number of clusters
> cutree(hclust.out,k=3)
 [1] 1 1 1 1 1 1 1 1 2 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 3 3 3 3 3 3 3 3 3 3 2 2 2
[39] 2 2 2 2 2 2 2 2 2 2 2 2
> 
