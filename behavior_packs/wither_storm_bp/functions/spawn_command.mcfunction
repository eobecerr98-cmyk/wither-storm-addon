# Wither Storm Spawner Function
# Use: /function wither_storm_spawn_command

# Summon the Wither Storm
summon wither_storm:wither_storm

# Apply initial effects
effect @e[type=wither_storm:wither_storm,limit=1,sort=nearest] resistance 999999 4 true
effect @e[type=wither_storm:wither_storm,limit=1,sort=nearest] speed 999999 2 true

# Initialize scoreboards
scoreboard objectives add ws_health dummy "Wither Storm Health"
scoreboard objectives add ws_phase dummy "Current Phase"
scoreboard objectives add ws_attack_timer dummy "Attack Timer"

# Set initial values
scoreboard players set @e[type=wither_storm:wither_storm,limit=1,sort=nearest] ws_health 300
scoreboard players set @e[type=wither_storm:wither_storm,limit=1,sort=nearest] ws_phase 1

# Warning message
tellraw @a {"text":"¡El Wither Storm ha aparecido!","color":"dark_red","bold":true}
play sound hostile.wither.spawn @a ~ ~ ~ 2 1