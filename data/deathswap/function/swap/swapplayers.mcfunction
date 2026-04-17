# Select random player and position to swap
    tag @r[team=DeathSwap, tag=!DeathSwap.PlayerSwapped] add DeathSwap.PlayerToSwap
    tag @r[team=DeathSwap, tag=!DeathSwap.PositionSwapped] add DeathSwap.PositionToSwap

# Remove position from list
    execute as @p[tag=DeathSwap.PositionToSwap] run function deathswap:swap/setpos

# Swap player and remove them from needing swapping
    execute as @p[tag=DeathSwap.PlayerToSwap] run function deathswap:swap/swaptopos with storage deathswap:data

# Test if any other players need swapping
    execute store result score DathSwap.Unswapped DeathSwap if entity @a[tag=DeathSwap.Unswapped]
    execute if score DathSwap.Unswapped DeathSwap matches 1.. run function deathswap:swap/swapplayers
