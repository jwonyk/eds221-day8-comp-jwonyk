library(tidyverse)
library(palmerpenguins)

names(penguins)

penguins %>% 
  group_by(species) %>% 
  summarise(mean_bill_length = mean(bill_length_mm, na.rm = TRUE))

mut <- penguins %>% 
  group_by(species) %>% 
  mutate(mean_bill_length = mean(bill_length_mm, na.rm = TRUE)) %>% 
  ungroup() %>% 
  mutate(mean_overall_bill_length = mean(bill_length_mm, na.rm = TRUE))
