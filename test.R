# test.R

# tidyverse
library('tidyverse')

# import data
load("Baseball.RData")

Batting %>%
  filter(SB > 1) %>%
  select(playerID, yearID, SB) %>%
  group_by(playerID) %>%
  summarise(
    SB.mean = mean(SB, na.rm=T),
    SB.total = sum(SB, na.rm=T)
  ) %>%
  arrange(desc(SB.total))


Batting %>% filter(SB>1) %>% summarise(mean = mean(SB, na.rm=T))

Batting %>% 
  filter(SB > 1) %>%
  group_by(playerID) %>%
  mutate(
    SB.deviation = SB - mean(SB, na.rm=T)
) %>% select(playerID, SB.deviation) 