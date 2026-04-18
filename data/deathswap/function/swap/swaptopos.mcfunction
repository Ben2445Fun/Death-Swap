# Telport player to position
    teleport @s @r[tag=DeathSwap.PositionToSwap,limit=1]

# Mark player as swapped
    tag @s add DeathSwap.PlayerSwapped
    tag @s remove DeathSwap.PlayerToSwap
