tag @s remove DeathSwap.SwapPos
tag @s add DeathSwap.NoPos
execute store result storage deathswap:data x float 0.1 run scoreboard players get @s DeathSwap.X
execute store result storage deathswap:data y float 0.1 run scoreboard players get @s DeathSwap.Y
execute store result storage deathswap:data z float 0.1 run scoreboard players get @s DeathSwap.Z
