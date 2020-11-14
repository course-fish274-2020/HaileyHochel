#reading in some data

fish.data <- read.csv("data/Gaeta_etal_CLC_data_1.csv")


#building history

library(dplyr)

#creating an additional column that classifies fish bigger than 300mm as big (others as small)
fish_data_cat <- fish.data %>%
  mutate(length_cat = ifelse(length > 300, "big", "small"))

fish_data_cat_clean <- filter(fish_data_cat, scalelength > 1)

#load ggplot 

library(ggplot2)

#pulling code from github and modify to narrow range of scale size classes

ggplot(fish_data_cat, aes(x = scalelength, fill = length_cat)) +
  geom_histogram(binwidth = 80)





       