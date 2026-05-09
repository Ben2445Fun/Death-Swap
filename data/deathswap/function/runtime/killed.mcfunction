# Completely remove player from game
    team leave @s
    scoreboard players reset @s DeathSwap.Deaths

# Put player in spectator
    gamemode spectator @s

# Announce elimination
    tellraw @a [{selector: "@s", color: red, bold: true}, {text: " has been eliminated!", color: white, bold: false}]

# Check if round is over
    execute store result score DeathSwap.Players DeathSwap if entity @a[team=DeathSwap]
    execute if score DeathSwap.Players DeathSwap matches ..1 as @p[team=DeathSwap] run function deathswap:end
