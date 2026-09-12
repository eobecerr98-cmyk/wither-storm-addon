# Wither Storm Death Sequence
# Play death animation, drop loot, create explosion effect

# Death animation
animation @s death

# Explosion effect
particle explosion_emitter ~ ~ ~
particle explosion_emitter ~ ~1 ~
particle explosion_emitter ~ ~2 ~

# Sound effects
sound hostile.wither.death @a[distance=..50] ~ ~ ~ 1.0 1.0

# Drop loot
loot spawn ~ ~1 ~ loot_tables/entities/wither_storm.json

# Display victory message
tellraw @a {"text":"¡El Wither Storm ha sido derrotado!","color":"gold"}

# Kill entity
kill @s