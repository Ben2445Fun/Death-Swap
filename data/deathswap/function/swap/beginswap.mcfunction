# Reset tags for the next swap
    tag @a remove DeathSwap.PositionSwapped
    tag @a remove DeathSwap.PlayerSwapped

# Create storage for positional data
    scoreboard objectives add DeathSwap.X dummy
    scoreboard objectives add DeathSwap.Y dummy
    scoreboard objectives add DeathSwap.Z dummy

# Store player positions
    execute as @a[team=DeathSwap] run function deathswap:swap/storepos

# Teleport players to other positions
    function deathswap:swap/swapplayers

# Removed stored positional data
    scoreboard objectives remove DeathSwap.X
    scoreboard objectives remove DeathSwap.Y
    scoreboard objectives remove DeathSwap.Z

# Randomize time again
    function deathswap:runtime/randomizetime with storage deathswap:data
