# Final Boss Battle - Wither Storm TNT Bomb Sequence
# This triggers when the Wither Storm is defeated
# Spawns the TNT bomb that destroys the boss

# Disable the boss's AI during final sequence
data merge entity @s {NoAI:1b}

# Create warning effect
effect @a[distance=..50] blindness 3 0 true
particle explosion_emitter ~ ~2 ~
sound hostile.wither.death @a[distance=..50] ~ ~ ~ 2.0 0.5

# Spawn TNT bomb above the Wither Storm
summon tnt ~ ~3 ~ {Fuse:80,Motion:[0,0.2,0]}

# Particle effects
particle wither_boss_invulnerable ~ ~2 ~
particle explosion_emitter ~ ~1 ~
particle explosion_emitter ~1 ~1 ~
particle explosion_emitter ~-1 ~1 ~
particle explosion_emitter ~ ~1 ~1
particle explosion_emitter ~ ~1 ~-1

# Countdown message
tellraw @a {"text":"¡El Wither Storm será destruido!","color":"red"}

# After 4 seconds, trigger massive explosion
schedule function wither_storm_bp:final_explosion 80t