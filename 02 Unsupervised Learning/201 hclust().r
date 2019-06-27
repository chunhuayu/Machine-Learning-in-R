### Hierarchical clustering with results

# In this exercise, you will create your first hierarchical clustering model using the hclust() function.

# We have created some data that has two dimensions and placed it in a variable called x. 
# Your task is to create a hierarchical clustering model of x. 
# Remember from the video that the first step to hierarchical clustering is determining the similarity between observations, 
# which you will do with the dist() function.

# You will look at the structure of the resulting model using the summary() function.

### Instructions

# Fit a hierarchical clustering model to x using the hclust() function. Store the result in hclust.out.
# Inspect the result with the summary() function.

### R

> # Create hierarchical clustering model: hclust.out
> hclust.out <- hclust(dist(x))
> 
> # Inspect the result
> summary(hclust.out)
            Length Class  Mode     
merge       98     -none- numeric  
height      49     -none- numeric  
order       50     -none- numeric  
labels       0     -none- NULL     
method       1     -none- character
call         2     -none- call     
dist.method  1     -none- character
> 
