### k-means clustering
# (1)
# We have created some two-dimensional data and stored it in a variable called x in your workspace. 
# The scatter plot on the right is a visual representation of the data.

# In this exercise, your task is to create a k-means model of the x data using 3 clusters, 
# then to look at the structure of the resulting model using the summary() function.

# (2)
# Results of kmeans()
# The kmeans() function produces several outputs. In the video, we discussed one output of modeling, the cluster membership.

# In this exercise, you will access the cluster component directly. 
# This is useful anytime you need the cluster membership for each observation of the data used to build the clustering model.
# A future exercise will show an example of how this cluster membership might be used to 
# ....help communicate the results of k-means modeling.

# k-means models also have a print method to give a human friendly output of basic modeling results. 
# This is available by using print() or simply typing the name of the model.


### Instructions
# (1)
# Fit a k-means model to x using 3 centers and run the k-means algorithm 20 times. Store the result in km.out.
# Inspect the result with the summary() function.

# (2)
# The k-means model you built in the last exercise, km.out, is still available in your workspace.
# Print a list of the cluster membership to the console.
# Use a print method to print out the km.out model.


### R
# (1)
> # Create the k-means model: km.out
> km.out=kmeans(x,centers=3,nstart=20)
> 
> # Inspect the result
> summary(km.out)
             Length Class  Mode   
cluster      300    -none- numeric
centers        6    -none- numeric
totss          1    -none- numeric
withinss       3    -none- numeric
tot.withinss   1    -none- numeric
betweenss      1    -none- numeric
size           3    -none- numeric
iter           1    -none- numeric
ifault         1    -none- numeric
> 

# (2)
> # Print the km.out object
> print(km.out)
K-means clustering with 3 clusters of sizes 98, 150, 52

Cluster means:
        [,1]        [,2]
1  2.2171113  2.05110690
2 -5.0556758  1.96991743
3  0.6642455 -0.09132968

Clustering vector:
  [1] 1 1 1 1 1 1 1 1 1 1 1 1 3 1 1 1 1 3 3 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 3
 [38] 3 3 1 1 1 1 3 1 1 1 1 1 1 1 1 1 1 1 1 1 1 3 1 1 1 1 1 1 1 1 1 1 1 1 1 1 3
 [75] 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 2 2 2 2 2 2 2 2 2 2 2
[112] 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2
[149] 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2
[186] 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2
[223] 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 3 3 3 3 1 3 3 3 3
[260] 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 1 1 3 3 1 3 3 3 3 3 3 1 3 3 3 3 3 3 1 3 3
[297] 3 1 3 3

Within cluster sum of squares by cluster:
[1] 148.64781 295.16925  95.50625
 (between_SS / total_SS =  87.2 %)

Available components:

[1] "cluster"      "centers"      "totss"        "withinss"     "tot.withinss"
[6] "betweenss"    "size"         "iter"         "ifault"
> 
