# Variance model 

This model is created to visulize how variance and mean affects required sample size. This can be used to veryfy that enought samples where taken for e.g. cell counts in a sedgewick rafter counting chamber. It can plot mean, sd and se. Just specify mean, variance, number of runs/replicates and maximum number of samples. The script will scale axis and add the variables as text over the mean, the location is determined by the sd and average, in theory they should allways be out of the way. You can add a vertical line that shows number of actual observations by defining Number_of_samples_acctually_taken to desierd value (set it to NaN to not show).

![tex for the figure](example_figure.png?raw=true "Figure: 1")
