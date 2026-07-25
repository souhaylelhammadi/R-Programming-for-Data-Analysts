# Cleaning Messy Data


library(dplyr)
library(tidyr)

# Install if you haven't already
# install.packages("tidyverse")

df <- read.csv("D:\\YouTube\\1. Raw Videos\\R Series\\Files\\Messy_Dataset.csv",
               na.strings = c("", "NA"))



colSums(is.na(df))

# Remove Rows when no email is present
df_cleaned <- df %>% drop_na("Email")

#Populate null Numeric Values
df_cleaned$Transaction_Amount[is.na(df_cleaned$Transaction_Amount)] <- 0


df_cleaned$Transaction_Amount[is.na(df_cleaned$Transaction_Amount)] <- mean(df_cleaned$Transaction_Amount, na.rm = TRUE)

# Populating Character Columns
df_cleaned$Customer_Name[is.na(df_cleaned$Customer_Name)] <- "Unknown"












