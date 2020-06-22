# Variance model 

This model is created to visulize how variance and mean affects required sample size. This can be used to veryfy that enought samples where taken for e.g. cell counts in a sedgewick rafter counting chamber. It can plot mean, sd and se. Just specify mean, variance, number of runs/replicates and maximum number of samples. The script will scale axis and add the variables as text over the mean, the location is determined by the sd and average, in theory they should allways be out of the way. You can add a vertical line that shows number of actual observations by defining Number_of_samples_acctually_taken to desierd value (set it to NaN to not show).

The output is 6 figures:



![tex for the figure](Example_a.png?raw=true "Figure: 1")

Figure 1: Average


![tex for the figure](Example_sd.png?raw=true "Figure: 2")

Figure 2: Standard deviation


![tex for the figure](Example_se.png?raw=true "Figure: 3")

Figure 3: Standard error


![tex for the figure](Example_a_sd.png?raw=true "Figure: 4")

Figure 4: Average and standard deviation


![tex for the figure](Example_a_se.png?raw=true "Figure: 5")

Figure 5: Average and standard error


![tex for the figure](Example_a_sd_se.png?raw=true "Figure: 6")

Figure 6: Average, standard deviation and standard error









