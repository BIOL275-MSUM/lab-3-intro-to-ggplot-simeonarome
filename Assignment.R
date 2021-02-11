
# Load packages -----------------------------------------------------------

library(tidyverse)

# Firefly figure ----------------------------------------------------------

firefly_data <- read_csv('https://whitlockschluter.zoology.ubc.ca/wp-content/data/chapter02/chap02q19FireflySpermatophoreMass.csv')
firefly_data
ggplot(data=firefly_data)

# add a histogram
ggplot(data = firefly_data) +
  geom_histogram(mapping = aes(x = spermatophoreMass), bins =5)+
  labs(x = "Spermatophore Mass (mg)", y = "Frequency (number of fireflies)")

# Bird figure -------------------------------------------------------------
library(auk)                          
birds <- ebird_taxonomy %>%
  as_tibble() %>%             
  filter(category == "species")     
birds
ggplot(data = birds)
ggplot(data = birds) +
  geom_bar(mapping = aes(x = order))
ggplot(data = birds) +
  geom_bar(mapping = aes(x = fct_infreq(order)), fill = "#C5351B") +
  labs(x = "order", y = "count") 


  ggplot(data = birds) +
  geom_bar(mapping = aes(x = fct_infreq(order)), fill = "#C5351B", 
           width = .8) +
  labs(x = "Order", y = "Frequency (number of species)") +
  scale_y_continuous(limits = c(0, NA), expand = expansion(mult = 0)) +
  theme_classic(base_size = 12) +
  theme(
    axis.title = element_text(face = "bold"),
    axis.text = element_text(color = "black", size = rel(1)),
    axis.text.x = element_text(angle = 45, hjust = 1),
    axis.ticks.x = element_blank()
  )
    