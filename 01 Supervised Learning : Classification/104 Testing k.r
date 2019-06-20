### Testing other 'k' values

# By default, the knn() function in the class package uses only the single nearest neighbor.

# Setting a k parameter allows the algorithm to consider additional nearby neighbors. 
# This enlarges the collection of neighbors which will vote on the predicted class.

# Compare k values of 1, 7, and 15 to examine the impact on traffic sign classification accuracy.

# The class package is already loaded in your workspace along with the datasets signs, signs_test, and sign_types. 
# The object signs_actual holds the true values of the signs.

### Instructions

# Compute the accuracy of the default k = 1 model using the given code,
# then find the accuracy of the model using mean() to compare signs_actual and the model's predictions.
# Modify the knn() function call by setting k = 7 and again find accuracy value.
# Revise the code once more by setting k = 15, plus find the accuracy value one more time.

### R 

> # Compute the accuracy of the baseline model (default k = 1)
> k_1 <- knn(train = signs[-1], test = signs_test[-1], cl = sign_types)      ### default k=1
> mean(signs_actual == k_1)                                                  ### signs_actual <- test_signs$sign_type
[1] 0.9322034
> 
> # Modify the above to set k = 7
> k_7 <- knn(train = signs[-1], test = signs_test[-1], cl = sign_types, k = 7)
> mean(signs_actual == k_7)
[1] 0.9491525
> 
> # Set k = 15 and compare to the above
> k_15 <- knn(train = signs[-1], test = signs_test[-1], cl = sign_types, k = 15)
> mean(signs_actual == k_15)
[1] 0.8813559
> 
