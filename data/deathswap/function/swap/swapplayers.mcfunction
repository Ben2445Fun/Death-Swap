# Select random position to swap
    tag @r[team=DeathSwap, tag=!DeathSwap.PlayerSwapped, tag=!DeathSwap.PlayerToSwap] add DeathSwap.PositionToSwap

# Swap player and remove them from needing swapping
    execute as @r[tag=DeathSwap.PlayerToSwap] run function deathswap:swap/swaptopos
    execute as @r[tag=DeathSwap.PositionToSwap] run function deathswap:swap/setnext

# Test if any other players need swapping
    execute store result score DeathSwap.Unswapped DeathSwap if entity @a[team=DeathSwap, tag=!DeathSwap.PlayerSwapped]
    execute if score DeathSwap.Unswapped DeathSwap matches 2.. run function deathswap:swap/swapplayers
