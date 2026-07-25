# SELECTING AND ORDERING DATA

df <- read.csv("D:\\YouTube\\1. Raw Videos\\R Series\\Files\\parks_and_rec_dataset.csv")

install.packages("dplyr")

library(dplyr)

df_characters <- select(df, Character, Role)

select(df, -Dogs_Rescued_With_3_Legs)

select(df, Character:Annual_Salary)

# Filtering

filter(df, Role == "Director")


filter(df, grepl("Director", Role))



filter(df, Annual_Salary > 50000 & Department == "Parks")

# ORDERING

arrange(df, Annual_Salary)


arrange(df, desc(Annual_Salary))


# Pipe Operator
df %>% 
  select(Character:Annual_Salary) %>% 
  filter(Annual_Salary > 50000 & Department == "Parks") %>%
  arrange(desc(Annual_Salary))





























