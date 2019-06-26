### Practical matters: working with real data

# Dealing with real data is often more challenging than dealing with synthetic data. 
# Synthetic data helps with learning new concepts and techniques, 
# but the next few exercises will deal with data that is closer to the type of real data you might find in your professional 
# or academic pursuits.

# The first challenge with the Pokemon data is that there is no pre-determined number of clusters.
# You will determine the appropriate number of clusters,
# keeping in mind that in real data the elbow in the scree plot might be less of a sharp elbow than in synthetic data.
# Use your judgement on making the determination of the number of clusters.

# The second part of this exercise includes plotting the outcomes of the clustering on two dimensions, or features,
# of the data. These features were chosen somewhat arbitrarily for this exercise. 
# Think about how you would use plotting and clustering to communicate interesting groups of Pokemon to other people.

# An additional note: this exercise utilizes the iter.max argument to kmeans().
# As you've seen, kmeans() is an iterative algorithm, repeating over and over until some stopping criterion is reached. 
# The default number of iterations for kmeans() is 10, 
# which is not enough for the algorithm to converge and reach its stopping criterion, 
# so we'll set the number of iterations to 50 to overcome this issue. To see what happens when kmeans() does not converge,
# try running the example with a lower number of iterations (e.g. 3). 
# This is another example of what might happen when you encounter real data and use real cases.

### Instructions

# The pokemon dataset, which contains observations of 800 Pokemon characters on 6 dimensions (i.e. features), 
# is available in your workspace.

# Using kmeans() with nstart = 20, determine the total within sum of square errors for different numbers of clusters 
# (between 1 and 15).
# Pick an appropriate number of clusters based on these results from the first instruction and assign that number to k.
# Create a k-means model using k clusters and assign it to the km.out variable.
# Create a scatter plot of Defense vs. Speed, showing cluster membership for each observation.

### R 

> # Initialize total within sum of squares error: wss
> wss <- 0
> 
> # Look over 1 to 15 possible clusters
> for (i in 1:15) {
    # Fit the model: km.out
    km.out <- kmeans(pokemon, centers = i, nstart = 20, iter.max = 50)
    # Save the within cluster sum of squares
    wss[i] <- km.out$tot.withinss
  }
> 
> # Produce a scree plot
> plot(1:15, wss, type = "b", 
       xlab = "Number of Clusters", 
       ylab = "Within groups sum of squares")
> 
> # Select number of clusters (2, 3, 4 probably OK)
> k <- 3
> 
> # Build model with k clusters: km.out
> km.out <- kmeans(pokemon, centers = k, nstart = 20, iter.max = 50)
> 
> # View the resulting model
> km.out
K-means clustering with 3 clusters of sizes 175, 270, 355

Cluster means:
  HitPoints   Attack   Defense SpecialAttack SpecialDefense    Speed
1  79.30857 97.29714 108.93143      66.71429       87.04571 57.29143
2  81.90370 96.15926  77.65556     104.12222       86.87778 94.71111
3  54.68732 56.93239  53.64507      52.02254       53.04789 53.58873

Clustering vector:
  [1] 3 3 2 2 3 3 2 2 2 3 3 1 2 3 3 3 3 3 3 2 3 3 2 2 3 3 3 2 3 2 3 2 3 1 3 3 1
 [38] 3 3 2 3 2 3 2 3 3 3 2 3 3 2 3 1 3 2 3 3 3 2 3 2 3 2 3 2 3 3 1 3 2 2 2 3 1
 [75] 1 3 3 2 3 2 3 1 1 3 2 3 1 1 3 2 3 3 2 3 1 3 1 3 1 3 2 2 2 1 3 1 3 1 3 2 3
