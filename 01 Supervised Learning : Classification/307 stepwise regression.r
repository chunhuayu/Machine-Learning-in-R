### Building a stepwise regression model

# In the absence of subject-matter expertise, stepwise regression can assist with the search for 
# the most important predictors of the outcome of interest.

# In this exercise, you will use a forward stepwise approach to add predictors to the model one-by-one until 
# no additional benefit is seen. The donors dataset has been loaded for you.

### Instructions

# Use the R formula interface with glm() to specify the base model with no predictors. 
# Set the explanatory variable equal to 1.
# Use the R formula interface again with glm() to specify the model with all predictors.
# Apply step() to these models to perform forward stepwise regression. 
# Set the first argument to null_model and set direction = "forward".  This might take a while (up to 10 or 15 seconds) as 
# your computer has to fit quite a few different models to perform stepwise selection.
# Create a vector of predicted probabilities using the predict() function.
# Plot the ROC curve with roc() and plot() and compute the AUC of the stepwise model with auc().

### R

> # Specify a null model with no predictors
> null_model <- glm(donated ~ 1, data = donors, family = "binomial")
> 
> # Specify the full model using all of the potential predictors
> full_model <- glm(donated ~ ., data = donors, family = "binomial")
> 
> # Use a forward stepwise algorithm to build a parsimonious model
> step_model <- step(null_model, scope = list(lower = null_model, upper = full_model), direction = "forward")
Start:  AIC=7741.16
donated ~ 1

                    Df Deviance    AIC
+ frequency          1   7668.4 7672.4
+ money              1   7706.3 7710.3
+ interest_veterans  1   7733.8 7737.8
+ bad_address        1   7734.9 7738.9
+ pet_owner          1   7735.9 7739.9
+ wealth_rating      3   7732.7 7740.7
+ veteran            1   7736.9 7740.9
<none>                   7739.2 7741.2
+ recency            1   7737.7 7741.7
+ interest_religion  1   7738.5 7742.5
+ missing_age        1   7739.0 7743.0
+ catalog_shopper    1   7739.1 7743.1
+ imputed_age        1   7739.2 7743.2
+ has_children       1   7739.2 7743.2

Step:  AIC=7672.37
donated ~ frequency

                    Df Deviance    AIC
+ money              1   7646.8 7652.8
+ interest_veterans  1   7663.5 7669.5
+ bad_address        1   7663.7 7669.7
+ wealth_rating      3   7660.6 7670.6
+ pet_owner          1   7665.5 7671.5
+ veteran            1   7665.9 7671.9
<none>                   7668.4 7672.4
+ recency            1   7667.0 7673.0
+ interest_religion  1   7667.4 7673.4
+ missing_age        1   7668.2 7674.2
+ imputed_age        1   7668.3 7674.3
+ catalog_shopper    1   7668.4 7674.4
+ has_children       1   7668.4 7674.4

Step:  AIC=7652.75
donated ~ frequency + money

                    Df Deviance    AIC
+ wealth_rating      3   7637.9 7649.9
+ bad_address        1   7642.3 7650.3
+ interest_veterans  1   7642.3 7650.3
+ pet_owner          1   7644.1 7652.1
+ veteran            1   7644.4 7652.4
<none>                   7646.8 7652.8
+ recency            1   7645.6 7653.6
+ interest_religion  1   7645.7 7653.7
+ missing_age        1   7646.5 7654.5
+ imputed_age        1   7646.6 7654.6
+ catalog_shopper    1   7646.7 7654.7
+ has_children       1   7646.7 7654.7

Step:  AIC=7649.88
donated ~ frequency + money + wealth_rating

                    Df Deviance    AIC
+ interest_veterans  1   7633.5 7647.5
+ bad_address        1   7633.5 7647.5
+ pet_owner          1   7635.4 7649.4
+ veteran            1   7635.5 7649.5
<none>                   7637.9 7649.9
+ recency            1   7636.7 7650.7
+ interest_religion  1   7636.9 7650.9
+ missing_age        1   7637.7 7651.7
+ has_children       1   7637.8 7651.8
+ catalog_shopper    1   7637.8 7651.8
+ imputed_age        1   7637.9 7651.9

Step:  AIC=7647.5
donated ~ frequency + money + wealth_rating + interest_veterans

                    Df Deviance    AIC
+ bad_address        1   7629.2 7645.2
+ veteran            1   7631.0 7647.0
+ interest_religion  1   7631.5 7647.5
<none>                   7633.5 7647.5
+ recency            1   7632.3 7648.3
+ pet_owner          1   7632.4 7648.4
+ catalog_shopper    1   7633.1 7649.1
+ has_children       1   7633.4 7649.4
+ missing_age        1   7633.5 7649.5
+ imputed_age        1   7633.5 7649.5

Step:  AIC=7645.2
donated ~ frequency + money + wealth_rating + interest_veterans + 
    bad_address

                    Df Deviance    AIC
+ veteran            1   7626.7 7644.7
+ interest_religion  1   7627.1 7645.1
<none>                   7629.2 7645.2
+ recency            1   7628.0 7646.0
+ pet_owner          1   7628.2 7646.2
+ catalog_shopper    1   7628.8 7646.8
+ has_children       1   7629.1 7647.1
+ missing_age        1   7629.2 7647.2
+ imputed_age        1   7629.2 7647.2

Step:  AIC=7644.7
donated ~ frequency + money + wealth_rating + interest_veterans + 
    bad_address + veteran

                    Df Deviance    AIC
+ interest_religion  1   7624.6 7644.6
<none>                   7626.7 7644.7
+ recency            1   7625.5 7645.5
+ pet_owner          1   7625.7 7645.7
+ catalog_shopper    1   7626.2 7646.2
+ has_children       1   7626.5 7646.5
+ missing_age        1   7626.7 7646.7
+ imputed_age        1   7626.7 7646.7

Step:  AIC=7644.62
donated ~ frequency + money + wealth_rating + interest_veterans + 
    bad_address + veteran + interest_religion

                  Df Deviance    AIC
<none>                 7624.6 7644.6
+ pet_owner        1   7622.9 7644.9
+ recency          1   7623.4 7645.4
+ catalog_shopper  1   7624.4 7646.4
+ has_children     1   7624.5 7646.5
+ missing_age      1   7624.6 7646.6
+ imputed_age      1   7624.6 7646.6
> 
> # Estimate the stepwise donation probability
> step_prob <- predict(step_model, type = "response")
> 
> # Plot the ROC of the stepwise model
> library(pROC)
Type 'citation("pROC")' for a citation.

Attaching package: 'pROC'
The following objects are masked from 'package:stats':

    cov, smooth, var
> ROC <- roc(donors$donated, step_prob)
> plot(ROC, col = "red")
> auc(ROC)
Area under the curve: 0.6006
> 
