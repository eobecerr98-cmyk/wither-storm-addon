# Phase 1: Basic Wither Storm Behavior (300-200 HP)
# - Slow movement
# - Occasional projectile attacks
# - Tentacle swipes

# Projectile attack every 5 seconds
scoreboard players add @s ws_attack_timer 1
execute if score @s ws_attack_timer matches 100 run function wither_storm_bp:attacks/projectile_attack
execute if score @s ws_attack_timer matches 100 run scoreboard players set @s ws_attack_timer 0

# Move toward nearest player
target nearest player
tp @s ^ ^ ^0.1

# Damage nearby players in tentacle range
execute as @a[distance=..2] run damage @s 5 wither