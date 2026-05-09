# Remove everyone from the game (failsafe)
    team remove DeathSwap

# Stop running functions
    schedule function deathswap:clearactionbar 1t
    schedule clear deathswap:runtime/periodicallyremovepearls
    schedule clear deathswap:runtime/removeallpearls
    schedule clear deathswap:swap/beginswap

# Announce Victor
    title @a title {selector: "@s", color: green}
    title @a subtitle {text: "has won Death Swap!"}
    tellraw @a [{selector: "@s", color: green, bold: true}, {text: " has won Death Swap!", color: white, bold: false}]
    scoreboard players add @s DeathSwap.Wins 1

# Cleanup
    scoreboard objectives remove DeathSwap.Deaths
    scoreboard objectives remove DeathSwap.PearlAge
    bossbar remove deathswap
    function deathswap:lobby
