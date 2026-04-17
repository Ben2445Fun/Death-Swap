tag @s remove DeathSwap.SwapPos
tag @s add DeathSwap.NoPos
execute store result storage deathswap:data x double -16 run scoreboard players get @s DeathSwap.X
execute store result storage deathswap:data y double -16 run scoreboard players get @s DeathSwap.Y
execute store result storage deathswap:data z double -16 run scoreboard players get @s DeathSwap.Z
