# Parsing and Converting Dates

library(dplyr)
library(lubridate)

df <- read.csv("D:\\YouTube\\1. Raw Videos\\R Series\\Files\\Messy_Dataset.csv")

df_raw <- df


df$Transaction_Date <- parse_date_time(df$Transaction_Date, 
                                       orders = c("Y-m-d", "m/d/Y", "Y/m/d", "d-m-Y"))

df$Transaction_Date_Year <- year(df$Transaction_Date)

df$Transaction_Date_month <- month(df$Transaction_Date)

df$Transaction_Date_day <- day(df$Transaction_Date)


















