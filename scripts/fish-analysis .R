#reading in some data

fish.data <- read.csv("data/Gaeta_etal_CLC_data.csv")


#building history

library(dplyr)

#creating an additional column that classifies fish bigger than 300mm as big (others as small)
fish_data_cat <- fish.data %>%
  mutate(length_cat = ifelse(length > 300, "big", "small"))

