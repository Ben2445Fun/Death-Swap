tag @r[team=DeathSwap,tag=DeathSwap.Unswapped] add DeathSwap.Swap
tag @r[team=DeathSwap,tag=!DeathSwap.Swap,tag=!DeathSwap.NoPos] add DeathSwap.SwapPos
execute as @p[tag=DeathSwap.SwapPos] run function deathswap:nopos
execute as @p[tag=DeathSwap.Swap] run function deathswap:teleportrandom with storage deathswap:data
execute store result score DathSwap.Unswapped DeathSwap if entity @a[tag=DeathSwap.Unswapped]
execute if score DathSwap.Unswapped DeathSwap matches 1.. run function deathswap:getnotteleported
