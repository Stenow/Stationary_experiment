library(tidyverse)
library(TTR)


Lugol_stats <- data.frame("Experiment"= c("EXP","STAT","LSTAT_NH4", "LSTAT_NO3"), "Mean_c_length" = c(5.3807, 3.8943, NaN, NaN), "Variance_c_length" = c(2.0677, 1.6253,NaN,NaN))


Variance_sd <-2.0833 


Raw_dataframe_exp <- data.frame(matrix(0, ncol = 100, nrow = 100))  #Create a dataframe for the simulated data


for (i in 1:length(Raw_dataframe_exp)) {
  
  
  Raw_dataframe_exp[i,]<- rnorm(100, mean=5.3807, sd=2.0677)  #Create the simulated data 100 tines for the length of the empty dataframe
  
  }



Sliding_mean_exp <-data.frame(matrix(0, ncol = 2, nrow = 100)) #Create a dataframe for the sliding average
Sliding_sd_exp <-data.frame(matrix(0, ncol = 100, nrow = 100)) #Creating a dataframe for the slding sd

for (i in 1:length(Raw_dataframe_exp)) { 
  
  Sliding_mean_exp[,i]  <- runMean(Raw_dataframe_exp[,i], n=1, cumulative = TRUE) #Create the sliding mean, cumulative adds the new number each time, n determines when the firs value should be 
  Sliding_sd_exp[,i] <- runSD(Raw_dataframe_exp[,i], n=1, cumulative = TRUE) #same but for sd
  
  
  
}

data_long <- gather(Sliding_mean_exp)  #this rearange the data to a format that can acctually be plotted
data_long$n_sample <- rep(1:100, times=100) # This adds the number of samples that is used for the average, THIS WILL NEED TO CHANGE IF I WANT TO CHANGE NUMBER OF RUNS AND MAX NUMBER OF SAMPLES!


ggplot(data_long, aes(x=n_sample, y=value, color=key))+
  geom_point(show.legend = FALSE, alpha=0.5)+
  geom_hline(aes(yintercept=5.3807),show.legend = FALSE)+
  geom_hline(aes(yintercept=5.3807-2.0677))+
  geom_hline(aes(yintercept=5.3807+2.0677))+
  scale_y_continuous(limits = c(0,9), n.breaks = 6)+
  theme_classic()
