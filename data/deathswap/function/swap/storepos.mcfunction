execute store result storage deathswap:data x double 1 run data get entity @s Pos[0]
execute store result storage deathswap:data y double 1 run data get entity @s Pos[1]
execute store result storage deathswap:data z double 1 run data get entity @s Pos[2]
execute store result storage deathswap:data dim double 1 run data get entity @s Dimension
tp @s @r[tag=DeathSwap.PositionToSwap,limit=1]
tag @s remove DeathSwap.PlayerToSwap
tag @s add DeathSwap.PlayerSwapped
