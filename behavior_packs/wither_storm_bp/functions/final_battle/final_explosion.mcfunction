# Final Explosion Sequence
# Massive explosion and complete defeat of Wither Storm

# Create massive explosion
particle explosion_emitter ~ ~ ~
particle explosion_emitter ~ ~1 ~
particle explosion_emitter ~ ~2 ~
particle explosion_emitter ~1 ~ ~
particle explosion_emitter ~-1 ~ ~
particle explosion_emitter ~ ~ ~1
particle explosion_emitter ~ ~ ~-1
particle explosion_emitter ~1 ~1 ~1
particle explosion_emitter ~-1 ~-1 ~-1

# Explosion sound
sound random.explode @a[distance=..80] ~ ~ ~ 2.0 1.0
sound hostile.wither.death @a[distance=..80] ~ ~ ~ 2.0 0.8

# Damage nearby players
execute as @a[distance=..8] run damage @s 20 explosion

# Remove corruption blocks in radius
fill ~ ~-5 ~ ~10 ~5 ~10 air destroy

# Victory effects
effect @a[distance=..50] regeneration 5 2 true
effect @a[distance=..50] speed 5 1 true

# Drop massive loot
loot spawn ~ ~1 ~ loot_tables/entities/wither_storm.json
loot spawn ~ ~1 ~ loot_tables/entities/wither_storm.json
loot spawn ~ ~1 ~ loot_tables/entities/wither_storm.json

# Victory message
tellraw @a {"text":"¡Victoria! El Wither Storm ha sido completamente destruido","color":"gold","bold":true}

# Kill the boss
kill @e[type=wither_storm:wither_storm]