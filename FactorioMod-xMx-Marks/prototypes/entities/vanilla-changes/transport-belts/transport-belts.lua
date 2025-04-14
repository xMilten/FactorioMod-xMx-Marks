data.raw["transport-belt"]["transport-belt"].max_health = 160
data.raw["transport-belt"]["fast-transport-belt"].max_health = 170
data.raw["transport-belt"]["express-transport-belt"].max_health = 180

data.raw["transport-belt"]["transport-belt"].related_underground_belt = "underground-belt"
data.raw["transport-belt"]["fast-transport-belt"].related_underground_belt = "fast-underground-belt"
data.raw["transport-belt"]["express-transport-belt"].related_underground_belt = "express-underground-belt"

data.raw["transport-belt"]["express-transport-belt"].next_upgrade = "xmx-mk5-transport-belt"

data.raw["transport-belt"]["transport-belt"].speed = 0.0625
data.raw["transport-belt"]["fast-transport-belt"].speed = 0.09375
data.raw["transport-belt"]["express-transport-belt"].speed = 0.125