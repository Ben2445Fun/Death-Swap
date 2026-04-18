# Remove everyone from the game (failsafe)
    team leave @a
    tag @a remove DeathSwap.NoPos
    tag @a remove DeathSwap.Swap
    tag @a remove DeathSwap.SwapPos
    tag @a remove DeathSwap.Unswapped

# Stop running functions
    schedule clear deathswap:runtime/callactionbar
    schedule clear deathswap:runtime/periodicallyremovepearls
    schedule clear deathswap:swap/beginswap

# Announce Victor
    title @a title {selector: "@s", color: green}
    title @a subtitle {text: "has won Death Swap!"}
    tellraw @a [{selector: "@s", color: green, bold: true}, {text: " has won Death Swap!", color: white, bold: false}]

# Cleanup
    scoreboard objectives remove DeathSwap.Deaths
    scoreboard objectives remove DeathSwap.PearlAge
    bossbar remove deathswap

# Put all players at spawn
    gamemode survival @a
    spreadplayers 0.0 0.0 1 16 false @a
