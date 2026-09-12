# Tentacle Attack - Melee attack with tentacles
# Damages and pushes nearby players

execute as @a[distance=..3] run damage @s 8 generic
execute as @a[distance=..3] run effect @s knockback 1 2 true

# Animation and effects
particle wither_boss_invulnerable ~ ~ ~
sound hostile.wither.shoot @a[distance=..30] ~ ~ ~ 1.0 1.2