schedule function deathswap:callactionbar 1s replace
$title @s actionbar [{text: "PVP: "}, {text: "$(pvptext)", color: $(pvpcolor)}, {text: " | Ender Pearls: ", color: white}, {text: "$(pearlstext)", color: $(pearlscolor)}, {text: " | Next Swap: ", color: white}, {score: {name: "DeathSwap.Time", objective: "DeathSwap"}, color: gold}]
