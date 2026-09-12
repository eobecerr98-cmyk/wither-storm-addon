# Phase 2: Aggressive Wither Storm (200-100 HP)
# - Faster movement
# - More frequent attacks
# - Spawns projectiles from multiple positions

scoreboard players add @s ws_attack_timer 1

# Projectile attacks every 3 seconds
execute if score @s ws_attack_timer matches 60 run function wither_storm_bp:attacks/projectile_attack
execute if score @s ws_attack_timer matches 60 run function wither_storm_bp:attacks/projectile_attack
execute if score @s ws_attack_timer matches 60 run scoreboard players set @s ws_attack_timer 0

# Faster movement
target nearest player
tp @s ^ ^ ^0.15

# Area damage
execute as @a[distance=..3] run damage @s 8 wither

# Apply glowing effect to nearby players
effect @a[distance=..15] glowing 2 0 true