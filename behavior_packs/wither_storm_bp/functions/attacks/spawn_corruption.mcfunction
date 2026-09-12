# Spawn Corruption Blocks around Wither Storm
# Creates dark blocks that corrupt the environment

setblock ~ ~-1 ~ wither_storm:corrupted_dirt
setblock ~1 ~ ~ wither_storm:corrupted_dirt
setblock ~-1 ~ ~ wither_storm:corrupted_dirt
setblock ~ ~ ~1 wither_storm:corrupted_dirt
setblock ~ ~ ~-1 wither_storm:corrupted_dirt

particle wither_boss_invulnerable ~ ~ ~
particle wither_boss_invulnerable ~1 ~ ~
particle wither_boss_invulnerable ~-1 ~ ~