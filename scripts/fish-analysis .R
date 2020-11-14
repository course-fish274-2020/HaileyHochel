#reading in some data

fish.data <- read.csv("data/Gaeta_etal_CLC_data.csv")


#building history

library(dplyr)
fish_data_cat <- fish.data %>%
  mutate(length_cat = ifelse(length > 300, "big", "small"))

