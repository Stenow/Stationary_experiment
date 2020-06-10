library(tidyverse)
library(TTR)


Lugol_stats <- data.frame("Experiment"= c("EXP","STAT","LSTAT_NH4", "LSTAT_NO3"), "Mean_c_length" = c(5.3807, 3.8943, NaN, NaN), "Variance_c_length" = c(2.0677, 1.6253,NaN,NaN))


Variance_EXP <-2.0833 


Raw_dataframe_exp <- data.frame(matrix(0, ncol = 100, nrow = 100))


for (i in 1:length(Raw_dataframe_exp)) {
  
  
  Raw_dataframe_exp[i,]<- rnorm(100, mean=5.3807, sd=2.0677)
  
  }



Sliding_mean_exp <-data.frame(matrix(0, ncol = 2, nrow = 100))
Sliding_sd_exp <-data.frame(matrix(0, ncol = 100, nrow = 100))

for (i in 1:length(Raw_dataframe_exp)) { 
  
  Sliding_mean_exp[,i]  <- runMean(Raw_dataframe_exp[,i], n=1, cumulative = TRUE)
  Sliding_sd_exp[i,] <- runSD(Raw_dataframe_exp[,i], n=1, cumulative = TRUE)
  
  
  
}

data_long <- gather(Sliding_mean_exp)
data_long$n_sample <- rep(1:100, times=100)


ggplot(data_long, aes(x=n_sample, y=value, color=key))+
  geom_point(show.legend = FALSE, alpha=0.5)+
  geom_hline(aes(yintercept=5.3807),show.legend = FALSE)+
  #geom_hline(aes(yintercept=5.3807-2.0677))+
  #geom_hline(aes(yintercept=5.3807+2.0677))+
  scale_y_continuous(limits = c(0,9), n.breaks = 6)+
  theme_classic()
