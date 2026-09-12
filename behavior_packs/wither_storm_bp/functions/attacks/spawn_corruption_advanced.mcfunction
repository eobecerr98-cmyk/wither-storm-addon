# Spawn corrupted area around Wither Storm
# Creates a radius of corrupted blocks

# Place corrupted dirt blocks
setblock ~ ~-1 ~ wither_storm:corrupted_dirt
setblock ~1 ~ ~ wither_storm:corrupted_dirt
setblock ~-1 ~ ~ wither_storm:corrupted_dirt
setblock ~ ~ ~1 wither_storm:corrupted_dirt
setblock ~ ~ ~-1 wither_storm:corrupted_dirt
setblock ~2 ~ ~ wither_storm:corrupted_stone
setblock ~-2 ~ ~ wither_storm:corrupted_stone
setblock ~ ~ ~2 wither_storm:corrupted_stone
setblock ~ ~ ~-2 wither_storm:corrupted_stone

# Place dark leaves and logs for environmental corruption
setblock ~1 ~1 ~1 wither_storm:dark_leaves
setblock ~-1 ~1 ~-1 wither_storm:dark_leaves
setblock ~1 ~1 ~-1 wither_storm:dark_leaves
setblock ~-1 ~1 ~1 wither_storm:dark_leaves

# Particle effects
particle wither_boss_invulnerable ~ ~ ~
particle wither_boss_invulnerable ~1 ~ ~
particle wither_boss_invulnerable ~-1 ~ ~
particle wither_boss_invulnerable ~ ~ ~1
particle wither_boss_invulnerable ~ ~ ~-1