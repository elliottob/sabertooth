## Add BA, OBP and SLG to Batting data
library(dplyr)

Batting$BA <- with(Batting, H / AB)
Batting$OBP <- with(Batting, (H + BB + IBB + HBP) / (AB + BB + IBB + HBP + SF))
Batting$SLG <- with(Batting, (H - X2B - X3B - HR + 2 * X2B + 3 * X3B + 4 * HR) / AB)

## create unique player vector of who played in 2016
## add birth year; see marchi p188
## create lm function for BA, OBP and SLG
## use sapply with lm function on the player list
