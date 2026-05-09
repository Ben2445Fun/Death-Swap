# Reset tags for the next swap
    tag @a remove DeathSwap.PlayerSwapped

# Store first player's position and swap them with another
    tag @r[team=DeathSwap] add DeathSwap.PlayerToSwap
    tag @r[team=DeathSwap, tag=!DeathSwap.PlayerToSwap] add DeathSwap.PositionToSwap
    execute as @r[tag=DeathSwap.PlayerToSwap] run function deathswap:swap/storepos
    execute as @r[tag=DeathSwap.PositionToSwap] run function deathswap:swap/setnext

# Teleport players to other positions
    execute store result score DeathSwap.Unswapped DeathSwap if entity @a[team=DeathSwap, tag=!DeathSwap.PlayerToSwap]
    execute if score DeathSwap.Unswapped DeathSwap matches 2.. run function deathswap:swap/swapplayers
    execute as @r[tag=DeathSwap.PlayerToSwap] run function deathswap:swap/lastplayerswap with storage deathswap:data

# Randomize time again
    function deathswap:runtime/randomizetime with storage deathswap:data
