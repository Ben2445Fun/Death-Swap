team leave @s
tag @a remove DeathSwap.NoPos
tag @a remove DeathSwap.Swap
tag @a remove DeathSwap.SwapPos
tag @a remove DeathSwap.Unswapped
schedule clear deathswap:callactionbar
schedule clear deathswap:periodicallyremovepearls
schedule clear deathswap:swap
title @a title {selector: "@s", color: green}
title @a subtitle {text: "has won Death Swap!"}
tellraw @a [{selector: "@s", color: green, bold: true}, {text: " has won Death Swap!", color: white, bold: false}]
scoreboard objectives remove DeathSwap.Deaths
gamemode survival @a
spreadplayers 0.0 0.0 0 1 false @a
bossbar remove deathswap
