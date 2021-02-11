
# Load packages -----------------------------------------------------------

library(tidyverse)

# Firefly figure ----------------------------------------------------------

firefly_data <- read_csv('https://whitlockschluter.zoology.ubc.ca/wp-content/data/chapter02/chap02q19FireflySpermatophoreMass.csv')
firefly_data
ggplot(data=firefly_data)

# add a histogram
ggplot(data = firefly_data) +
  geom_histogram(mapping = aes(x = spermatophoreMass), bins =5)+
  labs(x = "spermatophoreMass", y = "Frequency (number of rows)")

9# Bird figure -------------------------------------------------------------


