### Building a more sophisticated model

# One of the best predictors of future giving is a history of recent, frequent, and large gifts. 
# In marketing terms, this is known as R/F/M:
# Recency
# Frequency
# Money
# Donors that haven't given both recently and frequently may be especially likely to give again; in other words, 
# the combined impact of recency and frequency may be greater than the sum of the separate effects.

# Because these predictors together have a greater impact on the dependent variable, their joint effect must be modeled as
# an interaction. The donors dataset has been loaded for you.

### Instructions

# Create a logistic regression model of donated as a function of money plus the interaction of recency and frequency. 
# Use * to add the interaction term.
# Examine the model's summary() to confirm the interaction effect was added.
# Save the model's predicted probabilities as rfm_prob. Use the predict() function, and remember to set the type argument.
# Plot a ROC curve by using the function roc(). 
# Remember, this function takes the column of outcomes and the vector of predictions.
# Compute the AUC for the new model with the function auc() and compare performance to the simpler model.


### R

> # Build a recency, frequency, and money (RFM) model
> rfm_model <- glm(donated ~ recency * frequency + money, data = donors, family = "binomial")
> 
> # Summarize the RFM model to see how the parameters were coded
> summary(rfm_model)

Call:
glm(formula = donated ~ recency * frequency + money, family = "binomial", 
    data = donors)

Deviance Residuals: 
    Min       1Q   Median       3Q      Max  
-0.3696  -0.3696  -0.2895  -0.2895   2.7924  

Coefficients:
                                 Estimate Std. Error z value Pr(>|z|)    
(Intercept)                       -2.9999     0.3086  -9.721   <2e-16 ***
recencyCURRENT                    -0.1511     0.3094  -0.488    0.625    
frequencyFREQUENT                 -0.5164     0.5162  -1.000    0.317    
moneyHIGH                         -0.3619     0.0430  -8.415   <2e-16 ***
recencyCURRENT:frequencyFREQUENT   1.0179     0.5171   1.968    0.049 *  
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

(Dispersion parameter for binomial family taken to be 1)

    Null deviance: 37330  on 93461  degrees of freedom
Residual deviance: 36938  on 93457  degrees of freedom
AIC: 36948

Number of Fisher Scoring iterations: 6
> 
> # Compute predicted probabilities for the RFM model
> rfm_prob <- predict(rfm_model, data = donors, type = "response")
> 
> # Plot the ROC curve for the new model
> library(pROC)
Type 'citation("pROC")' for a citation.

Attaching package: 'pROC'
The following objects are masked from 'package:stats':

    cov, smooth, var
> ROC <- roc(donors$donated, rfm_prob)
> plot(ROC, col = "red")
> auc(ROC)
Area under the curve: 0.5785
> 
