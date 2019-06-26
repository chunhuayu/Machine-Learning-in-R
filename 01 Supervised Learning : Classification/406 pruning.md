# Why do trees benefit from pruning?
* Classification trees can grow indefinitely, until they are told to stop or run out of data to divide-and-conquer.
* Just like trees in nature, classification trees that grow overly large can require pruning to reduce the excess growth. However, this generally results in a tree that classifies fewer training examples correctly.
<br>
* Why, then, are pre-pruning and post-pruning almost always used?

    * Simpler trees are easier to interpret
    * Simpler trees using early stopping are faster to train
    * Simpler trees may perform better on the testing data
