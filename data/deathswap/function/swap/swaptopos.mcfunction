# Telport player to position
    $teleport @s $(x) $(y) $(z)

# Mark player as swapped
    tag @s add DeathSwap.PlayerSwapped
    tag @s remove DeathSwap.PlayerToSwap
