# Remove from swap list
    tag @s add DeathSwap.PositionSwapped
    tag @s remove DeathSwap.PositionToSwap

# Store position to storage for later use
    execute store result storage deathswap:data x float 0.1 run scoreboard players get @s DeathSwap.X
    execute store result storage deathswap:data y float 0.1 run scoreboard players get @s DeathSwap.Y
    execute store result storage deathswap:data z float 0.1 run scoreboard players get @s DeathSwap.Z

# DEBUG
# tellraw @a [{text: "Teleporting "}, {selector: "@p[tag=DeathSwap.Swap]"}, {text: " to "}, {selector: "@s"}]
