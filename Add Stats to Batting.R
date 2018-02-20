## Add BA, OBP and SLG to Batting data

Batting$BA <- with(Batting, H / AB)
Batting$OBP <- with(Batting, (H + BB + IBB + HBP) / (AB + BB + IBB + HBP + SF))
Batting$SLG <- with(Batting, (H - X2B - X3B - HR + 2 * X2B + 3 * X3B + 4 * HR) / AB)
Batting.forBAProjection <- subset(Batting, yearID >= 2012)
Batting.forBAProjection
