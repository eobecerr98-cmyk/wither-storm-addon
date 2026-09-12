# Wither Storm Spawn Function
tag @s add wither_storm_boss
tag @s add phase_1
effect @s resistance 999999 4 true
effect @s speed 999999 2 true
scoreboard objectives add ws_health dummy
scoreboard objectives add ws_phase dummy
scoreboard objectives add ws_attack_timer dummy
scoreboard players set @s ws_health 300
scoreboard players set @s ws_phase 1