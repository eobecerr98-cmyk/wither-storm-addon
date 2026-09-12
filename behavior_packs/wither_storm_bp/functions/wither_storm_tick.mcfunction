# Wither Storm Tick - Main Loop
# Phase 1: 300-200 HP
# Phase 2: 200-100 HP
# Phase 3: 100-0 HP

# Update health
scoreboard players operation @s ws_health = @s health

# Check phase transitions
execute if score @s ws_health matches 200..300 run tag @s add phase_1
execute if score @s ws_health matches 100..199 run tag @s add phase_2
execute if score @s ws_health matches 0..99 run tag @s add phase_3

# Phase 1 behavior - Basic attacks
execute if entity @s[tag=phase_1] run function wither_storm_bp:phases/phase_1

# Phase 2 behavior - More aggressive
execute if entity @s[tag=phase_2] run function wither_storm_bp:phases/phase_2

# Phase 3 behavior - Very aggressive, spawn tentacles
execute if entity @s[tag=phase_3] run function wither_storm_bp:phases/phase_3

# Death sequence
execute if score @s ws_health matches 0 run function wither_storm_bp:death