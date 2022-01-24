# question 9
library(tidyverse)
library(palmerpenguins)

#question 10a
penguins
# 344 rows and 8 columns

#question 10b
ggplot(data=penguins)
# Theres a grey box
View(penguins) 

#question 10c
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g), color = "blue")

#question 11a
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color = species))

#question 11b
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color = species, shape= island))

#question 13a
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color = species, shape= island))
                      
#question 13b
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color= species, shape= island)) + 
  facet_wrap(~ species, nrow = 1)
 
#question 13c 
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color=species, shape= island)) + 
  facet_grid(species ~island)

