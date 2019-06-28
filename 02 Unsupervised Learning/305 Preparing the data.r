### Preparing the data

# Unlike prior chapters, where we prepared the data for you for unsupervised learning, the goal of this chapter is to step you through a more realistic and complete workflow.

# Recall from the video that the first step is to download and prepare the data.

### Instructions

# Use read.csv() function to download the CSV (comma-separated values) file containing the data from the URL provided. 
# ....Assign the result to wisc.df.

# Use as.matrix() to convert the features of the data (in columns 3 through 32) to a matrix. 
# ....Store this in a variable called wisc.data.

# Assign the row names of wisc.data the values currently contained in the id column of wisc.df. 
#.....While not strictly required, this will help you keep track of the different observations throughout the modeling process.

# Finally, set a vector called diagnosis to be 1 if a diagnosis is malignant ("M") and 0 otherwise. 
#....Note that R coerces TRUE to 1 and FALSE to 0.

### R
# (1)
> url <- "http://s3.amazonaws.com/assets.datacamp.com/production/course_1903/datasets/WisconsinCancer.csv"
> 
> # Download the data: wisc.df
> wisc.df <- read.csv(url)
> 
> # Convert the features of the data: wisc.data
> wisc.data <- as.matrix(wisc.df[3:32])
> 
> # Set the row names of wisc.data
> row.names(wisc.data) <- wisc.df$id
> 
> # Create diagnosis vector
> diagnosis <- as.numeric(wisc.df$diagnosis == "M")
> 

# (2)
# Exploratory data analysis

# The first step of any data analysis, unsupervised or supervised, is to familiarize yourself with the data.

# The variables you created before, wisc.data and diagnosis, are still available in your workspace. 
# Explore the data to answer the following questions:

# How many observations are in this dataset?
# How many variables/features in the data are suffixed with _mean?
# How many of the observations have a malignant diagnosis?

### R

> nrow(wisc.data)
[1] 569
> nrow(wisc.data[which(diagnosis==1),])
[1] 212
> colnames(wisc.data)
 [1] "radius_mean"             "texture_mean"           
 [3] "perimeter_mean"          "area_mean"              
 [5] "smoothness_mean"         "compactness_mean"       
 [7] "concavity_mean"          "concave.points_mean"    
 [9] "symmetry_mean"           "fractal_dimension_mean" 
[11] "radius_se"               "texture_se"             
[13] "perimeter_se"            "area_se"                
[15] "smoothness_se"           "compactness_se"         
[17] "concavity_se"            "concave.points_se"      
[19] "symmetry_se"             "fractal_dimension_se"   
[21] "radius_worst"            "texture_worst"          
[23] "perimeter_worst"         "area_worst"             
[25] "smoothness_worst"        "compactness_worst"      
[27] "concavity_worst"         "concave.points_worst"   
[29] "symmetry_worst"          "fractal_dimension_worst"
> 
