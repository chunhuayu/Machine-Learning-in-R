### Visualizing classification trees

# Due to government rules to prevent illegal discrimination, 
# lenders are required to explain why a loan application was rejected.

# The structure of classification trees can be depicted visually, which helps to understand how the tree makes its decisions.
# The model loan_model that you fit in the last exercise is in your workspace.

### Instructions

# Type loan_model to see a text representation of the classification tree.
# Load the rpart.plot package.
# Apply the rpart.plot() function to the loan model to visualize the tree.
# See how changing other plotting parameters impacts the visualization by running the supplied command.

### R

> # Examine the loan_model object
> loan_model
n= 11312 

node), split, n, loss, yval, (yprob)
      * denotes terminal node

 1) root 11312 5654 repaid (0.4998232 0.5001768)  
   2) credit_score=AVERAGE,LOW 9490 4437 default (0.5324552 0.4675448)  
     4) credit_score=LOW 1667  631 default (0.6214757 0.3785243) *
     5) credit_score=AVERAGE 7823 3806 default (0.5134859 0.4865141)  
      10) loan_amount=HIGH 2472 1079 default (0.5635113 0.4364887) *
      11) loan_amount=LOW,MEDIUM 5351 2624 repaid (0.4903756 0.5096244)  
        22) loan_amount=LOW 1810  874 default (0.5171271 0.4828729) *
        23) loan_amount=MEDIUM 3541 1688 repaid (0.4767015 0.5232985) *
   3) credit_score=HIGH 1822  601 repaid (0.3298573 0.6701427) *
> 
> # Load the rpart.plot package
> library(rpart.plot)
> 
> # Plot the loan_model with default settings
> rpart.plot(loan_model)
> 
> # Plot the loan_model with customized settings
> rpart.plot(loan_model, type = 3, box.palette = c("red", "green"), fallen.leaves = TRUE)
> 
