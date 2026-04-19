data modify storage deathswap:data x set from entity @s Pos[0]
data modify storage deathswap:data y set from entity @s Pos[1]
data modify storage deathswap:data z set from entity @s Pos[2]
data modify storage deathswap:data dim set from entity @s Dimension
tp @s @r[tag=DeathSwap.PositionToSwap,limit=1]
tag @s remove DeathSwap.PlayerToSwap
tag @s add DeathSwap.PlayerSwapped
