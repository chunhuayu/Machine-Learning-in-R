### Computing probabilities

# The where9am data frame contains 91 days (thirteen weeks) worth of data in which Brett recorded his location 
# at 9am each day as well as whether the daytype was a weekend or weekday.

# Using the conditional probability formula below, you can compute the probability that Brett is working in the office, 
# given that it is a weekday.

P(A|B)=P(A and B)P(B)

# Calculations like these are the basis of the Naive Bayes destination prediction model you'll develop in later exercises.

### Instructions

# Find P(office) using nrow() and subset() to count rows in the dataset and save the result as p_A.
# Find P(weekday), using nrow() and subset() again, and save the result as p_B.
# Use nrow() and subset() a final time to find P(office and weekday). Save the result as p_AB.
# Compute P(office | weekday) and save the result as p_A_given_B.
# Print the value of p_A_given_B.

### R

# Compute P(A) 
p_A <- nrow(subset(where9am, location == "office")) / nrow(where9am)

# Compute P(B)
p_B <- nrow(subset(where9am, daytype == "weekday")) / nrow(where9am)

# Compute the observed P(A and B)
p_AB <- nrow(subset(where9am, location == "office" & daytype == "weekday")) / nrow(where9am)

# Compute P(A | B) and print its value
p_A_given_B <- p_AB / p_B
p_A_given_B
