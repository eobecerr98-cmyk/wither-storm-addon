# Phase 3: Final Form - Wither Storm Enraged (100-0 HP)
# - Very fast movement
# - Constant attacks
# - Spawns dark blocks
# - Preparation for final attack

scoreboard players add @s ws_attack_timer 1

# Attack every 2 seconds
execute if score @s ws_attack_timer matches 40 run function wither_storm_bp:attacks/projectile_attack
execute if score @s ws_attack_timer matches 40 run function wither_storm_bp:attacks/projectile_attack
execute if score @s ws_attack_timer matches 40 run function wither_storm_bp:attacks/projectile_attack
execute if score @s ws_attack_timer matches 40 run scoreboard players set @s ws_attack_timer 0

# Very fast movement
target nearest player
tp @s ^ ^ ^0.25

# Heavy area damage
execute as @a[distance=..4] run damage @s 12 wither

# Spawn corruption blocks
function wither_storm_bp:attacks/spawn_corruption

# Blindness effect
effect @a[distance=..20] blindness 3 0 true