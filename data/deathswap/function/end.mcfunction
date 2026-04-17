team leave @s
tag @a remove DeathSwap.NoPos
tag @a remove DeathSwap.Swap
tag @a remove DeathSwap.SwapPos
tag @a remove DeathSwap.Unswapped
schedule clear deathswap:callactionbar
schedule clear deathswap:periodicallyremovepearls
title @a title {selector: "@s", color: green}
title @a subtitle {text: "has won Death Swap!"}
scoreboard objectives remove DeathSwap.Deaths