[112] 2 3 1 1 1 3 3 1 3 1 3 1 1 1 3 2 3 1 3 2 2 2 2 2 2 1 1 1 3 1 1 1 3 3 2 2 2
[149] 3 3 1 3 1 2 2 1 2 2 2 3 3 2 2 2 2 2 3 3 1 3 3 2 3 3 1 3 3 3 2 3 3 3 3 2 3
[186] 2 3 3 3 3 3 3 2 3 3 2 2 1 3 3 1 2 3 3 2 3 3 3 3 3 1 2 1 3 1 2 3 3 2 3 1 3
[223] 1 1 1 3 1 3 1 1 1 1 1 3 3 1 3 1 3 1 3 3 2 3 2 1 3 2 2 2 3 1 2 2 3 3 1 3 3
[260] 3 1 2 2 2 1 3 3 1 1 2 2 2 3 3 2 2 3 3 2 2 3 3 1 1 3 3 3 3 3 3 3 3 3 3 3 2
[297] 3 3 2 3 3 3 1 3 3 2 2 3 3 3 1 3 3 2 3 2 3 3 3 2 3 1 3 1 3 3 3 1 3 1 3 1 1
[334] 1 3 3 2 3 2 2 3 3 3 3 3 3 1 3 2 2 3 2 3 2 1 1 3 2 3 3 3 2 3 2 3 1 2 2 2 2
[371] 1 3 1 3 1 3 1 3 1 3 1 3 2 3 1 3 2 2 3 1 1 3 2 2 3 3 2 2 3 3 2 3 1 1 1 3 3
[408] 1 2 2 3 1 1 2 1 1 1 2 2 2 2 2 2 1 2 2 2 2 2 2 1 2 3 1 1 3 3 2 3 3 2 3 3 2
[445] 3 3 3 3 3 3 2 3 2 3 1 3 1 3 1 1 1 2 3 1 3 3 2 3 2 3 1 2 3 2 3 2 2 2 2 3 2
[482] 3 3 2 3 1 3 3 3 3 1 3 3 2 2 3 3 2 2 3 1 3 1 3 2 1 3 2 3 3 2 1 2 2 1 1 1 2
[519] 2 2 2 1 2 1 2 2 2 2 1 1 2 2 2 2 2 2 2 1 2 2 2 2 2 2 2 2 1 2 2 2 2 2 2 2 3
[556] 3 2 3 3 2 3 3 2 3 3 3 3 1 3 2 3 2 3 2 3 2 3 1 3 3 2 3 2 3 1 1 3 2 3 2 1 1
[593] 3 1 1 3 3 2 1 1 3 3 2 3 3 2 3 2 3 2 2 3 3 2 3 1 2 2 3 1 3 1 2 3 1 3 1 3 2
[630] 3 1 3 2 3 2 3 3 1 3 3 2 3 2 3 3 2 3 2 2 3 1 3 1 3 2 1 3 2 3 1 3 1 1 3 3 2
[667] 3 2 3 3 2 3 1 1 3 1 2 3 2 1 3 2 1 3 1 3 1 1 3 1 3 1 2 1 3 3 2 3 2 2 2 2 2
[704] 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 3 1 1 3 3 2 3 3 2 3 3 3 3 2 3 3 3 3 2 3 3 2
[741] 3 2 3 1 2 3 2 2 3 1 2 1 3 1 3 2 3 1 3 1 3 1 3 2 3 2 3 1 3 2 2 2 2 1 3 2 2
[778] 1 3 1 3 3 3 3 1 1 1 1 3 1 3 2 2 2 1 1 2 2 2 2

Within cluster sum of squares by cluster:
[1]  709020.5 1018348.0  812079.9
 (between_SS / total_SS =  40.8 %)

Available components:

[1] "cluster"      "centers"      "totss"        "withinss"     "tot.withinss"
[6] "betweenss"    "size"         "iter"         "ifault"
> 
> # Plot of Defense vs. Speed by cluster membership
> plot(pokemon[, c("Defense", "Speed")],
       col = km.out$cluster,
       main = paste("k-means clustering of Pokemon with", k, "clusters"),
       xlab = "Defense", ylab = "Speed")
