# Projectile Attack - Shoots wither skulls
# Spawns projectiles at entity position

summon wither_skull ~ ~2 ~ {ExplosionPower:3}
summon wither_skull ~ ~2 ~ {ExplosionPower:3,Motion:[0.5,0.1,0]}
summon wither_skull ~ ~2 ~ {ExplosionPower:3,Motion:[-0.5,0.1,0]}

particle wither_boss_invulnerable ~ ~2 ~
sound hostile.wither.idle @a[distance=..30] ~ ~ ~ 1.0 0.8