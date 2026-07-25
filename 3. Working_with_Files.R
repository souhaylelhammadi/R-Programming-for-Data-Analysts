

df <- read.csv("D:\\YouTube\\1. Raw Videos\\R Series\\Files\\parks_and_rec_dataset.csv")



head(df)

str(df)

summary(df)

df2 <- read.csv("D:\\YouTube\\1. Raw Videos\\R Series\\Files\\parks_and_rec_dataset.csv", header = TRUE, sep = ",")



write.csv(df2, "D:\\YouTube\\1. Raw Videos\\R Series\\Files\\parks_and_rec_dataset_output.csv", row.names = FALSE)



df3 <- read.csv("D:\\YouTube\\1. Raw Videos\\R Series\\Files\\parks_and_rec_dataset_output.csv", header = TRUE, sep = ",")














