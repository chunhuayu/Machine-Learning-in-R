### Selecting number of clusters

# The k-means algorithm assumes the number of clusters as part of the input. 
# If you know the number of clusters in advance (e.g. due to certain business constraints) this makes setting the number of 
# clusters easy. However, as you saw in the video, if you do not know the number of clusters and need to determine it, 
# you will need to run the algorithm multiple times, each time with a different number of clusters. 
# From this, you can observe how a measure of model quality changes with the number of clusters.

# In this exercise, you will run kmeans() multiple times to see how model quality changes as the number of clusters changes.
# Plots displaying this information help to determine the number of clusters and are often referred to as scree plots.

# The ideal plot will have an elbow where the quality measure improves more slowly as the number of clusters increases. 
# This indicates that the quality of the model is no longer improving substantially as the model complexity 
# (i.e. number of clusters) increases. In other words, the elbow indicates the number of clusters inherent in the data.

### Instructions

# The data, x, is still available in your workspace.
# Build 15 kmeans() models on x, each with a different number of clusters (ranging from 1 to 15). 
# Set nstart = 20 for all model runs and save the total within cluster sum of squares for each model to the ith element of wss.
# Run the code provided to create a scree plot of the wss for all 15 models.
# Take a look at your scree plot. How many clusters are inherent in the data? 
# ...........Set k equal to the number of clusters at the location of the elbow.

### R

> # Initialize total within sum of squares error: wss
> wss <- 0
> 
> # For 1 to 15 cluster centers
> for (i in 1:15) {
    km.out <- kmeans(x, centers = i, nstart = 20)
    # Save total within sum of squares to wss variable
    wss[i] <- km.out$tot.withinss
  }
> 
> # Plot total within sum of squares vs. number of clusters
> plot(1:15, wss, type = "b", 
       xlab = "Number of Clusters", 
       ylab = "Within groups sum of squares")
> 
> # Set k equal to the number of clusters corresponding to the elbow location
> k <- 2  # 3 is probably OK, too
> 
