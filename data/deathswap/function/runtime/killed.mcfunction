# Completely remove player from game
    team leave @s
    tag @s remove DeathSwap.NoPos
    tag @s remove DeathSwap.Swap
    tag @s remove DeathSwap.SwapPos
    tag @s remove DeathSwap.Unswapped
    scoreboard players reset @s DeathSwap.Deaths

# Put player in spectator
    gamemode spectator @s

# Announce elimination
    tellraw @a [{selector: "@s", color: red, bold: true}, {text: " has been eliminated!", color: white, bold: false}]

# Check if round is over
    function deathswap:runtime/playersremaining
    execute if score DeathSwap.Players DeathSwap matches ..1 as @p[team=DeathSwap] run function deathswap:end
