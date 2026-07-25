# SELECTING AND ORDERING DATA
library(dplyr)

df <- read.csv("D:\\YouTube\\1. Raw Videos\\R Series\\Files\\parks_and_rec_dataset.csv")



df %>% 
  group_by(Department) %>% 
  summarize(Count = n())




agg_df <- df %>% 
  group_by(Department) %>% 
  summarize(AVG_Salary = mean(Annual_Salary),
            Count = n(),
            min(Annual_Salary),
            max(Annual_Salary),
            median(Annual_Salary))

























