# Data Visualization and Presentation

library(dplyr)
library(ggplot2)

df <- read.csv("D:\\YouTube\\1. Raw Videos\\R Series\\Files\\parks_and_rec_budget.csv")

# BAR Charts


df %>%
  group_by(Department) %>%
  summarise(Total_Budget = sum(Budget_in_Thousands)) %>%
  ggplot(aes(x = reorder(Department, -Total_Budget), y = Total_Budget, fill = Department)) +
  geom_bar(stat = "identity") +
  ggtitle("Total Budget by Department") +
  theme(axis.text.x = element_text(angle = 45,, hjust = 1))
  


# Line Charts


df %>%
  group_by(Year) %>%
  summarise(Annual_Budget = sum(Budget_in_Thousands)) %>%
  ggplot(aes(x = Year, y = Annual_Budget)) +
  geom_line() +
  geom_point() +
  ggtitle("Annual Budget for all Departments")
  theme_minimal()
  
#Break out by Departments
  
  df %>%
    ggplot(aes(x = Year, y = Budget_in_Thousands, color = Department)) +
    geom_line() +
    ggtitle("Annual Budget per Department") +
  theme_minimal()
  







































